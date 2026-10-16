/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false

open scoped BigOperators

/-!
# Certified zero-height consensus and bounded completeness

A producer contributes closed height intervals together with multiplicity, sector, source,
jet, transport, and residual certificates. Consensus is an exact set-theoretic intersection.
Decimal information is returned only when the two endpoints of the consensus interval have
the same scaled integer floor.

A disjoint certified family has a multiplicity count. A Turing-style total-count certificate
supplies an exact finite target count and an upper bound on the certified count. The
unresolved gap vanishes exactly when the two counts agree.

This file does not implement Turing's analytic estimates, identify a missing zero, or assign
authority to a distributed producer. Those facts must be supplied by the constituent
certificates.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

open GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors

/-- A nonempty closed real interval. -/
structure ClosedInterval where
  lower : ℝ
  upper : ℝ
  valid : lower ≤ upper

namespace ClosedInterval

/-- The real set represented by an interval. -/
def carrier (interval : ClosedInterval) : Set ℝ :=
  Set.Icc interval.lower interval.upper

/-- Two intervals overlap when they contain a common point. -/
def Overlaps (left right : ClosedInterval) : Prop :=
  ∃ x, x ∈ left.carrier ∧ x ∈ right.carrier

/-- The decimal scaling factor. -/
def decimalScale (digits : ℕ) : ℝ :=
  (10 : ℝ) ^ digits

/-- The integer cell determined by the lower endpoint at a fixed decimal precision. -/
def digitValue (interval : ClosedInterval) (digits : ℕ) : ℤ :=
  ⌊decimalScale digits * interval.lower⌋

/-- The first `digits` decimal places are certified when both endpoints occupy the same
scaled integer cell. -/
def DigitsCertified (interval : ClosedInterval) (digits : ℕ) : Prop :=
  ⌊decimalScale digits * interval.lower⌋ =
    ⌊decimalScale digits * interval.upper⌋

/-- Every value in a digit-stable interval has the same certified scaled floor. -/
theorem floor_eq_digitValue_of_mem
    (interval : ClosedInterval) (digits : ℕ)
    (certified : interval.DigitsCertified digits)
    {x : ℝ} (hx : x ∈ interval.carrier) :
    ⌊decimalScale digits * x⌋ = interval.digitValue digits := by
  rcases hx with ⟨hlower, hupper⟩
  have hscale : 0 ≤ decimalScale digits := by
    exact pow_nonneg (by norm_num) digits
  apply le_antisymm
  · calc
      ⌊decimalScale digits * x⌋ ≤
          ⌊decimalScale digits * interval.upper⌋ :=
        Int.floor_mono (mul_le_mul_of_nonneg_left hupper hscale)
      _ = ⌊decimalScale digits * interval.lower⌋ := certified.symm
      _ = interval.digitValue digits := rfl
  · calc
      interval.digitValue digits =
          ⌊decimalScale digits * interval.lower⌋ := rfl
      _ ≤ ⌊decimalScale digits * x⌋ :=
        Int.floor_mono (mul_le_mul_of_nonneg_left hlower hscale)

end ClosedInterval

/-- An exact finite-producer consensus interval. -/
structure ConsensusCertificate
    (Producer : Type*) [Fintype Producer] where
  local : Producer → ClosedInterval
  consensus : ClosedInterval
  exact_carrier :
    consensus.carrier = ⋂ producer, (local producer).carrier

namespace ConsensusCertificate

variable {Producer : Type*} [Fintype Producer]

/-- Every consensus value lies in every producer interval. -/
theorem mem_local
    (certificate : ConsensusCertificate Producer)
    {x : ℝ} (hx : x ∈ certificate.consensus.carrier)
    (producer : Producer) :
    x ∈ (certificate.local producer).carrier := by
  rw [certificate.exact_carrier] at hx
  exact Set.mem_iInter.mp hx producer

/-- A value admitted by every producer lies in the exact consensus interval. -/
theorem mem_consensus
    (certificate : ConsensusCertificate Producer)
    {x : ℝ}
    (hx : ∀ producer, x ∈ (certificate.local producer).carrier) :
    x ∈ certificate.consensus.carrier := by
  rw [certificate.exact_carrier]
  exact Set.mem_iInter.mpr hx

/-- Consensus digits are shared by every real height allowed by all producers. -/
theorem common_digit
    (certificate : ConsensusCertificate Producer)
    (digits : ℕ)
    (stable : certificate.consensus.DigitsCertified digits)
    {x : ℝ}
    (hx : ∀ producer, x ∈ (certificate.local producer).carrier) :
    ⌊ClosedInterval.decimalScale digits * x⌋ =
      certificate.consensus.digitValue digits :=
  certificate.consensus.floor_eq_digitValue_of_mem digits stable
    (certificate.mem_consensus hx)

end ConsensusCertificate

/-- One producer's machine-checkable zero-height record. -/
structure ProducerRecord
    (Source Jet Transport Residual : Type*) where
  interval : ClosedInterval
  multiplicity : ℕ
  sector : Sector
  source : Source
  jet : Jet
  transport : Transport
  residual : Residual

namespace ProducerRecord

/-- Overlapping producer records must agree on all mathematical labels that are meant to
identify one zero. Residual certificates may remain independently authored. -/
def Compatible
    {Source Jet Transport Residual : Type*}
    (left right : ProducerRecord Source Jet Transport Residual) : Prop :=
  left.interval.Overlaps right.interval →
    left.multiplicity = right.multiplicity ∧
    left.sector = right.sector ∧
    left.source = right.source ∧
    left.jet = right.jet ∧
    left.transport = right.transport

end ProducerRecord

/-- A finite family of independent certificate producers. -/
structure Federation
    (Producer Key Source Jet Transport Residual : Type*)
    [Fintype Producer] [Fintype Key] where
  record : Producer → Key →
    Option (ProducerRecord Source Jet Transport Residual)
  compatible : ∀ producer₁ producer₂ key₁ key₂ record₁ record₂,
    record producer₁ key₁ = some record₁ →
    record producer₂ key₂ = some record₂ →
    record₁.Compatible record₂

/-- A deduplicated family of pairwise disjoint certified zero intervals. -/
structure DisjointCertifiedFamily
    (Index Source Jet Transport Residual : Type*)
    [Fintype Index] where
  record : Index → ProducerRecord Source Jet Transport Residual
  disjoint : ∀ {left right : Index}, left ≠ right →
    ¬(record left).interval.Overlaps (record right).interval

namespace DisjointCertifiedFamily

variable {Index Source Jet Transport Residual : Type*}
  [Fintype Index]

/-- Certified multiplicity count. -/
def certifiedCount
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual) : ℕ :=
  ∑ index, (family.record index).multiplicity

end DisjointCertifiedFamily

/-- A bounded total-zero count certificate, together with the fact that the certified
critical-line family does not exceed that total. -/
structure TuringCountCertificate
    {Index Source Jet Transport Residual : Type*}
    [Fintype Index]
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual) where
  height : ℝ
  totalCount : ℕ
  certified_le_total : family.certifiedCount ≤ totalCount

namespace TuringCountCertificate

variable {Index Source Jet Transport Residual : Type*}
  [Fintype Index]
  {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- The unresolved bounded count gap. -/
def gap
    (certificate : TuringCountCertificate family) : ℕ :=
  certificate.totalCount - family.certifiedCount

/-- Completeness up to the certified height means exact equality of multiplicity counts. -/
def Complete
    (certificate : TuringCountCertificate family) : Prop :=
  family.certifiedCount = certificate.totalCount

/-- The unresolved gap vanishes exactly when the certified critical-line count equals the
Turing total count. -/
theorem gap_eq_zero_iff_complete
    (certificate : TuringCountCertificate family) :
    certificate.gap = 0 ↔ certificate.Complete := by
  constructor
  · intro hgap
    have htotal_le :
        certificate.totalCount ≤ family.certifiedCount :=
      Nat.sub_eq_zero_iff_le.mp hgap
    exact Nat.le_antisymm certificate.certified_le_total htotal_le
  · intro hcomplete
    simp [gap, Complete, hcomplete]

/-- The natural-number gap is nonnegative. -/
theorem gap_nonnegative
    (certificate : TuringCountCertificate family) :
    0 ≤ certificate.gap :=
  Nat.zero_le _

end TuringCountCertificate

end GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight
