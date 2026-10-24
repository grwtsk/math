# IsInvertedBy₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6c3dbc896b3b99f9ad233c5c1f2626ca546145ba91f353348a9a26a1c5c34d0",
  "kind": "def",
  "lexical_name": "IsInvertedBy₃",
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
  "slug": "isinvertedby--73aa3ff29ff26fefdb5a02d5",
  "source": {
    "blob": "7146d24b64d3e57af37c1ee4536c653fa1ceef10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73aa3ff29ff26fefdb5a02d5356f4cb37aff9a377eaf75fa0ee8a8532c43574c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6c3dbc896b3b99f9ad233c5c1f2626ca546145ba91f353348a9a26a1c5c34d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsInvertedBy₃ (W₁ : MorphismProperty C₁) (W₂ : MorphismProperty C₂)
    (W₃ : MorphismProperty C₃) (F : C₁ ⥤ C₂ ⥤ C₃ ⥤ E) : Prop :=
  (W₁.prod (W₂.prod W₃)).IsInvertedBy (currying₃.functor.obj F)

end MorphismProperty

namespace Localization

section

variable (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂) (L₃ : C₃ ⥤ D₃)

/-- Given functors `L₁ : C₁ ⥤ D₁`, `L₂ : C₂ ⥤ D₂`, `L₃ : C₃ ⥤ D₃`,
morphisms properties `W₁` on `C₁`, `W₂` on `C₂`, `W₃` on `C₃`, and
functors `F : C₁ ⥤ C₂ ⥤ C₃ ⥤ E` and `F' : D₁ ⥤ D₂ ⥤ D₃ ⥤ E`, we say
`Lifting₃ L₁ L₂ L₃ W₁ W₂ W₃ F F'` holds if `F` is induced by `F'`, up to an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7146d24b64d3e57af37c1ee4536c653fa1ceef10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
