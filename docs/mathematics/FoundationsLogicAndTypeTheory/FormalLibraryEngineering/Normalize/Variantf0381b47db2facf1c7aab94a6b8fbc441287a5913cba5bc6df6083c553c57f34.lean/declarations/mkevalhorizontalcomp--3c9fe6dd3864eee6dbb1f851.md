# MkEvalHorizontalComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e6c32241e210d83e4d9ba5edddd91839a3ceea775ebec54440f0b2b936eefb9",
  "kind": "class",
  "lexical_name": "MkEvalHorizontalComp",
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
  "slug": "mkevalhorizontalcomp--3c9fe6dd3864eee6dbb1f851",
  "source": {
    "blob": "37eaf8843a2da9c5e1165c73d166ebc3db6d49d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 316,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c9fe6dd3864eee6dbb1f85185c70d5c10b241c003c9ff1406827295e93e3272",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e6c32241e210d83e4d9ba5edddd91839a3ceea775ebec54440f0b2b936eefb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MkEvalHorizontalComp (m : Type → Type) where
  /-- Evaluate `η ◫ θ` -/
  mkEvalHorizontalCompAuxOf (η : WhiskerRight) (θ : HorizontalComp) : m Expr
  /-- Evaluate `(η ◫ ηs) ◫ θ` -/
  mkEvalHorizontalCompAuxCons (η : WhiskerRight) (ηs θ : HorizontalComp)
    (ηθ η₁ ηθ₁ ηθ₂ : NormalExpr) (e_ηθ e_η₁ e_ηθ₁ e_ηθ₂ : Expr) : m Expr
  /-- Evaluate `(f ◁ η) ◫ θ` -/
  mkEvalHorizontalCompAux'Whisker (f : Atom₁) (η θ : WhiskerLeft)
    (ηθ ηθ₁ ηθ₂ ηθ₃ : NormalExpr) (e_ηθ e_ηθ₁ e_ηθ₂ e_ηθ₃ : Expr) : m Expr
  /-- Evaluate `η ◫ (f ◁ θ)` -/
  mkEvalHorizontalCompAux'OfWhisker (f : Atom₁) (η : HorizontalComp) (θ : WhiskerLeft)
    (η₁ ηθ ηθ₁ ηθ₂ : NormalExpr) (e_ηθ e_η₁ e_ηθ₁ e_ηθ₂ : Expr) : m Expr
  /-- Evaluate `α ◫ β` -/
  mkEvalHorizontalCompNilNil (α β : Structural) : m Expr
  /-- Evaluate `α ◫ (β ≫ η ≫ ηs)` -/
  mkEvalHorizontalCompNilCons (α β : Structural) (η : WhiskerLeft)
    (ηs η₁ ηs₁ η₂ η₃ : NormalExpr) (e_η₁ e_ηs₁ e_η₂ e_η₃ : Expr) : m Expr
  /-- Evaluate `(α ≫ η ≫ ηs) ◫ β` -/
  mkEvalHorizontalCompConsNil (α β : Structural) (η : WhiskerLeft) (ηs : NormalExpr)
    (η₁ ηs₁ η₂ η₃ : NormalExpr) (e_η₁ e_ηs₁ e_η₂ e_η₃ : Expr) : m Expr
  /-- Evaluate `(α ≫ η ≫ ηs) ◫ (β ≫ θ ≫ θs)` -/
  mkEvalHorizontalCompConsCons (α β : Structural) (η θ : WhiskerLeft)
    (ηs θs ηθ ηθs ηθ₁ ηθ₂ : NormalExpr) (e_ηθ e_ηθs e_ηθ₁ e_ηθ₂ : Expr) : m Expr

/-- Evaluate the expression of a 2-morphism into a normalized form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37eaf8843a2da9c5e1165c73d166ebc3db6d49d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
