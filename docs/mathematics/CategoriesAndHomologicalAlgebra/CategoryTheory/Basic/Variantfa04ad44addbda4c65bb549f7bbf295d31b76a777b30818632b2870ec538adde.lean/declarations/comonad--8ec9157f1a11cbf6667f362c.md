# Comonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4828c8991df5254ff3db9e2aa68dbad8d50e06b5a8744bbb5674f27ae70493cb",
  "kind": "structure",
  "lexical_name": "Comonad",
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
  "slug": "comonad--8ec9157f1a11cbf6667f362c",
  "source": {
    "blob": "ba9c1c2a89c744e6fb503f95b779ee299adf98ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ec9157f1a11cbf6667f362cb4ec927e3906310d7a7b14f62a38dac25706f2e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4828c8991df5254ff3db9e2aa68dbad8d50e06b5a8744bbb5674f27ae70493cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Comonad extends C ⥤ C where
  /-- The counit for the comonad. -/
  ε : toFunctor ⟶ 𝟭 _
  /-- The comultiplication for the comonad. -/
  δ : toFunctor ⟶ toFunctor ⋙ toFunctor
  coassoc : ∀ X, NatTrans.app δ _ ≫ toFunctor.map (δ.app X) = δ.app _ ≫ δ.app _ := by
    aesop_cat
  left_counit : ∀ X : C, δ.app X ≫ ε.app (toFunctor.obj X) = 𝟙 _ := by aesop_cat
  right_counit : ∀ X : C, δ.app X ≫ toFunctor.map (ε.app X) = 𝟙 _ := by aesop_cat

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9c1c2a89c744e6fb503f95b779ee299adf98ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
