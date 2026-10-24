# exp_square_rescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8098258657afc744b1d4062840f2feaa56ed659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b29c447-9b2f-b425-2dce-442dd55af740",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fa252a1-3750-f52b-9043-14c6616202c8",
  "kind": "theorem",
  "lexical_name": "exp_square_rescale",
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
  "slug": "exp-square-rescale--92168930010ad5d756a6761f",
  "source": {
    "blob": "b8098258657afc744b1d4062840f2feaa56ed659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92168930010ad5d756a6761fb250b4dc3edd5ef5b4455bb27c149f3732b08e83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fa252a1-3750-f52b-9043-14c6616202c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_square_rescale (x u v : ℝ) :
    Real.exp (-2*x)*(Real.exp x*u-Real.exp (-x)*v)^2 =
      (u-Real.exp (-2*x)*v)^2 := by
  have he : Real.exp (-2*x) = Real.exp (-x)^2 := by
    rw [sq,← Real.exp_add]; congr 1; ring
  have hp : Real.exp (-x)*Real.exp x=1 := by rw [← Real.exp_add,neg_add_cancel,Real.exp_zero]
  rw [he,← mul_pow, mul_sub, ← mul_assoc, hp,one_mul]
  congr 2; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8098258657afc744b1d4062840f2feaa56ed659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
