# toLinearMap_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6743409-b896-3e63-154f-8bdebb575b06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47a4d36d-a558-26e4-e455-ddca5b457659",
  "kind": "theorem",
  "lexical_name": "toLinearMap_eq_coe",
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
  "slug": "tolinearmap-eq-coe--bb9d7bd9a4f470dd2eb566f4",
  "source": {
    "blob": "2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb9d7bd9a4f470dd2eb566f4855636635b28bdb28a8b52d1dbf942bf95693282",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47a4d36d-a558-26e4-e455-ddca5b457659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearMap_eq_coe (f : A →ₗc[R] B) : f.toLinearMap = f :=
  rfl

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
