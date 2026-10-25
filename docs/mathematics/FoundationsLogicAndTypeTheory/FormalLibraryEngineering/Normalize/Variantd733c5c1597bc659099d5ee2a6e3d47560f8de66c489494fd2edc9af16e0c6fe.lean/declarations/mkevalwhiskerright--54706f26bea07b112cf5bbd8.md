# MkEvalWhiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:126496314265457c4f16222ea5cc0d14e6ab9ec758d68ffe27f036dfda3dbda1",
  "kind": "class",
  "lexical_name": "MkEvalWhiskerRight",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "mkevalwhiskerright--54706f26bea07b112cf5bbd8",
  "source": {
    "blob": "b52b20a32d477352e861f8204c88e09c038fb198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54706f26bea07b112cf5bbd8514277c62237c1498c5438ae3f7c5ea41cc8ebcc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:126496314265457c4f16222ea5cc0d14e6ab9ec758d68ffe27f036dfda3dbda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MkEvalWhiskerRight (m : Type → Type) where
  /-- Evaluate `η ▷ f` -/
  mkEvalWhiskerRightAuxOf (η : WhiskerRight) (f : Atom₁) : m Expr
  /-- Evaluate `(η ◫ ηs) ▷ f` -/
  mkEvalWhiskerRightAuxCons (f : Atom₁) (η : WhiskerRight) (ηs : HorizontalComp)
    (ηs' η₁ η₂ η₃ : NormalExpr) (e_ηs' e_η₁ e_η₂ e_η₃ : Expr) : m Expr
  /-- Evaluate `α ▷ f` -/
  mkEvalWhiskerRightNil (α : Structural) (f : Mor₁) : m Expr
  /-- Evaluate ` (α ≫ η ≫ ηs) ▷ j` -/
  mkEvalWhiskerRightConsOfOf (f : Atom₁) (α : Structural) (η : HorizontalComp)
    (ηs ηs₁ η₁ η₂ η₃ : NormalExpr)
    (e_ηs₁ e_η₁ e_η₂ e_η₃ : Expr) : m Expr
  /-- Evaluate `(α ≫ (f ◁ η) ≫ ηs) ▷ g` -/
  mkEvalWhiskerRightConsWhisker (f : Atom₁) (g : Mor₁) (α : Structural) (η : WhiskerLeft)
    (ηs η₁ η₂ ηs₁ ηs₂ η₃ η₄ η₅ : NormalExpr) (e_η₁ e_η₂ e_ηs₁ e_ηs₂ e_η₃ e_η₄ e_η₅ : Expr) : m Expr
  /-- Evaluate `η ▷ (g ⊗ h)` -/
  mkEvalWhiskerRightComp (g h : Mor₁)
    (η η₁ η₂ η₃ η₄ : NormalExpr) (e_η₁ e_η₂ e_η₃ e_η₄ : Expr) : m Expr
  /-- Evaluate `η ▷ 𝟙 _` -/
  mkEvalWhiskerRightId (η η₁ η₂ : NormalExpr) (e_η₁ e_η₂ : Expr) : m Expr

/-- Evaluate the expression `η ◫ θ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52b20a32d477352e861f8204c88e09c038fb198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
