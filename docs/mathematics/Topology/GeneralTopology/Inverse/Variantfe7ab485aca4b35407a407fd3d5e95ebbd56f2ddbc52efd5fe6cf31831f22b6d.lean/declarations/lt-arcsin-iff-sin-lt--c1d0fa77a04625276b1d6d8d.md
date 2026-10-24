# lt_arcsin_iff_sin_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a0880f3315047038b503bbc3a27fd5a6c8e009",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53dfd2b8-a483-1117-974c-a432aed1b30a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a328ca3e-46d1-bd64-9be4-f3e6db863752",
  "kind": "theorem",
  "lexical_name": "lt_arcsin_iff_sin_lt",
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
  "slug": "lt-arcsin-iff-sin-lt--c1d0fa77a04625276b1d6d8d",
  "source": {
    "blob": "32a0880f3315047038b503bbc3a27fd5a6c8e009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d0fa77a04625276b1d6d8d2772f2e4b080bbd5d1a5b10c0d430e38049df4fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a328ca3e-46d1-bd64-9be4-f3e6db863752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_arcsin_iff_sin_lt {x y : ℝ} (hx : x ∈ Icc (-(π / 2)) (π / 2)) (hy : y ∈ Icc (-1 : ℝ) 1) :
    x < arcsin y ↔ sin x < y :=
  not_le.symm.trans <| (not_congr <| arcsin_le_iff_le_sin hy hx).trans not_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a0880f3315047038b503bbc3a27fd5a6c8e009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
