# W_zero_set_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b77464e992420e18375206e4327cf2bcb915d6ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e94f0a90-dbd8-acdd-3817-27e0bae48e1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ceebcf7-1cd6-50a5-92b3-ab74e0a0f015",
  "kind": "theorem",
  "lexical_name": "W_zero_set_countable",
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
  "slug": "w-zero-set-countable--7581834a383afcb219f12cf4",
  "source": {
    "blob": "b77464e992420e18375206e4327cf2bcb915d6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 419,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7581834a383afcb219f12cf44bda0c18638470480a4d95a70eee32f80f245a2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ceebcf7-1cd6-50a5-92b3-ab74e0a0f015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem W_zero_set_countable : {z : ℂ | W z = 0}.Countable := by
  have hW : W = fun z : ℂ => Complex.exp (-z) * (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := funext W_eq_bumpMoment
  have hd : Differentiable ℂ W := by
    rw [hW]
    intro z
    have hb := (bumpMoment_hasDerivAt 0 z).differentiableAt
    fun_prop
  have h0 : W 0 ≠ 0 := by
    simp [W, V_zero]
  have ha : AnalyticOnNhd ℂ W univ := fun z _ => hd.analyticAt z
  have hc : {z : ℂ | W z ≠ 0} ∈ codiscrete ℂ := by
    rcases ha.eqOn_zero_or_eventually_ne_zero_of_preconnected isPreconnected_univ with h | h
    · exact (h0 (h (mem_univ 0))).elim
    · exact h
  have hi := (mem_codiscrete'.mp hc).2
  have hcount := (HereditarilyLindelofSpace.isLindelof _).countable_of_isDiscrete hi
  simpa only [compl_ofPred, not_not] using hcount

/-- Boundary division by the actual source filter is valid almost everywhere
on the full real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77464e992420e18375206e4327cf2bcb915d6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
