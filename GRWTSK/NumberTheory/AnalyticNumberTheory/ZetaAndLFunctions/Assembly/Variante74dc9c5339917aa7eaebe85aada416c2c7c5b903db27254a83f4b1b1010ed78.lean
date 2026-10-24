-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveCharacterHalfPlusEpsilonFamily.Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.PrimitiveCharacterHalfPlusEpsilonFamily.Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:95de3c3746bfc57b0f382a7c/workspace/lib/Surface/Core/DirichletGRH/Assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.PrimitiveFamily
public import Surface.Core.DirichletGRH.ExplicitFormula
import Mathlib.Tactic

/-!
# Primitive-character family assembly

This module assembles character-local results into the Dirichlet family.
The global equivalence is conditional on explicit Mellin and
explicit-formula interfaces for every primitive character.  Functional
equation reflection is a direct theorem over mathlib's normalization.  No
inhabitant of `DirichletGRH` is constructed.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveCharacterHalfPlusEpsilonFamily.Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Pointwise half-plus-epsilon estimates for every primitive character.
The constants remain character-dependent. -/
@[expose]
def PrimitiveCharacterHalfPlusEpsilonFamily : Prop :=
  ∀ (q : ℕ) (hq : 0 < q),
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    ∀ χ : DirichletCharacter ℂ q,
      DirichletCharacter.IsPrimitive χ →
        CenteredTwistedPsiHalfPlusEpsilon χ

/-- Stronger hybrid-uniform estimate.  This is intentionally a separate
predicate and is not definitionally identified with `DirichletGRH`. -/
@[expose]
def UniformHybridDirichletHalfPlusEpsilon : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
          ∀ x : ℕ, 2 ≤ x →
            ‖centeredTwistedPsi χ x‖ ≤
              C * Real.rpow ((q * x : ℕ) : ℝ) ε * Real.sqrt (x : ℝ)

/-- Characterwise analytic squares turn the pointwise centered estimate into
Dirichlet GRH. -/
@[surface_novel, surface_interface]
theorem primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
    (hFamily : PrimitiveCharacterHalfPlusEpsilonFamily) :
    DirichletGRH := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  exact centeredTwistedPsiHalfPlusEpsilon_implies_grh_of_mellinInterface
    χ hPrimitive
    (hMellin q hq χ hPrimitive)
    (hFamily q hq χ hPrimitive)

/-- The checked explicit-formula endpoint gives the pointwise centered
family under Dirichlet GRH. -/
@[surface_novel, surface_interface]
theorem dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
    (hExplicit :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            ∃ square : PrimitiveExplicitFormulaSquare χ,
              PrimitiveExplicitFormulaBounds square)
    (hGRH : DirichletGRH) :
    PrimitiveCharacterHalfPlusEpsilonFamily := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  obtain ⟨square, hBounds⟩ := hExplicit q hq χ hPrimitive
  exact grh_implies_centeredTwistedPsiHalfPlusEpsilon square hBounds
    (hGRH q hq χ hPrimitive)

/-- Conditional full family equivalence.  Every analytic dependency appears
as an explicit argument; the theorem does not postulate a global square. -/
@[surface_novel, surface_interface]
theorem dirichletGRH_iff_halfPlusEpsilonFamily
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
    (hExplicit :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            ∃ square : PrimitiveExplicitFormulaSquare χ,
              PrimitiveExplicitFormulaBounds square) :
    DirichletGRH ↔ PrimitiveCharacterHalfPlusEpsilonFamily := by
  constructor
  · exact dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
      hExplicit
  · exact primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
      hMellin

end

end Surface.Core.DirichletGRH
