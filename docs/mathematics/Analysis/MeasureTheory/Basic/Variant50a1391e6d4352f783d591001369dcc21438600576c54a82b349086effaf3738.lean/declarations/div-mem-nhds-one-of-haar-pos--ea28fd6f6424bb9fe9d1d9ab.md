# div_mem_nhds_one_of_haar_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b35c1b-846e-9d35-b131-13f6fd83cd14",
  "kind": "theorem",
  "lexical_name": "div_mem_nhds_one_of_haar_pos",
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
  "slug": "div-mem-nhds-one-of-haar-pos--ea28fd6f6424bb9fe9d1d9ab",
  "source": {
    "blob": "c9c997c21c09b5ae81fc02d229959045b3f34503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 762,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea28fd6f6424bb9fe9d1d9abaa7a4e5d2c5234d7a88ec95e6daf4f80a9d19864",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b35c1b-846e-9d35-b131-13f6fd83cd14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_mem_nhds_one_of_haar_pos (μ : Measure G) [IsHaarMeasure μ] [LocallyCompactSpace G]
    (E : Set G) (hE : MeasurableSet E) (hEpos : 0 < μ E) : E / E ∈ 𝓝 (1 : G) := by
  /- For any regular measure `μ` and set `E` of positive measure, we can find a compact set `K` of
       positive measure inside `E`. Further, for any outer regular measure `μ` there exists an open
       set `U` containing `K` with measure arbitrarily close to `K` (here `μ U < 2 * μ K` suffices).
       Then, we can pick an open neighborhood of `1`, say `V` such that such that `V * K` is
       contained in `U`. Now note that for any `v` in `V`, the sets `K` and `{v} * K` can not be
       disjoint because they are both of measure `μ K` (since `μ` is left regular) and also
       contained in `U`, yet we have that `μ U < 2 * μ K`. This show that `K / K` contains the
       neighborhood `V` of `1`, and therefore that it is itself such a neighborhood. -/
  obtain ⟨L, hL, hLE, hLpos, hLtop⟩ : ∃ L : Set G, MeasurableSet L ∧ L ⊆ E ∧ 0 < μ L ∧ μ L < ∞ :=
    exists_subset_measure_lt_top hE hEpos
  obtain ⟨K, hKL, hK, hKpos⟩ : ∃ (K : Set G), K ⊆ L ∧ IsCompact K ∧ 0 < μ K :=
    MeasurableSet.exists_lt_isCompact_of_ne_top hL (ne_of_lt hLtop) hLpos
  have hKtop : μ K ≠ ∞ := by
    apply ne_top_of_le_ne_top (ne_of_lt hLtop)
    apply measure_mono hKL
  obtain ⟨U, hUK, hU, hμUK⟩ : ∃ (U : Set G), U ⊇ K ∧ IsOpen U ∧ μ U < μ K + μ K :=
    Set.exists_isOpen_lt_add K hKtop hKpos.ne'
  obtain ⟨V, hV1, hVKU⟩ : ∃ V ∈ 𝓝 (1 : G), V * K ⊆ U :=
    compact_open_separated_mul_left hK hU hUK
  have hv : ∀ v : G, v ∈ V → ¬Disjoint ({v} * K) K := by
    intro v hv hKv
    have hKvsub : {v} * K ∪ K ⊆ U := by
      apply Set.union_subset _ hUK
      apply _root_.subset_trans _ hVKU
      apply Set.mul_subset_mul _ (Set.Subset.refl K)
      simp only [Set.singleton_subset_iff, hv]
    replace hKvsub := @measure_mono _ _ μ _ _ hKvsub
    have hcontr := lt_of_le_of_lt hKvsub hμUK
    rw [measure_union hKv (IsCompact.measurableSet hK)] at hcontr
    have hKtranslate : μ ({v} * K) = μ K := by
      simp only [singleton_mul, image_mul_left, measure_preimage_mul]
    rw [hKtranslate, lt_self_iff_false] at hcontr
    assumption
  suffices V ⊆ E / E from Filter.mem_of_superset hV1 this
  intro v hvV
  obtain ⟨x, hxK, hxvK⟩ : ∃ x : G, x ∈ {v} * K ∧ x ∈ K := Set.not_disjoint_iff.1 (hv v hvV)
  refine' ⟨x, v⁻¹ * x, hLE (hKL hxvK), _, _⟩
  · apply hKL.trans hLE
    simpa only [singleton_mul, image_mul_left, mem_preimage] using hxK
  · simp only [div_eq_iff_eq_mul, ← mul_assoc, mul_right_inv, one_mul]
#align measure_theory.measure.div_mem_nhds_one_of_haar_pos MeasureTheory.Measure.div_mem_nhds_one_of_haar_pos
#align measure_theory.measure.sub_mem_nhds_zero_of_add_haar_pos MeasureTheory.Measure.sub_mem_nhds_zero_of_addHaar_pos

end SecondCountable

end Group

section CommGroup

variable {G : Type*} [CommGroup G] [TopologicalSpace G] [TopologicalGroup G] [T2Space G]
  [MeasurableSpace G] [BorelSpace G] [SecondCountableTopology G] (μ : Measure G) [IsHaarMeasure μ]

/-- Any Haar measure is invariant under inversion in an abelian group. -/
@[to_additive "Any additive Haar measure is invariant under negation in an abelian group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c997c21c09b5ae81fc02d229959045b3f34503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
