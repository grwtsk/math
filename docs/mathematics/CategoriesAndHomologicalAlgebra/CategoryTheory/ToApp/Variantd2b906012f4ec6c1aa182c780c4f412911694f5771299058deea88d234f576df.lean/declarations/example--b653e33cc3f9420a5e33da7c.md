# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c37d1f2f7e37726cf6029772edbec8a427d6c677ff09918d038f8f86aea8bc48",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--b653e33cc3f9420a5e33da7c",
  "source": {
    "blob": "6a4da3643397e5d3e8845059811dda56a45376b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 17,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantd2b906012f4ec6c1aa182c780c4f412911694f5771299058deea88d234f576df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b653e33cc3f9420a5e33da7c96395b6996d0efe51d64ca69aecd4002cc35c0dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantd2b906012f4ec6c1aa182c780c4f412911694f5771299058deea88d234f576df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c37d1f2f7e37726cf6029772edbec8a427d6c677ff09918d038f8f86aea8bc48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a b c : Cat} (f : a ⟶ b) {g h : b ⟶ c} (η : g ≅ h) (X : a) :
    η.hom.app (f.obj X) ≫ η.inv.app (f.obj X) = 𝟙 ((f ≫ g).obj X) :=
  whiskerLeft_hom_inv_app f η X

@[to_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantd2b906012f4ec6c1aa182c780c4f412911694f5771299058deea88d234f576df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantd2b906012f4ec6c1aa182c780c4f412911694f5771299058deea88d234f576df.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a4da3643397e5d3e8845059811dda56a45376b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
