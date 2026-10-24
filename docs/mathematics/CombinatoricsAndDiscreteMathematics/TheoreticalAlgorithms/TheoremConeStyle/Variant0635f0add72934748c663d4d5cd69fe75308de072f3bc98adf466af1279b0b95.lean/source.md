# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremConeStyle.Variant0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51ba7f76f44370161ed96052ca636ac6901cd0cd` · SHA-256 `0635f0add72934748c663d4d5cd69fe75308de072f3bc98adf466af1279b0b95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace AST

/-!
# Theorem-cone style metadata

This module records Annals-style presentation metadata for theorem pages.  It is
not theorem authority, is not an AST export fixture, and is not a major theorem
gate.
-/

/-- Public theorem-cone identifiers used by style and page audits. -/
inductive TheoremConeId where
  | bsd
  | rhHilbertTrace
  | prismaticComparison
  | kakeyaOrientedFlatness
  | analyticPDE
  | ricciFlow
  | finiteOSHomology
  | finiteHilbertSpectralConvergence
  | booleanFiniteInfrastructure
  | sharedInfrastructure
deriving DecidableEq, Repr

/-- Metadata for an Annals-style theorem page. -/
structure AnnalsTheoremPage where
  cone : TheoremConeId
  publicName : String
  statementName : String
  minimalImports : List String
  hardInputs : List String
  certificateInputs : List String
  forbiddenImports : List String
  notClaimed : List String
  assumptionBudget : List String
  proofBoundary : String
deriving Repr

/-- A theorem page has an exact named statement. -/
def AnnalsTheoremPage.hasExactStatement
    (P : AnnalsTheoremPage) : Prop :=
  P.statementName ≠ ""

/-- A theorem page has an explicit non-claim boundary. -/
def AnnalsTheoremPage.hasNonclaimBoundary
    (P : AnnalsTheoremPage) : Prop :=
  P.notClaimed ≠ []

/-- Referee-style theorem pages expose the exact statement and non-claim boundary. -/
theorem AnnalsTheoremPage.refereeStyle_of_fields
    (P : AnnalsTheoremPage)
    (hStmt : P.hasExactStatement)
    (hBoundary : P.hasNonclaimBoundary) :
    P.hasExactStatement ∧ P.hasNonclaimBoundary := by
  exact ⟨hStmt, hBoundary⟩

end AST
end Surface
```
