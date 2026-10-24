# Measure.MeasureDense.indicatorConstLp_subset_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5db612aa-d06b-763e-86c7-de8ab08f848d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e8874f7-f4c4-58ef-8f90-4bccb0c3e944",
  "kind": "theorem",
  "lexical_name": "Measure.MeasureDense.indicatorConstLp_subset_closure",
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
  "slug": "measure-measuredense-indicatorconstlp-subset-closure--7c8bfe4d8896c1f0dadfc01b",
  "source": {
    "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 137,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c8bfe4d8896c1f0dadfc01b002245f1f66a5f63867c2e09ccaca3ec4deeb219",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8874f7-f4c4-58ef-8f90-4bccb0c3e944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measure.MeasureDense.indicatorConstLp_subset_closure (h𝒜 : μ.MeasureDense 𝒜) (c : E) :
    {indicatorConstLp p hs hμs c | (s : Set X) (hs : MeasurableSet s) (hμs : μ s ≠ ∞)} ⊆
    closure {indicatorConstLp p (h𝒜.measurable s hs) hμs c |
      (s : Set X) (hs : s ∈ 𝒜) (hμs : μ s ≠ ∞)} := by
  obtain rfl | hc := eq_or_ne c 0
  · refine Subset.trans ?_ subset_closure
    rintro - ⟨s, ms, hμs, rfl⟩
    obtain ⟨t, ht, hμt⟩ := h𝒜.nonempty'
    refine ⟨t, ht, hμt, ?_⟩
    simp_rw [indicatorConstLp]
    simp
  · have p_pos : 0 < p := lt_of_lt_of_le (by simp) one_le_p.elim
    rintro - ⟨s, ms, hμs, rfl⟩
    refine Metric.mem_closure_iff.2 fun ε hε ↦ ?_
    have aux : 0 < (ε / ‖c‖) ^ p.toReal := rpow_pos_of_pos (div_pos hε (norm_pos_iff.2 hc)) _
    obtain ⟨t, ht, hμt, hμst⟩ := h𝒜.fin_meas_approx ms hμs ((ε / ‖c‖) ^ p.toReal) aux
    refine ⟨indicatorConstLp p (h𝒜.measurable t ht) hμt c,
      ⟨t, ht, hμt, rfl⟩, ?_⟩
    rw [dist_indicatorConstLp_eq_norm, norm_indicatorConstLp p_pos.ne.symm p_ne_top.elim]
    calc
      ‖c‖ * μ.real (s ∆ t) ^ (1 / p.toReal)
        < ‖c‖ * (ENNReal.ofReal ((ε / ‖c‖) ^ p.toReal)).toReal ^ (1 / p.toReal) := by
          have := toReal_pos p_pos.ne.symm p_ne_top.elim
          rw [measureReal_def]
          gcongr
          exact ofReal_ne_top
      _ = ε := by
        rw [toReal_ofReal (by positivity),
          one_div, Real.rpow_rpow_inv (by positivity) (toReal_pos p_pos.ne.symm p_ne_top.elim).ne',
          mul_div_cancel₀ _ (norm_ne_zero_iff.2 hc)]

/-- If a family of sets `𝒜` is measure-dense in `X`, then it is also the case for the sets in `𝒜`
with finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
