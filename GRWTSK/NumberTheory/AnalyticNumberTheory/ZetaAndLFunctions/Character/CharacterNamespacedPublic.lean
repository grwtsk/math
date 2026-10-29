-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GRHForPrimitiveCharacter.Variant91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.GRHForPrimitiveCharacter.Variant91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/DirichletGRH/Character.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.NumberTheory.LSeries.DirichletContinuation

/-!
# Character-local Dirichlet GRH

This file introduces only the exact zero-location proposition for one
complex Dirichlet character.  Mathlib's analytically continued
`DirichletCharacter.LFunction` requires a nonzero modulus, so that
requirement is explicit in the typeclass boundary.

Primitivity is deliberately not bundled into the definition: it is a
hypothesis at the family and functional-equation boundaries.  In
particular, this module constructs no inhabitant of the GRH proposition.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GRHForPrimitiveCharacter.Variant91cf828f09071c016620bb8df39f13942a4ac4eb6a77014018320528f82dbdda

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- GRH for the analytic continuation of one Dirichlet character.  The
name records the intended use at primitive characters; primitivity itself
is supplied separately wherever the functional equation is invoked. -/
@[expose]
def GRHForPrimitiveCharacter
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) : Prop :=
  ∀ s : ℂ,
    DirichletCharacter.LFunction chi s = 0 →
    0 < s.re →
    s.re < 1 →
    s.re = (1 / 2 : ℝ)

/-- The open critical-strip zero predicate used by the GRH statement. -/
@[expose]
def IsCriticalStripZero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (s : ℂ) : Prop :=
  DirichletCharacter.LFunction chi s = 0 ∧ 0 < s.re ∧ s.re < 1

@[surface_novel, surface_published]
theorem grhForPrimitiveCharacter_iff_criticalStripZeros
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) :
    GRHForPrimitiveCharacter chi ↔
      ∀ s : ℂ, IsCriticalStripZero chi s → s.re = (1 / 2 : ℝ) := by
  constructor
  · intro h s hs
    exact h s hs.1 hs.2.1 hs.2.2
  · intro h s hs h0 h1
    exact h s ⟨hs, h0, h1⟩

end

end Surface.Core.DirichletGRH

