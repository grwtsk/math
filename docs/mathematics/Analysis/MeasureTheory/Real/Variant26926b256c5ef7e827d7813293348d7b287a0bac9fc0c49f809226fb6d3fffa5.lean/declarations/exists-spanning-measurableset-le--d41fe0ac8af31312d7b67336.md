# exists_spanning_measurableSet_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:494e917e-c608-b6df-4a13-f740d85e32b9",
  "kind": "theorem",
  "lexical_name": "exists_spanning_measurableSet_le",
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
  "slug": "exists-spanning-measurableset-le--d41fe0ac8af31312d7b67336",
  "source": {
    "blob": "8a25633b4775782565ba768b78967f5aa0ab171d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 546,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d41fe0ac8af31312d7b67336d75a9664314bf3ebe64acd8f6f8a0bc64fdaecbf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494e917e-c608-b6df-4a13-f740d85e32b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_spanning_measurableSet_le {f : α → ℝ≥0} (hf : Measurable f) (μ : Measure α)
    [SigmaFinite μ] :
    ∃ s : ℕ → Set α,
      (∀ n, MeasurableSet (s n) ∧ μ (s n) < ∞ ∧ ∀ x ∈ s n, f x ≤ n) ∧
      ⋃ i, s i = Set.univ := by
  let sigma_finite_sets := spanningSets μ
  let norm_sets := fun n : ℕ => { x | f x ≤ n }
  have norm_sets_spanning : ⋃ n, norm_sets n = Set.univ := by
    ext1 x
    simp only [Set.mem_iUnion, Set.mem_setOf_eq, Set.mem_univ, iff_true]
    exact exists_nat_ge (f x)
  let sets n := sigma_finite_sets n ∩ norm_sets n
  have h_meas : ∀ n, MeasurableSet (sets n) := by
    refine fun n => MeasurableSet.inter ?_ ?_
    · exact measurableSet_spanningSets μ n
    · exact hf measurableSet_Iic
  have h_finite : ∀ n, μ (sets n) < ∞ := by
    refine fun n => (measure_mono Set.inter_subset_left).trans_lt ?_
    exact measure_spanningSets_lt_top μ n
  refine ⟨sets, fun n => ⟨h_meas n, h_finite n, ?_⟩, ?_⟩
  · exact fun x hx => hx.2
  · have :
      ⋃ i, sigma_finite_sets i ∩ norm_sets i = (⋃ i, sigma_finite_sets i) ∩ ⋃ i, norm_sets i := by
      refine Set.iUnion_inter_of_monotone (monotone_spanningSets μ) fun i j hij x => ?_
      simp only [norm_sets, Set.mem_setOf_eq]
      refine fun hif => hif.trans ?_
      exact mod_cast hij
    rw [this, norm_sets_spanning, iUnion_spanningSets μ, Set.inter_univ]

variable (μ : Measure ℝ) [IsFiniteMeasureOnCompacts μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a25633b4775782565ba768b78967f5aa0ab171d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
