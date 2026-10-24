# reducedW_inverse_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f16bc7b788c7d762e47413c0965490c6277e777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75eacd66-8068-6984-72b7-f04d18f14e54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:316061d3-0e1b-1d70-19b2-7aed628f7a8e",
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
  "slug": "reducedw-inverse-tail-bound--32302ce6e73c85f30d2e8c10",
  "source": {
    "blob": "6f16bc7b788c7d762e47413c0965490c6277e777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32302ce6e73c85f30d2e8c107b45c070b148722a8a05d03913d80722bdb7a763",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:316061d3-0e1b-1d70-19b2-7aed628f7a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–180.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f16bc7b788c7d762e47413c0965490c6277e777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
