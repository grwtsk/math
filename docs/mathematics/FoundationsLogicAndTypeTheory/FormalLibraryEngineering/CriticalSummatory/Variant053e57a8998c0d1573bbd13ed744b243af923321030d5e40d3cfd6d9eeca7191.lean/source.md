# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalSummatory.Variant053e57a8998c0d1573bbd13ed744b243af923321030d5e40d3cfd6d9eeca7191

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dc17e10a395c47076f19ebb08bdc5d6d39da91b` · SHA-256 `a10f928523bcd6ea522fb7fea1fbe00f748e53c5a10f5b04ed26099e8ff81a9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalSummatoryMembership.Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CriticalSummatoryMembership.Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/DirichletGRH/CriticalSummatory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.WeightedSummatory
public import Surface.Core.DirichletGRH.CenteredPsi
import Mathlib.Tactic

/-!
# Countable critical summatory control

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalSummatoryMembership.Variantb7edc73380bed2ff30d37c8d2a2c6b58cc3ee59649fe6da35d8a07f4cb749003

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
