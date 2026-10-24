# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CoordinationSupplement.Variant86c442d48635e913a4184fda3edd85a1ac75f63500ca436d3b647aa38c654533

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `475720368a66d26fe49b426507cc009f9ea86bae` · SHA-256 `7b11f5600a026432589c34684b46f87958502a2bbc7d6ff2b20abea79edd572f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PackingDensity.Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PackingDensity.Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/CoordinationSupplement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState

/-!
# Supplemental finite arithmetic replay targets

These propositions package existing source theorems for a new, separately frozen
coordination checkpoint. They do not widen earlier replay targets or confer
native kernel authority. Density is rational density on a finite residue ring;
valuation observations retain their finite support and depth; proper-divisor
classification requires its complete horizon; factor closure requires an actual
terminal certificate. None of these claims is a measured packing gain, a prime
occurrence prediction, or a proof supplied by search or memory.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PackingDensity.Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace CoordinationSupplement

open scoped BigOperators

noncomputable section

/-- Exact rational CRT density on the declared finite residue ring, including
empty supports and zero survivor factors; no asymptotic prime density is claimed. -/
def PackingDensity : Prop :=
  ∀ (H : Finset ℤ) (y : ℕ),
    DivisibilityPacking.rawDensity H y =
      ∏ p ∈ DivisibilityPacking.primeSupport y,
        (1 - (DivisibilityPacking.localForbiddenCount H p : ℚ) / p)

/-- The density target replays the existing finite CRT product identity. -/
theorem packing_density_checked : PackingDensity :=
  DivisibilityPacking.rawPacking_density

/-- Finite valuation signatures exactly observe visible prime-power divisibility,
including zero saturation, and coarsen under reduced support or depth. -/
def PackingDepthRefinement : Prop :=
  (∀ (p r : ℕ) (z : ℤ), PackingObservations.cappedValuation p r z ≤ r) ∧
  (∀ p r : ℕ, PackingObservations.cappedValuation p r 0 = r) ∧
  (∀ (p r k : ℕ) (z : ℤ), p.Prime → k ≤ r →
    (k ≤ PackingObservations.cappedValuation p r z ↔ (p : ℤ) ^ k ∣ z)) ∧
  (∀ (y r : ℕ) (H : Finset ℤ) (n m : ℤ),
    PackingObservations.ObservationalEquivalence y r H n m ↔
      ∀ p, p ≤ y → p.Prime → ∀ h ∈ H,
        PackingObservations.cappedValuation p r (n + h) =
          PackingObservations.cappedValuation p r (m + h)) ∧
  (∀ (y y' r r' : ℕ) (H : Finset ℤ) (n m : ℤ), y ≤ y' → r ≤ r' →
    PackingObservations.ObservationalEquivalence y' r' H n m →
      PackingObservations.ObservationalEquivalence y r H n m)

/-- Existing capped-valuation and projection proofs give both refinement
coordinates without treating the nested observations as independent events. -/
theorem packing_depth_refinement_checked : PackingDepthRefinement :=
  ⟨PackingObservations.cappedValuation_le,
    PackingObservations.cappedValuation_zero,
    PackingObservations.cappedValuation_power_dvd,
    PackingObservations.signature_eq_iff,
    fun _ _ _ _ _ _ _ hy hr he ↦
      PackingObservations.signature_partition_refinement hy hr he⟩

/-- Raw divisibility excludes visible primes, whereas bounded proper-divisor
classification preserves prime components and needs positive depth and coverage. -/
def PackingRawProper : Prop :=
  (∀ (p y r : ℕ), p.Prime → p ≤ y → r ≠ 0 →
    ¬(PackingObservations.RawPacking.mk y r {0}).Survives (p : ℤ)) ∧
  (∀ (P : PackingObservations.ProperPacking) (n : ℤ), P.InRange n →
    (∀ h ∈ P.pattern, ((n + h).toNat).Prime) → P.Survives n) ∧
  (∀ (P : PackingObservations.ProperPacking) (n : ℤ),
    Nat.sqrt P.X ≤ P.y → P.r ≠ 0 →
      (P.Survives n ↔ P.InRange n ∧ ∀ h ∈ P.pattern, ((n + h).toNat).Prime)) ∧
  ((PackingObservations.ProperPacking.mk 2 0 4 {0}).Survives 4 ∧ ¬Nat.Prime 4)

/-- The source's raw/proper distinction and zero-depth counterexample are
retained together with the complete bounded-classification theorem. -/
theorem packing_raw_proper_checked : PackingRawProper :=
  ⟨fun p y r hp hy hr ↦ PackingObservations.raw_excludes_visible_prime p hp y r hy hr,
    PackingObservations.proper_preserves_primes,
    PackingObservations.bounded_proper_classification,
    PackingObservations.zero_depth_keeps_composite⟩

/-- Factor closure distinguishes residual one from a prime residual, requires
exhaustive negative coverage when deriving primality, and reconstructs every valuation. -/
def PackingFactorTerminal : Prop :=
  (∀ (N : ℕ) (s : FactorState.State N),
    ¬(FactorState.ResidualOne s ∧ FactorState.PrimeResidual s)) ∧
  (∀ (N : ℕ) (s : FactorState.State N), 2 ≤ s.residual →
    (∀ p, p.Prime → p ≤ s.horizon → p ∈ s.excluded) → FactorState.PrimeResidual s) ∧
  (∀ (N : ℕ) (s : FactorState.State N) (c : FactorState.ResidualOne s),
    N.factorization = (FactorState.closeOne s c).factors) ∧
  (∀ (N : ℕ) (s : FactorState.State N) (c : FactorState.PrimeResidual s),
    N.factorization = (FactorState.closePrime s c).factors ∧
      (FactorState.closePrime s c).factors s.residual = 1)

/-- Both terminal routes use existing complete-factorization certificates.
A prime residual is appended with depth one, never silently merged into residual one. -/
theorem packing_factor_terminal_checked : PackingFactorTerminal :=
  ⟨fun _ s ↦ FactorState.terminal_cases_disjoint s,
    fun _ s h coverage ↦ FactorState.primeResidual_of_coverage s h coverage,
    fun _ s c ↦ (FactorState.closeOne s c).exact,
    fun _ s c ↦ ⟨(FactorState.closePrime s c).exact, FactorState.closePrime_last_depth s c⟩⟩

#print axioms packing_density_checked
#print axioms packing_depth_refinement_checked
#print axioms packing_raw_proper_checked
#print axioms packing_factor_terminal_checked

end

end CoordinationSupplement
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
