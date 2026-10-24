# truncLE'ToRestriction_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b648cb305d5c89e41b345509b5678524faebdf97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fb8c5ecbffc37174a1dc8b40cb4816ed32808e13a0f7e543e2b3abb2ec8f0d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65ec06a-842a-0e3d-f3ef-1d6f97a82161",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f5b5cea-0857-f5d2-2d98-de2f73f8f206",
  "kind": "lemma",
  "lexical_name": "truncLE'ToRestriction_naturality",
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
  "slug": "truncle-torestriction-naturality--a197d158b0a85a9876f47f41",
  "source": {
    "blob": "b648cb305d5c89e41b345509b5678524faebdf97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Variant8fb8c5ecbffc37174a1dc8b40cb4816ed32808e13a0f7e543e2b3abb2ec8f0d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a197d158b0a85a9876f47f41ea5c673e4e799593e2a879b27ac1fdccf36018d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Variant8fb8c5ecbffc37174a1dc8b40cb4816ed32808e13a0f7e543e2b3abb2ec8f0d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f5b5cea-0857-f5d2-2d98-de2f73f8f206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma truncLE'ToRestriction_naturality :
    truncLE'Map φ e ≫ L.truncLE'ToRestriction e =
      K.truncLE'ToRestriction e ≫ restrictionMap φ e :=
  (unopFunctor C c.symm).congr_map (congr_arg Quiver.Hom.op
    (restrictionToTruncGE'_naturality ((opFunctor C c').map φ.op) e.op))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Variant8fb8c5ecbffc37174a1dc8b40cb4816ed32808e13a0f7e543e2b3abb2ec8f0d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Variant8fb8c5ecbffc37174a1dc8b40cb4816ed32808e13a0f7e543e2b3abb2ec8f0d8.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b648cb305d5c89e41b345509b5678524faebdf97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
