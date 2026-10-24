# exists_isSigmaFiniteSet_measure_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b3d651280d40645073ff1f346a34618418eb756",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e161f513-0293-97ff-c0a4-8b64d0da9f3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df84c407-fff8-bfc6-0fda-c1282842d091",
  "kind": "lemma",
  "lexical_name": "exists_isSigmaFiniteSet_measure_ge",
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
  "slug": "exists-issigmafiniteset-measure-ge--ac1c07ea048d990d6a31a354",
  "source": {
    "blob": "5b3d651280d40645073ff1f346a34618418eb756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 91,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac1c07ea048d990d6a31a35458fc705c8493db113563e05ba5e198867a7184a7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df84c407-fff8-bfc6-0fda-c1282842d091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isSigmaFiniteSet_measure_ge (μ ν : Measure α) [IsFiniteMeasure ν] (n : ℕ) :
    ∃ t, MeasurableSet t ∧ SigmaFinite (μ.restrict t)
      ∧ (⨆ (s) (_ : MeasurableSet s) (_ : SigmaFinite (μ.restrict s)), ν s) - 1/n ≤ ν t := by
  by_cases hC_lt : 1/n < ⨆ (s) (_ : MeasurableSet s) (_ : SigmaFinite (μ.restrict s)), ν s
  · have h_lt_top : ⨆ (s) (_ : MeasurableSet s) (_ : SigmaFinite (μ.restrict s)), ν s < ∞ := by
      refine (?_ : ⨆ (s) (_ : MeasurableSet s)
        (_ : SigmaFinite (μ.restrict s)), ν s ≤ ν Set.univ).trans_lt (measure_lt_top _ _)
      refine iSup_le (fun s ↦ ?_)
      exact iSup_le (fun _ ↦ iSup_le (fun _ ↦ measure_mono (Set.subset_univ s)))
    obtain ⟨t, ht⟩ := exists_lt_of_lt_ciSup
      (ENNReal.sub_lt_self h_lt_top.ne (ne_zero_of_lt hC_lt) (by simp) :
          (⨆ (s) (_ : MeasurableSet s) (_ : SigmaFinite (μ.restrict s)), ν s) - 1/n
        < ⨆ (s) (_ : MeasurableSet s) (_ : SigmaFinite (μ.restrict s)), ν s)
    have ht_meas : MeasurableSet t := by
      by_contra h_notMem
      simp only [h_notMem] at ht
      simp at ht
    have ht_mem : SigmaFinite (μ.restrict t) := by
      by_contra h_notMem
      simp only [h_notMem] at ht
      simp at ht
    refine ⟨t, ht_meas, ht_mem, ?_⟩
    simp only [ht_meas, ht_mem, iSup_true] at ht
    exact ht.le
  · refine ⟨∅, MeasurableSet.empty, by rw [Measure.restrict_empty]; infer_instance, ?_⟩
    rw [tsub_eq_zero_of_le (not_lt.mp hC_lt)]
    exact zero_le'

/-- A measurable set such that `μ.restrict (μ.sigmaFiniteSetGE ν n)` is sigma-finite and
for `C` the supremum of `ν s` over all measurable sets `s` with `μ.restrict s` sigma-finite,
`ν (μ.sigmaFiniteSetGE ν n) ≥ C - 1/n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3d651280d40645073ff1f346a34618418eb756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
