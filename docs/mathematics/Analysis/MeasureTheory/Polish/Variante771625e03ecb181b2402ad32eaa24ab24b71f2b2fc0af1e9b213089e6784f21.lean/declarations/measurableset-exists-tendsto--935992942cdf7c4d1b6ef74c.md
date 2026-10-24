# measurableSet_exists_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36445ca6cf962ffb3c79fae649fc48eb7ace49ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 817,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45b5d06a-4a52-3236-8377-3d817a23a3da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9518fd1-b159-c839-c31a-7472e0f9337d",
  "kind": "theorem",
  "lexical_name": "measurableSet_exists_tendsto",
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
  "slug": "measurableset-exists-tendsto--935992942cdf7c4d1b6ef74c",
  "source": {
    "blob": "36445ca6cf962ffb3c79fae649fc48eb7ace49ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 848,
    "line": 817,
    "path": "GRWTSK/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:935992942cdf7c4d1b6ef74cc90e8557aa000608c0715486a6f5d4e05e07bafd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9518fd1-b159-c839-c31a-7472e0f9337d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 817–848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_exists_tendsto [hγ : OpensMeasurableSpace γ] [Countable ι] {l : Filter ι}
    [l.IsCountablyGenerated] {f : ι → β → γ} (hf : ∀ i, Measurable (f i)) :
    MeasurableSet { x | ∃ c, Tendsto (fun n => f n x) l (𝓝 c) } := by
  rcases l.eq_or_neBot with rfl | hl
  · simp
  letI := upgradePolishSpace γ
  rcases l.exists_antitone_basis with ⟨u, hu⟩
  simp_rw [← cauchy_map_iff_exists_tendsto]
  change MeasurableSet { x | _ ∧ _ }
  have :
    ∀ x,
      (map (fun i => f i x) l ×ˢ map (fun i => f i x) l).HasAntitoneBasis fun n =>
        ((fun i => f i x) '' u n) ×ˢ ((fun i => f i x) '' u n) :=
    fun x => hu.map.prod hu.map
  simp_rw [and_iff_right (hl.map _),
    Filter.HasBasis.le_basis_iff (this _).toHasBasis Metric.uniformity_basis_dist_inv_nat_succ,
    Set.setOf_forall]
  refine' MeasurableSet.biInter Set.countable_univ fun K _ => _
  simp_rw [Set.setOf_exists, true_and]
  refine' MeasurableSet.iUnion fun N => _
  simp_rw [prod_image_image_eq, image_subset_iff, prod_subset_iff, Set.setOf_forall]
  exact
    MeasurableSet.biInter (to_countable (u N)) fun i _ =>
      MeasurableSet.biInter (to_countable (u N)) fun j _ =>
        measurableSet_lt (Measurable.dist (hf i) (hf j)) measurable_const
#align measure_theory.measurable_set_exists_tendsto MeasureTheory.measurableSet_exists_tendsto

end MeasureTheory

/-! ### The Borel Isomorphism Theorem -/

-- Porting note: Move to topology/metric_space/polish when porting.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Polish/Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.lean#L817).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36445ca6cf962ffb3c79fae649fc48eb7ace49ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
