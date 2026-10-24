# Complete source: GRWTSK.Topology.GeneralTopology.Compactness.Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26bf04bf6eb7750ece495aed8ff91736deb6c6d2` · SHA-256 `225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: compactness and the extreme-value theorem

Mathlib-backed formal proofs:

* every real closed interval `Set.Icc a b` is compact (`isCompact_Icc`);
* every continuous real-valued function on a nonempty `Set.Icc a b` attains
  a maximum and a minimum (`IsCompact.exists_forall_ge` /
  `IsCompact.exists_forall_le`).

The conjunction is packaged as a `MathlibProofCertificate` and recovered a
second time only through the analytic boundary calculus.
-/

namespace AnalyticNumber
namespace MathlibBridge
namespace Compactness

/-- Real closed intervals are compact. Mathlib proof. -/
theorem real_Icc_isCompact
    (a b : ℝ) :
    IsCompact (Set.Icc a b) :=
  isCompact_Icc

/-- A continuous function on a nonempty closed interval attains its maximum.
Mathlib proof via compactness. -/
theorem continuousOn_Icc_attains_max
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f y ≤ f x := by
  obtain ⟨x, hx, hmax⟩ :=
    (real_Icc_isCompact a b).exists_isMaxOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMaxOn_iff.mp hmax⟩

/-- A continuous function on a nonempty closed interval attains its minimum.
Mathlib proof via compactness. -/
theorem continuousOn_Icc_attains_min
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f x ≤ f y := by
  obtain ⟨x, hx, hmin⟩ :=
    (real_Icc_isCompact a b).exists_isMinOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMinOn_iff.mp hmin⟩

/-- Analytic context for the compactness claim. -/
def compactnessContext (_a _b : ℝ) :
    BoundaryCalculus.AnalyticContext where
  label := "Mathlib compactness of real closed interval"
  finiteHash := 0

/-- The analytic claim: compactness of `Icc a b` and the extreme-value
theorem for all continuous functions on it. -/
def compactnessClaim
    (a b : ℝ) (_hab : a ≤ b) :
    BoundaryCalculus.AnalyticClaim
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness") where
  label := "Mathlib proof: compactness and extreme-value theorem on Icc"
  statement :=
    IsCompact (Set.Icc a b) ∧
      ∀ f : ℝ → ℝ,
        ContinuousOn f (Set.Icc a b) →
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f y ≤ f x) ∧
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f x ≤ f y)

/-- The Mathlib-backed proof certificate for the compactness claim. -/
def compactnessMathlibProofCertificate
    (a b : ℝ) (hab : a ≤ b) :
    MathlibProofCertificate
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness")
      (compactnessClaim a b hab) where
  theoremName := "compactness of Icc and extreme value theorem"
  moduleName := "AnalyticNumber.Mathlib.Compactness"
  proof := by
    refine ⟨real_Icc_isCompact a b, ?_⟩
    intro f hf
    exact
      ⟨continuousOn_Icc_attains_max hab hf,
        continuousOn_Icc_attains_min hab hf⟩

/-- The compactness and extreme-value theorem, transported through the
boundary calculus rather than returned directly. -/
theorem compactness_through_boundary_calculus
    (a b : ℝ) (hab : a ≤ b) :
    IsCompact (Set.Icc a b) ∧
      ∀ f : ℝ → ℝ,
        ContinuousOn f (Set.Icc a b) →
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f y ≤ f x) ∧
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f x ≤ f y) :=
  mathlib_proof_through_boundary_calculus
    (compactnessMathlibProofCertificate a b hab)

/-- Direct lower-layer ownership of the compactness claim is impossible. -/
theorem compactness_no_direct_crossing
    (a b : ℝ) (hab : a ≤ b) :
    ¬ BoundaryCalculus.DirectOwns
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness")
      (compactnessClaim a b hab) :=
  BoundaryCalculus.no_direct_analytic_crossing

end Compactness
end MathlibBridge
end AnalyticNumber
```
