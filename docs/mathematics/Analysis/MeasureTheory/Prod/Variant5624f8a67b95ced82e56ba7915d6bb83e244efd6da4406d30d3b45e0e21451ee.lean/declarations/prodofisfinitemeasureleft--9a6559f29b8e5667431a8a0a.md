# prodOfIsFiniteMeasureLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:789b5bbdda787124926e0b9b4035061609f8fe4fa81ffa24ac3d6c7e435bd0e0",
  "kind": "def",
  "lexical_name": "prodOfIsFiniteMeasureLeft",
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
  "slug": "prodofisfinitemeasureleft--9a6559f29b8e5667431a8a0a",
  "source": {
    "blob": "ccbd4a15c5845619bac6d506fe64148062840dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 127,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a6559f29b8e5667431a8a0ac01519eb988872871c1a91eab1f9dbd99949d820",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:789b5bbdda787124926e0b9b4035061609f8fe4fa81ffa24ac3d6c7e435bd0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def prodOfIsFiniteMeasureLeft
    (μ : VectorMeasure X E) (ν : VectorMeasure Y F) (B : E →L[ℝ] F →L[ℝ] G)
    [IsFiniteMeasure μ.variation] :
    VectorMeasure (X × Y) G where
  measureOf' s := open scoped Classical in
    if MeasurableSet s then ∫ᵛ x, ν (Prod.mk x ⁻¹' s) ∂[B.flip; μ] else 0
  empty' := by simp
  not_measurable' := by simp +contextual
  m_iUnion' f f_meas f_disj := by
    simp only [f_meas, ↓reduceIte, implies_true, MeasurableSet.iUnion, preimage_iUnion,
      HasSum, SummationFilter.unconditional_filter]
    have A (a : Finset ℕ) : ∑ y ∈ a, ∫ᵛ x, ν (Prod.mk x ⁻¹' f y) ∂[B.flip; μ]
        = ∫ᵛ x, ∑ y ∈ a, ν (Prod.mk x ⁻¹' f y) ∂[B.flip; μ] := by
      rw [integral_finsetSum _ (fun i hi ↦ integrable_vectorMeasure_prodMk_left (f_meas i))]
    simp_rw [A]
    apply tendsto_integral_filter_of_dominated_convergence (bound := fun x ↦ ν.bound)
    · apply Eventually.of_forall (fun a ↦ ?_)
      apply StronglyMeasurable.aestronglyMeasurable
      apply Finset.stronglyMeasurable_fun_sum _ (fun i hi ↦ ?_)
      apply stronglyMeasurable_vectorMeasure_prodMk_left (f_meas i)
    · filter_upwards with a
      filter_upwards with x
      rw [← VectorMeasure.of_biUnion_finset]
      · apply norm_apply_le_bound
      · exact fun i hi j hj hij ↦ (f_disj hij).preimage _
      · exact fun i hi ↦ measurable_prodMk_left (f_meas i)
    · apply integrable_const
    · filter_upwards with x
      apply hasSum_of_disjoint_iUnion
      · exact fun i ↦ measurable_prodMk_left (f_meas i)
      · exact fun i j hij ↦ (f_disj hij).preimage _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbd4a15c5845619bac6d506fe64148062840dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
