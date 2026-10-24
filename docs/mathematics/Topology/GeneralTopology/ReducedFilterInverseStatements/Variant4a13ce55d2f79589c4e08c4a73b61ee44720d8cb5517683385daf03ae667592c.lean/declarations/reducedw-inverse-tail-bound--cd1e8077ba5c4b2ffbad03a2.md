# reducedW_inverse_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ba9b390525e754ac1b6e12b212f1b48a3b13dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f37cc35-28d0-042a-88ed-6c76e30e40cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4dccf57-8fd2-95f9-2658-aea80a37a0ff",
  "kind": "theorem",
  "lexical_name": "reducedW_inverse_tail_bound",
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
  "slug": "reducedw-inverse-tail-bound--cd1e8077ba5c4b2ffbad03a2",
  "source": {
    "blob": "97ba9b390525e754ac1b6e12b212f1b48a3b13dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd1e8077ba5c4b2ffbad03a2609970d5610fcc62ef0e5a0cc0e3467a30a34afe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4dccf57-8fd2-95f9-2658-aea80a37a0ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedW_inverse_tail_bound (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060 / (1 - Real.exp (-2 * ε))) ≤ ‖w‖) :
    ‖(reducedW w)⁻¹‖ ≤
      (Real.sqrt (45056/1105 : ℝ) / (192 * (1 - Real.exp (-2*ε)))) * ‖w‖^4 := by
  have hb := reducedW_tail_lower ε hε w hw hr
  have hq := sourceTailGap_pos ε hε
  have hrpos : 0 < ‖w‖ := lt_of_lt_of_le zero_lt_one ((le_max_left _ _).trans hr)
  have hS : 0 < Real.sqrt (45056/1105 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hleft : 0 < 192 * (1 - Real.exp (-2*ε)) /
      (Real.sqrt (45056/1105 : ℝ) * ‖w‖^4) := by positivity
  rw [norm_inv]
  calc
    _ ≤ (192 * (1 - Real.exp (-2*ε)) /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^4))⁻¹ := inv_anti₀ hleft hb
    _ = _ := by rw [inv_div]; ring

/-- Every positive inward half-plane has a genuine source-only fourth-power inverse bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReducedFilterInverseStatements/Variant4a13ce55d2f79589c4e08c4a73b61ee44720d8cb5517683385daf03ae667592c.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ba9b390525e754ac1b6e12b212f1b48a3b13dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
