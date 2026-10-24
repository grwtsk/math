# algebraMap_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09ce6d75b1213a4463e54799ddbb46656a81ccfc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 922,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbac27d23bd6648e9c7c1d22c7e70801315ce6bce275cee2689542c11f1cd0fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:284fbe64-6cac-0def-5be1-58faa7847e48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd6b605d-2e31-565f-131d-fb2356ed6f8a",
  "kind": "theorem",
  "lexical_name": "algebraMap_injective",
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
  "slug": "algebramap-injective--a5a2b209d3752a0abb21a115",
  "source": {
    "blob": "09ce6d75b1213a4463e54799ddbb46656a81ccfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 924,
    "line": 922,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quaternion/Variantcbac27d23bd6648e9c7c1d22c7e70801315ce6bce275cee2689542c11f1cd0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5a2b209d3752a0abb21a1150d3f3ef4a9ea37989cdeeb49761adcbcbff21273",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quaternion/Variantcbac27d23bd6648e9c7c1d22c7e70801315ce6bce275cee2689542c11f1cd0fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6b605d-2e31-565f-131d-fb2356ed6f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 922–924.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_injective : (algebraMap R ℍ[R] : _ → _).Injective :=
  QuaternionAlgebra.algebraMap_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quaternion/Variantcbac27d23bd6648e9c7c1d22c7e70801315ce6bce275cee2689542c11f1cd0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quaternion/Variantcbac27d23bd6648e9c7c1d22c7e70801315ce6bce275cee2689542c11f1cd0fe.lean#L922).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09ce6d75b1213a4463e54799ddbb46656a81ccfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
