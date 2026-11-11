/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RuleSoundness
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates

/-!
# Exact-source composition of enclosure and rational Gram certificates

OCERT-1, math issue #1807. A proposed packet contains finite rational data and
an untrusted source-enclosure certificate. The source checker must accept the
EXACT packet at the SAME snapshot; the existing rational checker must then
accept its entire penalized target. Unknown source evidence remains unknown.
No reported source hash, model score or unchecked interval endpoint is trusted.

The enclosure checker is a supplied sound interface, not an arithmetic evaluator
constructed here. The composite's acceptance theorem is a new source candidate;
parsing, byte execution, elaboration, kernel replay and axiom audit are NOT_RUN.
No new axiom, solver or second definition of CertificateChecker is introduced.
-/

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.IntervalMatrix

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates

universe u v w
variable {Snapshot : Type u} {Evidence : Type v}
variable {ι : Type w} [Fintype ι] [DecidableEq ι]

/-- Semantics of the subordinate source request: every requested entry is enclosed. -/
def enclosureMeaning (source : Snapshot → Matrix ι ι ℝ)
    (snapshot : Snapshot) (P : Packet ι) : Prop := Encloses P (source snapshot)

/-- Conclusion of the composite checker, for every real vector, not just samples. -/
def lowerMeaning (source : Snapshot → Matrix ι ι ℝ)
    (snapshot : Snapshot) (P : Packet ι) : Prop :=
  ∀ x : ι → ℝ, -(P.tolerance : ℝ) *
    quadratic (fun i j => (P.metric i j : ℝ)) x ≤ quadratic (source snapshot) x

/-- Finite producer data, without a semantic proof or desired conclusion as a field. -/
structure CertificateData (ι : Type w) [Fintype ι] [DecidableEq ι] (Evidence : Type v) where
  packet : Packet ι
  enclosure : Evidence
  rows : ℕ
  factor : Certificate ℚ ι Empty Empty (Fin rows)

/-- Source acceptance alone does not suffice; both exact-target binding and the
entire rational interval check must also succeed. -/
def consumerDecision (source : Snapshot → Matrix ι ι ℝ)
    (oracle : CertificateChecker Snapshot Evidence (Packet ι) (enclosureMeaning source))
    (snapshot : Snapshot) (c : CertificateData ι Evidence) : DecisionResult :=
  match oracle.check snapshot c.enclosure with
  | .accept =>
      if oracle.conclusion c.enclosure = c.packet ∧ intervalCheck c.packet c.factor = true
      then .accept else .reject
  | .reject => .reject
  | .unknown => .unknown

/-- A complete characterization of informative composite acceptance. -/
theorem consumerDecision_accept_iff (source : Snapshot → Matrix ι ι ℝ)
    (oracle : CertificateChecker Snapshot Evidence (Packet ι) (enclosureMeaning source))
    (snapshot : Snapshot) (c : CertificateData ι Evidence) :
    consumerDecision source oracle snapshot c = .accept ↔
      oracle.Accepts snapshot c.enclosure c.packet ∧ intervalCheck c.packet c.factor = true := by
  cases h : oracle.check snapshot c.enclosure <;>
    simp [consumerDecision, CertificateChecker.Accepts, h]

/-- The composite is an instance of the canonical exact-target checker contract.
Its proof consumes source soundness and the original rational checker soundness. -/
def enclosureConsumer (source : Snapshot → Matrix ι ι ℝ)
    (oracle : CertificateChecker Snapshot Evidence (Packet ι) (enclosureMeaning source)) :
    CertificateChecker Snapshot (CertificateData ι Evidence) (Packet ι) (lowerMeaning source) where
  check := consumerDecision source oracle
  conclusion := CertificateData.packet
  accept_sound snapshot c accepted := by
    obtain ⟨hs, hc⟩ := (consumerDecision_accept_iff source oracle snapshot c).mp accepted
    have he := oracle.meaning_of_accepts snapshot c.enclosure c.packet hs
    exact checked_enclosure_lower c.packet c.factor (source snapshot) he hc

/-- Insufficient source evidence cannot be upgraded by a passing numerical factor. -/
theorem unknown_preserved (source : Snapshot → Matrix ι ι ℝ)
    (oracle : CertificateChecker Snapshot Evidence (Packet ι) (enclosureMeaning source))
    (snapshot : Snapshot) (c : CertificateData ι Evidence)
    (h : oracle.check snapshot c.enclosure = .unknown) :
    consumerDecision source oracle snapshot c = .unknown := by
  simp [consumerDecision, h]

/-- A certificate for a different packet is rejected even after source acceptance. -/
theorem mismatched_packet_rejected (source : Snapshot → Matrix ι ι ℝ)
    (oracle : CertificateChecker Snapshot Evidence (Packet ι) (enclosureMeaning source))
    (snapshot : Snapshot) (c : CertificateData ι Evidence)
    (h : oracle.check snapshot c.enclosure = .accept)
    (hne : oracle.conclusion c.enclosure ≠ c.packet) :
    consumerDecision source oracle snapshot c = .reject := by
  simp [consumerDecision, h, hne]

/-- A fixed code may use a finite frame of its own dimension. Universal accepted
packets at every accuracy give pointwise positivity. Neither a fixed finite
span nor a uniform conductor/continuity bound is silently assumed. -/
theorem nonneg_of_certified_packets
    {Code : Type*} {Index : Code → Type*} {ProofData : Code → Type*}
    [∀ d, Fintype (Index d)] [∀ d, DecidableEq (Index d)]
    (value : Snapshot → Code → ℝ)
    (matrix : Snapshot → (d : Code) → Matrix (Index d) (Index d) ℝ)
    (coordinates : (d : Code) → Index d → ℝ)
    (metric : (d : Code) → Matrix (Index d) (Index d) ℚ)
    (oracle : (d : Code) → CertificateChecker Snapshot (ProofData d) (Packet (Index d))
      (enclosureMeaning (fun s => matrix s d)))
    (snapshot : Snapshot)
    (hmass : ∀ d, 0 ≤ quadratic (fun i j => (metric d i j : ℝ)) (coordinates d))
    (hreturn : ∀ d, quadratic (matrix snapshot d) (coordinates d) ≤ value snapshot d)
    (covered : ∀ (d : Code) (k : ℕ), ∃ c : CertificateData (Index d) (ProofData d),
      consumerDecision (fun s => matrix s d) (oracle d) snapshot c = .accept ∧
      c.packet.metric = metric d ∧ (c.packet.tolerance : ℝ) = (1 / 2 : ℝ) ^ k) :
    ∀ d, 0 ≤ value snapshot d := by
  intro d
  apply nonneg_of_scaled_dyadic_lower (hmass d)
  intro k
  obtain ⟨c, accepted, hmetric, htolerance⟩ := covered d k
  have h := (enclosureConsumer (fun s => matrix s d) (oracle d)).accept_sound
    snapshot c accepted (coordinates d)
  change -(c.packet.tolerance : ℝ) *
    quadratic (fun i j => (c.packet.metric i j : ℝ)) (coordinates d) ≤
      quadratic (matrix snapshot d) (coordinates d) at h
  rw [hmetric, htolerance] at h
  exact h.trans (hreturn d)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.IntervalMatrix
