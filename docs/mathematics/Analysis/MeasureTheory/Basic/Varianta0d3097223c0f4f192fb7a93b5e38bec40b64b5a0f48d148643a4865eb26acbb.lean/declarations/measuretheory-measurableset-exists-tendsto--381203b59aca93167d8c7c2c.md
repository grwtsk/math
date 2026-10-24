# MeasureTheory.measurableSet_exists_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b3eb3c1-2aa5-24f6-3c05-8500d8f0db1c",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.measurableSet_exists_tendsto",
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
  "slug": "measuretheory-measurableset-exists-tendsto--381203b59aca93167d8c7c2c",
  "source": {
    "blob": "a992dd64a895591bbde7cc6456a1648546ef2862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1006,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:381203b59aca93167d8c7c2c657ba0e243b5ce5d313b7546ec92ff5f0a49505a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3eb3c1-2aa5-24f6-3c05-8500d8f0db1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.measurableSet_exists_tendsto [TopologicalSpace γ]
    [IsCompletelyPseudoMetrizableSpace γ] [SecondCountableTopology γ] [MeasurableSpace γ]
    [hγ : OpensMeasurableSpace γ] [Countable ι] {l : Filter ι}
    [l.IsCountablyGenerated] {f : ι → β → γ} (hf : ∀ i, Measurable (f i)) :
    MeasurableSet { x | ∃ c, Tendsto (fun n => f n x) l (𝓝 c) } := by
  rcases l.eq_or_neBot with rfl | hl
  · simp
  let := TopologicalSpace.upgradeIsCompletelyPseudoMetrizable γ
  rcases l.exists_antitone_basis with ⟨u, hu⟩
  simp_rw [← cauchy_map_iff_exists_tendsto]
  change MeasurableSet { x | _ ∧ _ }
  have : ∀ x, (map (f · x) l ×ˢ map (f · x) l).HasAntitoneBasis fun n =>
      ((f · x) '' u n) ×ˢ ((f · x) '' u n) := fun x => (hu.map _).prod (hu.map _)
  simp_rw [and_iff_right (hl.map _),
    Filter.HasBasis.le_basis_iff (this _).toHasBasis Metric.uniformity_basis_dist_inv_nat_succ,
    Set.ofPred_forall]
  refine MeasurableSet.biInter Set.countable_univ fun K _ => ?_
  simp_rw [Set.ofPred_exists, true_and]
  refine MeasurableSet.iUnion fun N => ?_
  simp_rw [prod_image_image_eq, image_subset_iff, prod_subset_iff, Set.ofPred_forall]
  exact
    MeasurableSet.biInter (to_countable (u N)) fun i _ =>
      MeasurableSet.biInter (to_countable (u N)) fun j _ =>
        measurableSet_lt (Measurable.dist (hf i) (hf j)) measurable_const

section Measurable

variable {X E ι : Type*} [MeasurableSpace X] [CommMonoid E] [TopologicalSpace E]

section

variable [IsCompletelyPseudoMetrizableSpace E] [SecondCountableTopology E]
  [MeasurableSpace E] [BorelSpace E] [MeasurableMul₂ E]
  [Countable ι] {L : SummationFilter ι} [L.NeBot] [L.filter.IsCountablyGenerated]

/-- The product of measurable functions is measurable. -/
@[to_additive (attr := fun_prop)
/-- The sum of measurable functions is measurable. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a992dd64a895591bbde7cc6456a1648546ef2862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
