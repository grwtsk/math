# binaryCoproductCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b8d23a9abffb0e02cd486f6a06a3f07032b34a26216c71797987d51e62c86b",
  "kind": "def",
  "lexical_name": "binaryCoproductCocone",
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
  "slug": "binarycoproductcocone--b644bee0bf2686055a7572b1",
  "source": {
    "blob": "ae5f6933d50835813059f1b3b61dd118236aa49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b644bee0bf2686055a7572b15c85ae868792d8a9af08a879fe87a7e0cbc3fb2e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b8d23a9abffb0e02cd486f6a06a3f07032b34a26216c71797987d51e62c86b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryCoproductCocone (X Y : Type u) : Cocone (pair X Y) :=
  BinaryCofan.mk Sum.inl Sum.inr

/-- The sum type `X ⊕ Y` is a binary coproduct for `X` and `Y`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5f6933d50835813059f1b3b61dd118236aa49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
