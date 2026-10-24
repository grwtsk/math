# Complete source: GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88c1adb0a7f624bbed177fc2fa521c4ba469c626` · SHA-256 `b6be5c79d76278d8e6d7de6344ca7d16295a3c98786eca85baf8c8a941b75244`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity
import GRWTSK.Order.WellFounded.AdditiveNaturalRank

/-! Source-preserving signed chart interfaces and conditional consumers.
Every packet retains both actual mature and horizon waves. Bounds and chart
coverage are explicit proof fields; none of the arithmetic matching, extraction,
normalization, or uniform HSS producers is supplied by this schema.
-/
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace HSSCP04.SignedCharts
open HorizonShell Settlement

structure Chart (b T : ℝ) where
  left : ℝ
  right : ℝ
  endpoints : T-b ≤ left ∧ left ≤ right ∧ right ≤ T
  cutoff : ℝ → ℝ
  continuous : Continuous cutoff
  bound : ℝ
  bound_nonnegative : 0 ≤ bound
  bounded : ∀ u, |cutoff u| ≤ bound
  enlargement : ℝ
  enlargement_nonnegative : 0 ≤ enlargement
  supported : ∀ u, u ∉ Icc (left-enlargement) (right+enlargement) → cutoff u = 0
  rank : NarrowRank

def maturePacket {b T : ℝ} (c : Chart b T) (u : ℝ) : ℝ :=
  c.cutoff u * matureWave b T u

def horizonPacket {b T : ℝ} (c : Chart b T) (u : ℝ) : ℝ :=
  c.cutoff u * horizonWave b T u

def packetEnergy {b T : ℝ} (c : Chart b T) : ℝ :=
  ∫ u in Icc (T-b) T, (maturePacket c u+horizonPacket c u)^2

def maturePacketEnergy {b T : ℝ} (c : Chart b T) : ℝ :=
  ∫ u in Icc (T-b) T, maturePacket c u^2

def horizonPacketEnergy {b T : ℝ} (c : Chart b T) : ℝ :=
  ∫ u in Icc (T-b) T, horizonPacket c u^2

def packetCorrelation {b T : ℝ} (c : Chart b T) : ℝ :=
  2 * ∫ u in Icc (T-b) T, maturePacket c u*horizonPacket c u

def sectorMass {b T : ℝ} (c : Chart b T) : ℝ :=
  maturePacketEnergy c+horizonPacketEnergy c

lemma packet_square_integrable {b T : ℝ} (c : Chart b T) {f : ℝ → ℝ}
    (hf : Integrable (fun u => f u^2)) :
    Integrable (fun u => (c.cutoff u*f u)^2) := by
  have hh := hf.mul_bdd (c.continuous.pow 2).aestronglyMeasurable
    (show ∀ᵐ u : ℝ, ‖c.cutoff u^2‖ ≤ c.bound^2 from by
      filter_upwards [] with u
      rw [Real.norm_eq_abs,abs_of_nonneg (sq_nonneg _)]
      have hprod := mul_nonneg (sub_nonneg.mpr (c.bounded u))
        (add_nonneg c.bound_nonnegative (abs_nonneg (c.cutoff u)))
      nlinarith [sq_abs (c.cutoff u)])
  apply hh.congr
  exact Filter.Eventually.of_forall (fun _ => by simp only [Pi.pow_apply]; ring)

lemma mature_packet_square_integrable {b T : ℝ} (c : Chart b T) :
    Integrable (fun u => maturePacket c u^2) :=
  packet_square_integrable c (matureWave_square_integrable b T)

lemma horizon_packet_square_integrable {b T : ℝ} (c : Chart b T) :
    Integrable (fun u => horizonPacket c u^2) :=
  packet_square_integrable c (horizonWave_square_integrable b T)

lemma packet_cross_integrable {b T : ℝ} (c : Chart b T) :
    Integrable (fun u => maturePacket c u*horizonPacket c u) := by
  have hg := mature_packet_square_integrable c
  have hh := horizon_packet_square_integrable c
  apply (hg.add hh).mono'
  · exact (c.continuous.aestronglyMeasurable.mul
      (matureWave_memLp_two b T).aestronglyMeasurable).mul
      (c.continuous.aestronglyMeasurable.mul
        (horizonWave_memLp_two b T).aestronglyMeasurable)
  · filter_upwards [] with u
    rw [Real.norm_eq_abs,abs_mul]
    change |maturePacket c u| * |horizonPacket c u| ≤
      maturePacket c u^2+horizonPacket c u^2
    nlinarith [sq_nonneg (|maturePacket c u|-|horizonPacket c u|),
      sq_abs (maturePacket c u),sq_abs (horizonPacket c u)]

lemma packet_sum_square_integrable {b T : ℝ} (c : Chart b T) :
    Integrable (fun u => (maturePacket c u+horizonPacket c u)^2) := by
  apply (((mature_packet_square_integrable c).add
    (horizon_packet_square_integrable c)).add ((packet_cross_integrable c).const_mul 2)).congr
  exact Filter.Eventually.of_forall (fun _ => by simp only [Pi.add_apply]; ring)

lemma source_sum_square_integrable (b T : ℝ) :
    Integrable (fun u => (matureWave b T u+horizonWave b T u)^2) := by
  apply (((matureWave_square_integrable b T).add
    (horizonWave_square_integrable b T)).add ((cross_integrable b T).const_mul 2)).congr
  exact Filter.Eventually.of_forall (fun _ => by simp only [Pi.add_apply]; ring)

/-- Complete signed packet ledger with the correlation retained. -/
theorem packet_signed_ledger {b T : ℝ} (c : Chart b T) :
    packetEnergy c = sectorMass c+packetCorrelation c := by
  have hg := (mature_packet_square_integrable c).restrict (s := Icc (T-b) T)
  have hh := (horizon_packet_square_integrable c).restrict (s := Icc (T-b) T)
  have hc := ((packet_cross_integrable c).const_mul 2).restrict (s := Icc (T-b) T)
  unfold packetEnergy sectorMass maturePacketEnergy horizonPacketEnergy packetCorrelation
  calc
    _ = ∫ u in Icc (T-b) T,
      (maturePacket c u^2+horizonPacket c u^2)+2*(maturePacket c u*horizonPacket c u) := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun _ => by ring)
    _ = _ := by
      have h_add := integral_add (hg.add hh) hc
      have h_add2 := integral_add hg hh
      simp only [Pi.add_apply] at h_add h_add2
      rw [h_add, h_add2, integral_const_mul]

lemma packetEnergy_nonnegative {b T : ℝ} (c : Chart b T) : 0 ≤ packetEnergy c :=
  integral_nonneg (fun _ => sq_nonneg _)

/-- Signed matching deficit. Negative correlation pays the positive sector masses. -/
def matchingDeficit {b T : ℝ} (c : Chart b T) : ℝ := sectorMass c+packetCorrelation c

lemma matchingDeficit_eq_packetEnergy {b T : ℝ} (c : Chart b T) :
    matchingDeficit c = packetEnergy c := (packet_signed_ledger c).symm

/-- The signed predicate distinguishes alignment from cancellation. -/
def BroadMatching {b T : ℝ} (c : Chart b T) (δ error : ℝ) : Prop :=
  -packetCorrelation c ≥ (1-δ)*sectorMass c-error

structure BroadCertificate {b T : ℝ} (c : Chart b T) (budget : ℝ) where
  delta : ℝ
  error : ℝ
  delta_nonnegative : 0 ≤ delta
  error_nonnegative : 0 ≤ error
  matching_estimate : BroadMatching c delta error
  return_budget : delta*sectorMass c+error ≤ budget

/-- This consumes a quantitative signed matching proof; it does not produce one. -/
theorem broad_certificate_returns_budget {b T budget : ℝ} {c : Chart b T}
    (cert : BroadCertificate c budget) : packetEnergy c ≤ budget := by
  rw [packet_signed_ledger]
  have hm := cert.matching_estimate
  unfold BroadMatching at hm
  have hb := cert.return_budget
  nlinarith

lemma packet_square_factor {b T : ℝ} (c : Chart b T) (u : ℝ) :
    (maturePacket c u+horizonPacket c u)^2 =
      c.cutoff u^2*(matureWave b T u+horizonWave b T u)^2 := by
  unfold maturePacket horizonPacket
  ring

/-- Finite coverage is applied to the matched signed source, not separate sectors. -/
theorem finite_coverage_returns_energy {ι : Type*} {b T : ℝ} (s : Finset ι)
    (charts : ι → Chart b T) (hb : PinnedShellWidth b) (hT : b ≤ T)
    (coverage : ∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2) :
    localEnergy b T ≤ ∑ i ∈ s, packetEnergy (charts i) := by
  classical
  rw [localEnergy_eq_signed_source hb hT]
  have hi : ∀ i ∈ s, Integrable (fun u =>
      (maturePacket (charts i) u+horizonPacket (charts i) u)^2)
      (volume.restrict (Icc (T-b) T)) :=
    fun i _ => (packet_sum_square_integrable (charts i)).restrict
  have hsum := integrable_finsetSum s hi
  calc
    _ ≤ ∫ u in Icc (T-b) T, ∑ i ∈ s,
        (maturePacket (charts i) u+horizonPacket (charts i) u)^2 := by
      apply setIntegral_mono_on (source_sum_square_integrable b T).restrict hsum measurableSet_Icc
      intro u hu
      simp_rw [packet_square_factor]
      rw [← Finset.sum_mul]
      exact le_mul_of_one_le_left (sq_nonneg _) (coverage u hu)
    _ = _ := by rw [integral_finsetSum s hi]; rfl

/-- A complete chart budget closes the actual local source. Coverage and the sum
budget are explicit assumptions, including any exceptional or residual costs. -/
theorem finite_chart_budgets_return {ι : Type*} {b T budget : ℝ} (s : Finset ι)
    (charts : ι → Chart b T) (budgets : ι → ℝ) (hb : PinnedShellWidth b) (hT : b ≤ T)
    (coverage : ∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2)
    (packet_budgets : ∀ i ∈ s, packetEnergy (charts i) ≤ budgets i)
    (total_budget : ∑ i ∈ s, budgets i ≤ budget) : localEnergy b T ≤ budget :=
  (finite_coverage_returns_energy s charts hb hT coverage).trans
    ((Finset.sum_le_sum packet_budgets).trans total_budget)

/-- A declared overlap bound charges only the joint signed source energy. -/
theorem finite_overlap_cost {ι : Type*} {b T K : ℝ} (s : Finset ι)
    (charts : ι → Chart b T) (hb : PinnedShellWidth b) (hT : b ≤ T)
    (overlap : ∀ u ∈ Icc (T-b) T, ∑ i ∈ s, (charts i).cutoff u^2 ≤ K) :
    (∑ i ∈ s, packetEnergy (charts i)) ≤ K*localEnergy b T := by
  classical
  rw [localEnergy_eq_signed_source hb hT]
  have hi : ∀ i ∈ s, Integrable (fun u =>
      (maturePacket (charts i) u+horizonPacket (charts i) u)^2)
      (volume.restrict (Icc (T-b) T)) :=
    fun i _ => (packet_sum_square_integrable (charts i)).restrict
  change (∑ i ∈ s, ∫ u in Icc (T-b) T,
    (maturePacket (charts i) u+horizonPacket (charts i) u)^2) ≤ _
  rw [← integral_finsetSum s hi, ← integral_const_mul]
  apply setIntegral_mono_on (integrable_finsetSum s hi)
    ((source_sum_square_integrable b T).restrict.const_mul K) measurableSet_Icc
  intro u hu
  simp_rw [packet_square_factor]
  rw [← Finset.sum_mul]
  exact mul_le_mul_of_nonneg_right (overlap u hu) (sq_nonneg _)

/-- A linear partition reconstructs each actual signed source component. It is
separate from quadratic coverage, which by itself does not reconstruct a wave. -/
theorem finite_signed_component_reconstruction {ι : Type*} {b T u : ℝ}
    (s : Finset ι) (charts : ι → Chart b T)
    (partition : ∑ i ∈ s, (charts i).cutoff u = 1) :
    (∑ i ∈ s, maturePacket (charts i) u) = matureWave b T u ∧
    (∑ i ∈ s, horizonPacket (charts i) u) = horizonWave b T u := by
  classical
  unfold maturePacket horizonPacket
  rw [← Finset.sum_mul, ← Finset.sum_mul, partition, one_mul, one_mul]
  exact ⟨rfl,rfl⟩

/-- Uniform finite chart budgets suffice for HSS. The supplied coverage and
signed packet-budget producers are precisely the arithmetic obligations. -/
theorem uniform_chart_budgets_imply_HSS {b C q : ℝ} (hb : PinnedShellWidth b)
    (hC : 0 ≤ C) (hq : 0 ≤ q)
    (producer : ∀ T : ℝ, b ≤ T → ∃ (s : Finset ℕ) (charts : ℕ → Chart b T)
      (budgets : ℕ → ℝ),
      (∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2) ∧
      (∀ i ∈ s, packetEnergy (charts i) ≤ budgets i) ∧
      (∑ i ∈ s, budgets i ≤ C*(1+T)^q)) : HSS b := by
  refine ⟨C,q,hC,hq,?_⟩
  intro T hT
  obtain ⟨s,charts,budgets,hcover,hpack,hsum⟩ := producer T hT
  exact finite_chart_budgets_return s charts budgets hb hT hcover hpack hsum

/-- Every normalized child is another packet of the actual source at its own
scale. Separate reconstructions retain G/H and signed residuals. The affine
transport bound is a required quantitative certificate, not an asserted theorem. -/
structure NarrowCertificate {b T : ℝ} (parent : Chart b T) where
  childWidth : ℝ
  childTime : ℝ
  child_width_valid : PinnedShellWidth childWidth
  child_time_valid : childWidth ≤ childTime
  child : Chart childWidth childTime
  lower_rank : LowerRank child.rank parent.rank
  scale : ℝ
  scale_positive : 0 < scale
  offset : ℝ
  width_normalized : childWidth = scale*b
  time_normalized : childTime = scale*T+offset
  amplitude : ℝ
  residualMature : ℝ → ℝ
  residualHorizon : ℝ → ℝ
  residual_mature_memLp : MemLp residualMature 2 volume
  residual_horizon_memLp : MemLp residualHorizon 2 volume
  mature_reconstruction : ∀ u ∈ Icc (T-b) T,
    maturePacket parent u = amplitude*maturePacket child (scale*u+offset)+residualMature u
  horizon_reconstruction : ∀ u ∈ Icc (T-b) T,
    horizonPacket parent u = amplitude*horizonPacket child (scale*u+offset)+residualHorizon u
  pulled_integrable : Integrable (fun u =>
    (amplitude*(maturePacket child (scale*u+offset)+horizonPacket child (scale*u+offset)))^2)
    (volume.restrict (Icc (T-b) T))
  transport : ℝ
  transport_nonnegative : 0 ≤ transport
  transport_bound : (∫ u in Icc (T-b) T,
    (amplitude*(maturePacket child (scale*u+offset)+horizonPacket child (scale*u+offset)))^2) ≤
      transport*packetEnergy child
  residualBudget : ℝ
  residual_budget_nonnegative : 0 ≤ residualBudget
  residual_bound : (∫ u in Icc (T-b) T, (residualMature u+residualHorizon u)^2) ≤ residualBudget

lemma normalized_child_window {b T u : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) (hu : u ∈ Icc (T-b) T) :
    cert.scale*u+cert.offset ∈ Icc (cert.childTime-cert.childWidth) cert.childTime := by
  rw [cert.time_normalized, cert.width_normalized]
  constructor <;> nlinarith [cert.scale_positive, hu.1, hu.2]

lemma narrow_residual_integrable {b T : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) :
    Integrable (fun u => (cert.residualMature u+cert.residualHorizon u)^2) := by
  have hmem := cert.residual_mature_memLp.add cert.residual_horizon_memLp
  have h : Integrable (fun u => (cert.residualMature u+cert.residualHorizon u)*
      (cert.residualMature u+cert.residualHorizon u)) := hmem.integrable_mul hmem
  simpa only [pow_two] using h

/-- Exact source reconstruction plus the declared transport/residual ledger
returns the parent packet. All loss constants remain explicit. -/
theorem narrow_certificate_transport {b T : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) :
    packetEnergy parent ≤ 2*cert.transport*packetEnergy cert.child+2*cert.residualBudget := by
  let pulled : ℝ → ℝ := fun u => cert.amplitude*(maturePacket cert.child
    (cert.scale*u+cert.offset)+horizonPacket cert.child (cert.scale*u+cert.offset))
  let residual : ℝ → ℝ := fun u => cert.residualMature u+cert.residualHorizon u
  have hi := cert.pulled_integrable
  have hr := (narrow_residual_integrable cert).restrict (s := Icc (T-b) T)
  have hpoint : ∀ u ∈ Icc (T-b) T,
      (maturePacket parent u+horizonPacket parent u)^2 ≤ 2*pulled u^2+2*residual u^2 := by
    intro u hu
    rw [cert.mature_reconstruction u hu,cert.horizon_reconstruction u hu]
    dsimp [pulled,residual]
    nlinarith [sq_nonneg (cert.amplitude*(maturePacket cert.child (cert.scale*u+cert.offset)+
      horizonPacket cert.child (cert.scale*u+cert.offset))-
      (cert.residualMature u+cert.residualHorizon u))]
  have hmono := setIntegral_mono_on (packet_sum_square_integrable parent).restrict
    ((hi.const_mul 2).add (hr.const_mul 2)) measurableSet_Icc hpoint
  unfold packetEnergy
  apply hmono.trans
  have h_add := integral_add (hi.const_mul 2) (hr.const_mul 2)
  simp only [Pi.add_apply] at h_add ⊢
  rw [h_add, integral_const_mul, integral_const_mul]
  have ht := cert.transport_bound
  have hb := cert.residual_bound
  dsimp [pulled,residual] at *
  unfold packetEnergy at ht
  linarith

theorem narrow_child_budget_returns_parent {b T childBudget budget : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) (hchild : packetEnergy cert.child ≤ childBudget)
    (ledger : 2*cert.transport*childBudget+2*cert.residualBudget ≤ budget) :
    packetEnergy parent ≤ budget := by
  have ht := narrow_certificate_transport cert
  have hm := mul_le_mul_of_nonneg_left hchild (mul_nonneg (by norm_num : 0 ≤ (2:ℝ)) cert.transport_nonnegative)
  linarith

/-- A finite recursive certificate composes broad leaves and normalized narrow
returns. The child width/horizon and every strict rank edge are checked in the
narrow certificate. A uniform arithmetic producer and polynomial total budget
are separate, unsupplied statements. -/
inductive SignedBudgetDerivation : {b T : ℝ} → Chart b T → ℝ → Type where
  | broad {b T budget : ℝ} {parent : Chart b T}
      (cert : BroadCertificate parent budget) : SignedBudgetDerivation parent budget
  | narrow {b T childBudget budget : ℝ} {parent : Chart b T}
      (cert : NarrowCertificate parent)
      (child : SignedBudgetDerivation cert.child childBudget)
      (ledger : 2*cert.transport*childBudget+2*cert.residualBudget ≤ budget) :
      SignedBudgetDerivation parent budget

/-- Soundness includes every signed reconstruction, residual, and transport cost
in the finite derivation. It does not assert that a derivation exists. -/
theorem SignedBudgetDerivation.sound {b T budget : ℝ} {parent : Chart b T}
    (derivation : SignedBudgetDerivation parent budget) : packetEnergy parent ≤ budget := by
  induction derivation with
  | broad cert => exact broad_certificate_returns_budget cert
  | narrow cert child ledger ih => exact narrow_child_budget_returns_parent cert ih ledger

def SignedBudgetDerivation.depth {b T budget : ℝ} {parent : Chart b T} :
    SignedBudgetDerivation parent budget → ℕ := by
  intro derivation
  induction derivation with
  | broad cert => exact 0
  | narrow cert child ledger ih => exact ih + 1

/-- The declared rank bounds the actual normalized recursion depth. -/
theorem SignedBudgetDerivation.depth_le_rank {b T budget : ℝ} {parent : Chart b T}
    (derivation : SignedBudgetDerivation parent budget) : derivation.depth ≤ parent.rank.cost := by
  induction derivation with
  | broad cert => exact Nat.zero_le _
  | narrow cert child ledger ih =>
    change child.depth+1 ≤ _
    have hlt := cert.lower_rank
    unfold LowerRank at hlt
    omega

/-- The genuine typed construction obligation: every all-real terminal horizon
has finitely many covering packets, complete broad/narrow derivations, and one
polynomial ledger. Existence of this producer is not established here. -/
def UniformCertifiedCharts (b : ℝ) : Prop :=
  ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧ ∀ T : ℝ, b ≤ T →
    ∃ (s : Finset ℕ) (charts : ℕ → Chart b T) (budgets : ℕ → ℝ),
      (∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2) ∧
      (∀ i ∈ s, Nonempty (SignedBudgetDerivation (charts i) (budgets i))) ∧
      (∑ i ∈ s, budgets i ≤ C*(1+T)^q)

/-- Complete typed chart derivations return the literal joint-source HSS bound.
The producer remains an explicit hypothesis. -/
theorem uniform_certified_charts_imply_HSS {b : ℝ} (hb : PinnedShellWidth b)
    (hproducer : UniformCertifiedCharts b) : HSS b := by
  obtain ⟨C,q,hC,hq,producer⟩ := hproducer
  apply uniform_chart_budgets_imply_HSS hb hC hq
  intro T hT
  obtain ⟨s,charts,budgets,hcoverage,hderivations,hsum⟩ := producer T hT
  refine ⟨s,charts,budgets,hcoverage,?_,hsum⟩
  intro i hi
  obtain ⟨derivation⟩ := hderivations i hi
  exact derivation.sound

theorem nondecreasing_child_rejected {b T : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) : ¬ parent.rank.cost ≤ cert.child.rank.cost := by
  exact not_le.mpr cert.lower_rank

end HSSCP04.SignedCharts
#print axioms HSSCP04.SignedCharts.packet_signed_ledger
#print axioms HSSCP04.SignedCharts.finite_coverage_returns_energy
#print axioms HSSCP04.SignedCharts.narrow_certificate_transport

#print axioms HSSCP04.SignedCharts.SignedBudgetDerivation.sound
#print axioms HSSCP04.SignedCharts.SignedBudgetDerivation.depth_le_rank

#print axioms HSSCP04.SignedCharts.uniform_certified_charts_imply_HSS
```
