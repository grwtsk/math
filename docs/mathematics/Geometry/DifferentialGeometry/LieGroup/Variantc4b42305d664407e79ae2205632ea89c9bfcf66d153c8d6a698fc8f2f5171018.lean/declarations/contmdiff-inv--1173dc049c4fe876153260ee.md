# contMDiff_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40169b985e87a6eb44d0be3486f306c8ec004a8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0d81ddb-3864-046f-99e4-b76552335c21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0499694-2bec-5e0c-5681-79822c5c7ca7",
  "kind": "theorem",
  "lexical_name": "contMDiff_inv",
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
  "slug": "contmdiff-inv--1173dc049c4fe876153260ee",
  "source": {
    "blob": "40169b985e87a6eb44d0be3486f306c8ec004a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1173dc049c4fe876153260eed7d9a7c51608ce6efa5a3cfeaa9542aa3282c3ee",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0499694-2bec-5e0c-5681-79822c5c7ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_inv : ContMDiff I I n fun x : G => x⁻¹ :=
  LieGroup.contMDiff_inv

@[deprecated (since := "2024-11-21")] alias smooth_inv := contMDiff_inv
@[deprecated (since := "2024-11-21")] alias smooth_neg := contMDiff_neg

include I n in
/-- A Lie group is a topological group. This is not an instance for technical reasons,
see note [Design choices about smooth algebraic structures]. -/
@[to_additive "An additive Lie group is an additive topological group. This is not an instance for
technical reasons, see note [Design choices about smooth algebraic structures]."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantc4b42305d664407e79ae2205632ea89c9bfcf66d153c8d6a698fc8f2f5171018.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40169b985e87a6eb44d0be3486f306c8ec004a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
