# Continuous.matrix_fromBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13c038a9628a9a641cd8dff30d79c52506d2b847",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6854b389a5734ec4122c7d4509efd55c3e9ebc6bbc100c912bf565dcd53e09d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f19acaf9-00de-a6a3-e695-447e92a60689",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7723b4f3-26fb-f8b7-5179-8a66b97c9381",
  "kind": "theorem",
  "lexical_name": "Continuous.matrix_fromBlocks",
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
  "slug": "continuous-matrix-fromblocks--4cc4f63d406152c133ef0911",
  "source": {
    "blob": "13c038a9628a9a641cd8dff30d79c52506d2b847",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variantc6854b389a5734ec4122c7d4509efd55c3e9ebc6bbc100c912bf565dcd53e09d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc4f63d406152c133ef0911dd74827ac9f7bad90ce3ff3396eaa2a56ca5519d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variantc6854b389a5734ec4122c7d4509efd55c3e9ebc6bbc100c912bf565dcd53e09d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7723b4f3-26fb-f8b7-5179-8a66b97c9381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.matrix_fromBlocks {A : X → Matrix n l R} {B : X → Matrix n m R}
    {C : X → Matrix p l R} {D : X → Matrix p m R} (hA : Continuous A) (hB : Continuous B)
    (hC : Continuous C) (hD : Continuous D) :
    Continuous fun x => Matrix.fromBlocks (A x) (B x) (C x) (D x) :=
  continuous_matrix <| by
    rintro (i | i) (j | j) <;> refine Continuous.matrix_elem ?_ i j <;> assumption

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variantc6854b389a5734ec4122c7d4509efd55c3e9ebc6bbc100c912bf565dcd53e09d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variantc6854b389a5734ec4122c7d4509efd55c3e9ebc6bbc100c912bf565dcd53e09d.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c038a9628a9a641cd8dff30d79c52506d2b847` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
