/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licenses retained. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.PartialSumOrdering
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.DisjointTranspositions
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.ZeroSumIntervalRepair

/-!
# A total reference checker for modular ordering certificates

The discoverer is untrusted. The reference collision check is finite-list Nodup.
Indices are `Fin originalOrder.length`, so out-of-packet positions cannot be
represented by a certificate. Serialized input must first construct these types.
Source revision and epoch are retained data; admission must separately bind them
to the active source and epoch. No hash is accepted as a proof.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.PartialSumOrdering

structure OrderingCertificate (p : ℕ) where
  originalOrder : List (ZMod p)
  finalOrder : List (ZMod p)
  swaps : SwapTrace originalOrder.length
  repairRadius : ℕ
  sourceRevision : ℕ
  epoch : ℕ

/-- Each constructor denotes a separate failed check, in deterministic priority order. -/
inductive CertificateRejection
  | nonprimeModulus | replayMismatch | multisetMismatch | invalidSwap
  | overlappingSupports | labelsNotDistinctNonzero | repeatedPostSum
  deriving DecidableEq, Repr

def certificateChecks {p : ℕ} (cert : OrderingCertificate p) : Prop :=
  p.Prime ∧
  replayList cert.originalOrder cert.swaps = cert.finalOrder ∧
  cert.finalOrder.Perm cert.originalOrder ∧
  TraceBounded cert.repairRadius cert.swaps ∧
  SupportsDisjoint cert.swaps ∧
  DistinctNonzeroLabels cert.originalOrder ∧
  ValidPartialSumOrder cert.finalOrder

instance {p : ℕ} (cert : OrderingCertificate p) : Decidable (certificateChecks cert) := by
  unfold certificateChecks ValidPartialSumOrder DistinctNonzeroLabels
  infer_instance

/-- Total Boolean checker, with a kernel-checked reflection bridge below. -/
def checkCertificate {p : ℕ} (cert : OrderingCertificate p) : Bool :=
  decide (certificateChecks cert)

/-- Diagnostic companion; metadata never participates in the mathematical checks. -/
def diagnoseCertificate {p : ℕ} (cert : OrderingCertificate p) : Option CertificateRejection :=
  if ¬ p.Prime then some .nonprimeModulus
  else if replayList cert.originalOrder cert.swaps ≠ cert.finalOrder then some .replayMismatch
  else if ¬ cert.finalOrder.Perm cert.originalOrder then some .multisetMismatch
  else if ¬ TraceBounded cert.repairRadius cert.swaps then some .invalidSwap
  else if ¬ SupportsDisjoint cert.swaps then some .overlappingSupports
  else if ¬ DistinctNonzeroLabels cert.originalOrder then some .labelsNotDistinctNonzero
  else if ¬ ValidPartialSumOrder cert.finalOrder then some .repeatedPostSum
  else none

@[simp] theorem checkCertificate_eq_true {p : ℕ} (cert : OrderingCertificate p) :
    checkCertificate cert = true ↔ certificateChecks cert := by
  simp [checkCertificate]

theorem diagnoseCertificate_none_iff {p : ℕ} (cert : OrderingCertificate p) :
    diagnoseCertificate cert = none ↔ checkCertificate cert = true := by
  simp only [checkCertificate_eq_true, certificateChecks, diagnoseCertificate]
  split_ifs <;> simp_all

/-- Soundness includes the original packet identity, replay, trace geometry and
actual permutation displacement. No correctness of candidate generation is used. -/
theorem checkCertificate_sound {p : ℕ} (cert : OrderingCertificate p)
    (h : checkCertificate cert = true) :
    ValidPartialSumOrder cert.finalOrder ∧
    cert.finalOrder.Perm cert.originalOrder ∧
    replayList cert.originalOrder cert.swaps = cert.finalOrder ∧
    TraceBounded cert.repairRadius cert.swaps ∧ SupportsDisjoint cert.swaps ∧
    (∀ i, Nat.dist (replayPermutation cert.swaps i).val i.val ≤ 5 * cert.repairRadius) := by
  obtain ⟨_, hr, hp, hb, hd, _, hv⟩ := (checkCertificate_eq_true cert).mp h
  exact ⟨hv, hp, hr, hb, hd, replayPermutation_displacement cert.swaps hd hb⟩

theorem checkCertificate_packet_sum {p : ℕ} (cert : OrderingCertificate p)
    (h : checkCertificate cert = true) : cert.finalOrder.sum = cert.originalOrder.sum :=
  (checkCertificate_sound cert h).2.1.sum_eq

theorem checkCertificate_prime_labels {p : ℕ} (cert : OrderingCertificate p)
    (h : checkCertificate cert = true) : p.Prime ∧ DistinctNonzeroLabels cert.originalOrder := by
  have hc := (checkCertificate_eq_true cert).mp h
  exact ⟨hc.1, hc.2.2.2.2.2.1⟩

/-- Geometry supplies an actual trace, and the independent checker accepts
its replay. This is conditional ONLY on the explicit deterministic geometry. -/
theorem geometry_produces_accepted_certificate {p : ℕ} (hp : p.Prime)
    (xs : List (ZMod p)) (D revision epoch : ℕ)
    (labels : DistinctNonzeroLabels xs) (geometry : GoodRepairGeometry xs.get D) :
    ∃ cert : OrderingCertificate p, cert.originalOrder = xs ∧
      cert.sourceRevision = revision ∧ cert.epoch = epoch ∧
      cert.repairRadius = D ∧ checkCertificate cert = true := by
  have hn : ∀ i : Fin xs.length, xs.get i ≠ 0 := fun i => labels.2 _ (List.get_mem xs i)
  obtain ⟨trace, hd, hb, _, hv⟩ := goodRepairGeometry_valid_permutation xs.get D hn geometry
  let cert : OrderingCertificate p := ⟨xs, replayList xs trace, trace, D, revision, epoch⟩
  refine ⟨cert, rfl, rfl, rfl, rfl, (checkCertificate_eq_true cert).mpr ?_⟩
  exact ⟨hp, rfl, replayList_perm xs trace, hb, hd, labels, hv⟩

def validUnrootedCertificate : OrderingCertificate 5 where
  originalOrder := [1, 4]
  finalOrder := [1, 4]
  swaps := []
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem validUnrootedCertificate_accepted : checkCertificate validUnrootedCertificate = true := by
  decide

def zeroLabelCertificate : OrderingCertificate 5 where
  originalOrder := [1, 0]
  finalOrder := [1, 0]
  swaps := []
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem zeroLabelCertificate_rejected :
    diagnoseCertificate zeroLabelCertificate = some .labelsNotDistinctNonzero := by decide

def duplicateLabelCertificate : OrderingCertificate 5 where
  originalOrder := [1, 1]
  finalOrder := [1, 1]
  swaps := []
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem duplicateLabelCertificate_rejected :
    diagnoseCertificate duplicateLabelCertificate = some .labelsNotDistinctNonzero := by decide

/-- [1,1] has distinct sums [1,2]; the label contract is strictly stronger. -/
theorem duplicateLabel_distinct_sums : ValidPartialSumOrder duplicateLabelCertificate.finalOrder := by
  decide

def collidingCertificate : OrderingCertificate 5 where
  originalOrder := [1, 2, 3]
  finalOrder := [1, 2, 3]
  swaps := []
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem collidingCertificate_rejected :
    diagnoseCertificate collidingCertificate = some .repeatedPostSum := by decide

/-- A nontrivial valid replay: the tail [2,3] previously summed to zero. -/
def repairedCertificate : OrderingCertificate 5 where
  originalOrder := [1, 2, 3]
  finalOrder := [2, 1, 3]
  swaps := [⟨0, 1⟩]
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem repairedCertificate_accepted : checkCertificate repairedCertificate = true := by decide

def excessiveSwapCertificate : OrderingCertificate 11 where
  originalOrder := [1, 2, 3, 4, 5, 6, 7]
  finalOrder := [7, 2, 3, 4, 5, 6, 1]
  swaps := [⟨0, 6⟩]
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem excessiveSwapCertificate_rejected :
    diagnoseCertificate excessiveSwapCertificate = some .invalidSwap := by decide

def intersectingSwapCertificate : OrderingCertificate 5 where
  originalOrder := [1, 2, 3]
  finalOrder := [2, 3, 1]
  swaps := [⟨0, 1⟩, ⟨1, 2⟩]
  repairRadius := 1
  sourceRevision := 7
  epoch := 2

theorem intersectingSwapCertificate_rejected :
    diagnoseCertificate intersectingSwapCertificate = some .overlappingSupports := by decide

end GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.PartialSumOrdering
