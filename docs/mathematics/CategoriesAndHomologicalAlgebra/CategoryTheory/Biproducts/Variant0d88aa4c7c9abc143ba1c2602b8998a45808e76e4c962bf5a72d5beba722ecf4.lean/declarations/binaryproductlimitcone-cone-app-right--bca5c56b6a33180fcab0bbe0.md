# binaryProductLimitCone_cone_π_app_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9480fd6a89960d383da1407ca7a9efeb0b0edfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86c1749d-5d04-81b5-bc8d-ec6bf3c4448c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3323590d-9358-a8f2-389c-8721494c0cf2",
  "kind": "theorem",
  "lexical_name": "binaryProductLimitCone_cone_π_app_right",
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
  "slug": "binaryproductlimitcone-cone-app-right--bca5c56b6a33180fcab0bbe0",
  "source": {
    "blob": "d9480fd6a89960d383da1407ca7a9efeb0b0edfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bca5c56b6a33180fcab0bbe01b17c459780e59a6ed7b7413a763a1b8ead87f1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3323590d-9358-a8f2-389c-8721494c0cf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryProductLimitCone_cone_π_app_right (M N : ModuleCat.{v} R) :
    (binaryProductLimitCone M N).cone.π.app ⟨WalkingPair.right⟩ = LinearMap.snd R M N :=
  rfl
#align Module.binary_product_limit_cone_cone_π_app_right ModuleCat.binaryProductLimitCone_cone_π_app_right

/-- We verify that the biproduct in `ModuleCat R` is isomorphic to
the cartesian product of the underlying types:
-/
@[simps! hom_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant0d88aa4c7c9abc143ba1c2602b8998a45808e76e4c962bf5a72d5beba722ecf4.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9480fd6a89960d383da1407ca7a9efeb0b0edfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
