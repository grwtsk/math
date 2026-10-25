# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalFrechet.Variant80a3cde2a9b5661d22c68aea5c2575ad465a332d94741f3a08370a50f7fe1652

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d3cb5456f2ad9c7d8a332f80067f589b7219ad4` · SHA-256 `b0aecf00ae894e77f021cc67abc634dcb1b7eda211d75607806421e57bfd149f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalSummatoryMembership.Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CriticalSummatoryMembership.Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:e7c0b0d60689239bddd12d3f/workspace/lib/Surface/Core/DirichletGRH/CriticalFrechet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.WeightedSummatory
public import Surface.Core.DirichletGRH.CenteredPsi
import Mathlib.Tactic

/-!
# The countable critical summatory criterion

The intersection of the weighted spaces with exponents
`1 / 2 + 1 / (r + 1)`, `r : ℕ`, is the countable theorem-language model for the
critical Fréchet-type space.  This file proves that membership in that
countable intersection is equivalent to satisfying a weighted estimate for
every real exponent `1 / 2 + ε`, `ε > 0`.

This is only a membership predicate.  No topology, completeness instance,
Dirichlet-character estimate, or GRH statement is introduced here.  In
particular, declaration names deliberately avoid `Frechet` until an actual
complete metrizable locally convex space has been constructed.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalSummatoryMembership.Variant7e8ccb67079339c2c652d46ede3e038b6e2d65bfaa6adf5e8741dcafe93cb7b9

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Membership in the countable projective intersection of weighted spaces
with exponents approaching `1 / 2` from the right.  The `r + 1` indexing
avoids a positivity side condition and division-by-zero bookkeeping. -/
@[expose]
def CriticalSummatoryMembership (F : ℕ → ℂ) : Prop :=
  ∀ r : ℕ,
    HasWeightedSummatoryBound
      ((1 / 2 : ℝ) + 1 / ((r + 1 : ℕ) : ℝ)) F

/-- The equivalent uncountable formulation using every positive real power
loss. -/
@[expose]
def CriticalSummatoryHalfPlusEpsilonMembership (F : ℕ → ℂ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    HasWeightedSummatoryBound ((1 / 2 : ℝ) + ε) F

/-- Character-specialized half-plus-epsilon criterion for the centered
twisted Chebyshev function. -/
@[expose]
def CenteredTwistedPsiHalfPlusEpsilon
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  CriticalSummatoryHalfPlusEpsilonMembership (centeredTwistedPsi χ)

/-- Character-specialized countable critical membership. -/
@[expose]
def CenteredTwistedPsiCriticalMembership
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  CriticalSummatoryMembership (centeredTwistedPsi χ)

/-- A countable critical-space bound supplies every positive real
half-plus-epsilon bound.  Archimedeanness chooses `r` with `1 / (r + 1) < ε`, and
monotonicity of `x ^ σ` for `x ≥ 2` finishes the comparison. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryMembership_implies_halfPlusEpsilon
    {F : ℕ → ℂ} (hF : CriticalSummatoryMembership F) :
    CriticalSummatoryHalfPlusEpsilonMembership F := by
  intro ε hε
  obtain ⟨n, hn⟩ := exists_nat_one_div_lt hε
  have hreciprocal : 1 / ((n + 1 : ℕ) : ℝ) ≤ ε :=
    le_of_lt (by simpa [Nat.cast_add, Nat.cast_one] using hn)
  exact (hF n).mono_exponent (by linarith)

/-- Bounds at every positive real power loss specialize to the countable
sequence `ε = 1 / (r + 1)`. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryHalfPlusEpsilonMembership_implies_countable
    {F : ℕ → ℂ} (hF : CriticalSummatoryHalfPlusEpsilonMembership F) :
    CriticalSummatoryMembership F := by
  intro r
  have hr_pos : 0 < ((r + 1 : ℕ) : ℝ) := by positivity
  exact hF (1 / ((r + 1 : ℕ) : ℝ)) (one_div_pos.mpr hr_pos)

/-- The countable criterion is exactly equivalent to quantifying over
all real `ε > 0`. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryMembership_iff_halfPlusEpsilon
    (F : ℕ → ℂ) :
    CriticalSummatoryMembership F ↔
      CriticalSummatoryHalfPlusEpsilonMembership F := by
  constructor
  · exact criticalSummatoryMembership_implies_halfPlusEpsilon
  · exact criticalSummatoryHalfPlusEpsilonMembership_implies_countable

/-- Expanded form of the same equivalence, convenient for clients that do
not need the named half-plus-epsilon predicate. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryMembership_iff_forall_pos
    (F : ℕ → ℂ) :
    CriticalSummatoryMembership F ↔
      ∀ ε : ℝ, 0 < ε →
        HasWeightedSummatoryBound ((1 / 2 : ℝ) + ε) F := by
  exact criticalSummatoryMembership_iff_halfPlusEpsilon F

/-- The countable and all-real-exponent formulations agree for every
centered Dirichlet-character summatory function. -/
@[surface_adapter, surface_published]
theorem centeredTwistedPsiCriticalMembership_iff_halfPlusEpsilon
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    CenteredTwistedPsiCriticalMembership χ ↔
      CenteredTwistedPsiHalfPlusEpsilon χ := by
  exact criticalSummatoryMembership_iff_halfPlusEpsilon
    (centeredTwistedPsi χ)

/-- The all-real half-plus-epsilon criterion is invariant under replacing
a complex Dirichlet character by its inverse. -/
@[surface_adapter]
theorem centeredTwistedPsiHalfPlusEpsilon_inv_iff
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    CenteredTwistedPsiHalfPlusEpsilon χ⁻¹ ↔
      CenteredTwistedPsiHalfPlusEpsilon χ := by
  unfold CenteredTwistedPsiHalfPlusEpsilon
  constructor
  · intro hInv ε hε
    exact (hasWeightedSummatoryBound_congr_norm
      (fun x ↦ centeredTwistedPsi_inv_norm χ x)).mp (hInv ε hε)
  · intro hχ ε hε
    exact (hasWeightedSummatoryBound_congr_norm
      (fun x ↦ centeredTwistedPsi_inv_norm χ x)).mpr (hχ ε hε)

/-- In particular, every half-plus-epsilon bound transfers to the inverse
character. -/
@[surface_adapter]
theorem centeredTwistedPsiHalfPlusEpsilon_inv
    {q : ℕ} {χ : DirichletCharacter ℂ q}
    (hχ : CenteredTwistedPsiHalfPlusEpsilon χ) :
    CenteredTwistedPsiHalfPlusEpsilon χ⁻¹ :=
  (centeredTwistedPsiHalfPlusEpsilon_inv_iff χ).2 hχ

/-- The countable `r + 1` critical membership is likewise invariant under
character inversion. -/
@[surface_adapter]
theorem centeredTwistedPsiCriticalMembership_inv_iff
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    CenteredTwistedPsiCriticalMembership χ⁻¹ ↔
      CenteredTwistedPsiCriticalMembership χ := by
  rw [centeredTwistedPsiCriticalMembership_iff_halfPlusEpsilon,
    centeredTwistedPsiCriticalMembership_iff_halfPlusEpsilon]
  exact centeredTwistedPsiHalfPlusEpsilon_inv_iff χ

end

end Surface.Core.DirichletGRH
```
