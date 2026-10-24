# vectorMeasure_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:077eebf2-e552-5ca0-501a-07277324352d",
  "kind": "theorem",
  "lexical_name": "vectorMeasure_Iic",
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
  "slug": "vectormeasure-iic--93ceb324e328f2218e598e56",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 243,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ceb324e328f2218e598e56a23c5ed3d3d4f16d6ef8c4b4ab5ba25a47227af1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:077eebf2-e552-5ca0-501a-07277324352d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem vectorMeasure_Iic (hf : BoundedVariationOn f univ) (a : α) :
    hf.vectorMeasure (Iic a) = f.rightLim a - limUnder atBot f := by
  have : Nonempty α := ⟨a⟩
  have hlim : Tendsto f atBot (𝓝 (limUnder atBot f)) := hf.tendsto_atBot_limUnder
  obtain ⟨u, u_anti, hu⟩ : ∃ u, Antitone u ∧ Tendsto u atTop atBot :=
    Filter.exists_seq_antitone_tendsto_atTop_atBot α
  have A : Tendsto (fun n ↦ hf.vectorMeasure (Icc (u n) a)) atTop
      (𝓝 (hf.vectorMeasure (Iic a))) := by
    have : Iic a = ⋃ n, Icc (u n) a := by
      apply le_antisymm ?_ (by simp [Icc_subset_Iic_self])
      intro x (hx : x ≤ a)
      simpa [hx] using (hu.eventually (Iic_mem_atBot x)).exists
    rw [this]
    exact hf.vectorMeasure.tendsto_vectorMeasure_iUnion_atTop_nat (s := fun n ↦ Icc (u n) a)
      (fun i j hij x hx ↦ by grind [Antitone]) (fun i ↦ measurableSet_Icc)
  have B : Tendsto (fun n ↦ hf.vectorMeasure (Icc (u n) a)) atTop
      (𝓝 (f.rightLim a - limUnder atBot f)) := by
    have : (fun n ↦ f.rightLim a - f.leftLim (u n)) =ᶠ[atTop]
        (fun n ↦ hf.vectorMeasure (Icc (u n) a)) := by
      have : ∀ᶠ n in atTop, u n ≤ a := by
        simp only [tendsto_atBot, eventually_atTop] at hu
        simp [hu]
      filter_upwards [this] with n hn using by rw [hf.vectorMeasure_Icc hn]
    apply Tendsto.congr' this
    apply Tendsto.sub tendsto_const_nhds
    exact (tendsto_leftLim_atBot_of_tendsto hf.tendsto_atBot_limUnder).comp hu
  exact tendsto_nhds_unique A B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
