# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variantfd8b09f86765413c02b34d5b17de4dcb230e485fd8583042a2ab7299c6b66801

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea306c06d65cca3f640c3b94120b16029cd1e802` · SHA-256 `fd8b09f86765413c02b34d5b17de4dcb230e485fd8583042a2ab7299c6b66801`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.PrimitiveFamily
public import Surface.Core.DirichletGRH.ExplicitFormula
import Mathlib.Tactic

/-!
# Primitive-character family assembly

This module assembles character-local results into the Dirichlet family.
The half-plus-epsilon-family implication is direct.  The reverse implication,
and hence the displayed equivalence, remains conditional on explicit-formula
data for every primitive character.  No inhabitant of either the summatory
family or `DirichletGRH` is constructed.
-/

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
theorem primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH_of_mellinInterface
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

/-- Pure family elimination: any checked pointwise half-plus-epsilon-to-GRH
transformer lifts to the family statement.  This theorem contains no Mellin,
functional-equation, or explicit-formula premise of its own. -/
@[surface_novel, surface_published]
theorem dirichletGRH_of_pointwiseHalfPlusEpsilon
    (localTheorem :
      ∀ {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q),
        DirichletCharacter.IsPrimitive χ →
          CenteredTwistedPsiHalfPlusEpsilon χ →
            GRHForPrimitiveCharacter χ)
    (hFamily : PrimitiveCharacterHalfPlusEpsilonFamily) :
    DirichletGRH := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  exact localTheorem χ hPrimitive (hFamily q hq χ hPrimitive)

/-- Universal elimination of the pointwise half-plus-epsilon family.  The
analytic pointwise transformer is now a checked canonical theorem, so no
Mellin-interface family is required at this assembly boundary. -/
@[surface_novel, surface_published]
theorem primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
    (hFamily : PrimitiveCharacterHalfPlusEpsilonFamily) :
    DirichletGRH :=
  dirichletGRH_of_pointwiseHalfPlusEpsilon
    centeredTwistedPsiHalfPlusEpsilon_implies_grh
    hFamily

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

/-- Conditional full family equivalence.  The reverse implication is direct;
only the GRH-to-summatory direction still requires explicit-formula data. -/
@[surface_novel, surface_interface]
theorem dirichletGRH_iff_halfPlusEpsilonFamily
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

end

end Surface.Core.DirichletGRH
```
