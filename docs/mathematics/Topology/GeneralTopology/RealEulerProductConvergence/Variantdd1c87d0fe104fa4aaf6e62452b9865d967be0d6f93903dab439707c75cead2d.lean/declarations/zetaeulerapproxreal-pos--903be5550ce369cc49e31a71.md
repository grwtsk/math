# zetaEulerApproxReal_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d74038d9d3619175853a6536b0dc2f3ddd434bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a59be53-a74d-ab84-0f1a-72d67daa87bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6995257b-5eaa-a4d5-ac2c-6d6a5b42f0ac",
  "kind": "theorem",
  "lexical_name": "zetaEulerApproxReal_pos",
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
  "slug": "zetaeulerapproxreal-pos--903be5550ce369cc49e31a71",
  "source": {
    "blob": "d74038d9d3619175853a6536b0dc2f3ddd434bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:903be5550ce369cc49e31a71091f70ebf8a839b66dd3f3afc8e6215bf5a11e51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6995257b-5eaa-a4d5-ac2c-6d6a5b42f0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaEulerApproxReal_pos
    (σ : Real)
    (N : Nat) :
    0 < zetaEulerApproxReal σ N := by
  unfold zetaEulerApproxReal
  exact
    finiteZetaEulerProductReal_pos
      (by intro p hp; exact primesUpTo_pos hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealEulerProductConvergence/Variantdd1c87d0fe104fa4aaf6e62452b9865d967be0d6f93903dab439707c75cead2d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74038d9d3619175853a6536b0dc2f3ddd434bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
