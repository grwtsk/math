# measure_toMeasurable_inter_of_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9aff6da0a146029080804678d1230413d44bca3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d41fd8a-9ff6-7776-ac18-5127df4d4564",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae8adb85-75de-cdbe-df80-d816479eaaa0",
  "kind": "theorem",
  "lexical_name": "measure_toMeasurable_inter_of_sum",
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
  "slug": "measure-tomeasurable-inter-of-sum--7ae234522325e1e20f481e3e",
  "source": {
    "blob": "9aff6da0a146029080804678d1230413d44bca3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 318,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae234522325e1e20f481e3e3dab920ae7d13b4155e7e675e8999b91db824580",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae8adb85-75de-cdbe-df80-d816479eaaa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_toMeasurable_inter_of_sum {s : Set α} (hs : MeasurableSet s) {t : Set α}
    {m : ℕ → Measure α} (hv : ∀ n, m n t ≠ ∞) (hμ : μ = sum m) :
    μ (toMeasurable μ t ∩ s) = μ (t ∩ s) := by
  -- we show that there is a measurable superset of `t` satisfying the conclusion for any
  -- measurable set `s`. It is built for each measure `mₙ` using `toMeasurable`
  -- (which is well behaved for finite measure sets thanks to `measure_toMeasurable_inter`), and
  -- then taking the intersection over `n`.
  have A : ∃ t', t' ⊇ t ∧ MeasurableSet t' ∧ ∀ u, MeasurableSet u → μ (t' ∩ u) = μ (t ∩ u) := by
    let w n := toMeasurable (m n) t
    have T : t ⊆ ⋂ n, w n := subset_iInter (fun i ↦ subset_toMeasurable (m i) t)
    have M : MeasurableSet (⋂ n, w n) :=
      MeasurableSet.iInter (fun i ↦ measurableSet_toMeasurable (m i) t)
    refine ⟨⋂ n, w n, T, M, fun u hu ↦ ?_⟩
    refine le_antisymm ?_ (by gcongr)
    rw [hμ, sum_apply _ (M.inter hu)]
    apply le_trans _ (le_sum_apply _ _)
    apply ENNReal.tsum_le_tsum (fun i ↦ ?_)
    calc
    m i ((⋂ n, w n) ∩ u) ≤ m i (w i ∩ u) := by gcongr; apply iInter_subset
    _ = m i (t ∩ u) := measure_toMeasurable_inter hu (hv i)
  -- thanks to the definition of `toMeasurable`, the previous property will also be shared
  -- by `toMeasurable μ t`, which is enough to conclude the proof.
  rw [toMeasurable]
  split_ifs with ht
  · apply measure_congr
    exact ae_eq_set_inter ht.choose_spec.2.2 (ae_eq_refl _)
  · exact A.choose_spec.2.2 s hs

/-- If a set `t` is covered by a countable family of finite measure sets, then its measurable
superset `toMeasurable μ t` (which has the same measure as `t`) satisfies,
for any measurable set `s`, the equality `μ (toMeasurable μ t ∩ s) = μ (t ∩ s)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aff6da0a146029080804678d1230413d44bca3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
