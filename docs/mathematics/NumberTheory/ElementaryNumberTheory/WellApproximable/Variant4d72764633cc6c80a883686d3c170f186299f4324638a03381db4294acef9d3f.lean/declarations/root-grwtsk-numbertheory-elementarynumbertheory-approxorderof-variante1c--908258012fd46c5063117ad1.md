# _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ApproxOrderOf.Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.NormedAddCommGroup.exists_norm_nsmul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0881ff9f-cdd0-8e4b-7bd1-3231b9c638dc",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ApproxOrderOf.Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.NormedAddCommGroup.exists_norm_nsmul_le",
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
  "slug": "root-grwtsk-numbertheory-elementarynumbertheory-approxorderof-variante1c--908258012fd46c5063117ad1",
  "source": {
    "blob": "f0c4d939f3efd9121a4f4ba6f06dbf553002a58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 350,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908258012fd46c5063117ad14163fec2b3d612456994e40c710332e3c00eb5d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0881ff9f-cdd0-8e4b-7bd1-3231b9c638dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ApproxOrderOf.Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.NormedAddCommGroup.exists_norm_nsmul_le {A : Type*}
    [NormedAddCommGroup A] [CompactSpace A] [ConnectedSpace A]
    [MeasurableSpace A] [BorelSpace A] {μ : Measure A} [μ.IsAddHaarMeasure]
    (ξ : A) {n : ℕ} (hn : 0 < n) (δ : ℝ) (hδ : μ univ ≤ (n + 1) • μ (closedBall (0 : A) (δ/2))) :
    ∃ j ∈ Icc 1 n, ‖j • ξ‖ ≤ δ := by
  have : IsFiniteMeasure μ := CompactSpace.isFiniteMeasure
  let B : Icc 0 n → Set A := fun j ↦ closedBall ((j : ℕ) • ξ) (δ/2)
  have hB : ∀ j, IsClosed (B j) := fun j ↦ isClosed_ball
  suffices : ¬ Pairwise (Disjoint on B)
  · obtain ⟨i, j, hij, x, hx⟩ := exists_lt_mem_inter_of_not_pairwise_disjoint this
    refine' ⟨j - i, ⟨le_tsub_of_add_le_left hij, _⟩, _⟩
    · simpa only [tsub_le_iff_right] using j.property.2.trans le_self_add
    · rw [sub_nsmul _ (Subtype.coe_le_coe.mpr hij.le), ← sub_eq_add_neg, ← dist_eq_norm]
      refine' (dist_triangle (↑j • ξ) x (↑i • ξ)).trans _
      linarith [mem_closedBall.mp hx.1, mem_closedBall'.mp hx.2]
  by_contra h
  apply hn.ne'
  have h' : ⋃ j, B j = univ := by
    rw [← (isClosed_iUnion hB).measure_eq_univ_iff_eq (μ := μ)]
    refine' le_antisymm (μ.mono (subset_univ _)) _
    simp_rw [measure_iUnion h (fun _ ↦ measurableSet_closedBall), tsum_fintype,
      μ.addHaar_closedBall_center, Finset.sum_const, Finset.card_univ, Nat.card_fintypeIcc,
      tsub_zero]
    exact hδ
  replace hδ : 0 ≤ δ/2 := by
    by_contra contra
    suffices : μ (closedBall 0 (δ/2)) = 0
    · apply isOpen_univ.measure_ne_zero μ univ_nonempty $ le_zero_iff.mp $ le_trans hδ _
      simp [this]
    rw [not_le, ← closedBall_eq_empty (x := (0 : A))] at contra
    simp [contra]
  have h'' : ∀ j, (B j).Nonempty := by intro j; rwa [nonempty_closedBall]
  simpa using subsingleton_of_disjoint_isClosed_iUnion_eq_univ h'' h hB h'

/-- **Dirichlet's approximation theorem**

See also `Real.exists_rat_abs_sub_le_and_den_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c4d939f3efd9121a4f4ba6f06dbf553002a58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
