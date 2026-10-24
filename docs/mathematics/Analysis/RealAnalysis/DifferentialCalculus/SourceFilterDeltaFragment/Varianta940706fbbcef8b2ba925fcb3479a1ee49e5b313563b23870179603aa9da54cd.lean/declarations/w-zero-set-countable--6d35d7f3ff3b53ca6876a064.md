# W_zero_set_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa0483f4-f53f-d600-2e81-fddc141fb836",
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
  "slug": "w-zero-set-countable--6d35d7f3ff3b53ca6876a064",
  "source": {
    "blob": "20a7425338693e08669620b86699386c9ab5d999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFragment/Varianta940706fbbcef8b2ba925fcb3479a1ee49e5b313563b23870179603aa9da54cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d35d7f3ff3b53ca6876a0648348977e8df6676209ff1b39f74d5d261bf20693",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFragment/Varianta940706fbbcef8b2ba925fcb3479a1ee49e5b313563b23870179603aa9da54cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa0483f4-f53f-d600-2e81-fddc141fb836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–40.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFragment/Varianta940706fbbcef8b2ba925fcb3479a1ee49e5b313563b23870179603aa9da54cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFragment/Varianta940706fbbcef8b2ba925fcb3479a1ee49e5b313563b23870179603aa9da54cd.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20a7425338693e08669620b86699386c9ab5d999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
