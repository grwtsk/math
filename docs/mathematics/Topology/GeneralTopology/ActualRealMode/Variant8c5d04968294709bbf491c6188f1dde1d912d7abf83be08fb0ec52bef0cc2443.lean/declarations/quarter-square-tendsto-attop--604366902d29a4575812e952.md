# quarter_square_tendsto_atTop

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
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c699a364-fcf5-f371-91cc-1ac032b683ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23ad5dee-8d4e-c561-3edb-c4d93dd0eaf6",
  "kind": "theorem",
  "lexical_name": "quarter_square_tendsto_atTop",
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
  "slug": "quarter-square-tendsto-attop--604366902d29a4575812e952",
  "source": {
    "blob": "b8098258657afc744b1d4062840f2feaa56ed659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604366902d29a4575812e95201e2a56e8e8bac5c267d6b7796c842178181eff2",
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

Occurrence: `result:23ad5dee-8d4e-c561-3edb-c4d93dd0eaf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_square_tendsto_atTop :
    Tendsto (fun A : ℝ => normalizedSquare A (1/4)) atTop atTop := by
  have hg := exponential_scale_tendsto (1/4) (by norm_num)
  have hf := quarter_scaled_limit.pos_mul_atTop (by norm_num : (0 : ℝ) < 145178542080) hg
  apply Tendsto.congr' _ hf
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  have he : Real.exp (-A/2)*Real.exp (2*A*(1/4))=1 := by
    rw [← Real.exp_add,show -A/2+2*A*(1/4)=0 by ring,Real.exp_zero]
  calc
    _ = (A^9/A^9)*(Real.exp (-A/2)*Real.exp (2*A*(1/4)))*normalizedSquare A (1/4) := by ring
    _ = _ := by rw [div_self (pow_ne_zero 9 hA.ne'),he]; ring

/-- This generic adapter still requires an independently proved source remainder identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8098258657afc744b1d4062840f2feaa56ed659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
