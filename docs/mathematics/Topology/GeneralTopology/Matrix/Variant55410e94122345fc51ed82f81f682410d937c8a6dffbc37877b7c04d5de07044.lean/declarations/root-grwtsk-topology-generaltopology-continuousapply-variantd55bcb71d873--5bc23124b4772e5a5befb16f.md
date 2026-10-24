# _root_.GRWTSK.Topology.GeneralTopology.ContinuousApply.Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.Continuous.specialLinearGroup_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b05d2a4a-6a32-c013-7449-952262f9619a",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousApply.Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.Continuous.specialLinearGroup_map",
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
  "slug": "root-grwtsk-topology-generaltopology-continuousapply-variantd55bcb71d873--5bc23124b4772e5a5befb16f",
  "source": {
    "blob": "6b34c7c137126a28c4a6ed9c414feb26d8479d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc23124b4772e5a5befb16fb9b0881387296c3d643819d9c2838db2f434c444",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05d2a4a-6a32-c013-7449-952262f9619a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.ContinuousApply.Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.Continuous.specialLinearGroup_map (hf : Continuous f) :
    Continuous (map (n := n) f) := by
  refine IsInducing.subtypeVal.continuous_iff.mpr ?_
  exact (continuous_id.matrix_map hf).comp continuous_subtype_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b34c7c137126a28c4a6ed9c414feb26d8479d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
