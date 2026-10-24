# hitting_isStoppingTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe382015-fe60-2594-a5fe-faa4d4f8f775",
  "kind": "theorem",
  "lexical_name": "hitting_isStoppingTime",
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
  "slug": "hitting-isstoppingtime--b02c13e17db023a6e8dd6c14",
  "source": {
    "blob": "7d66eb7ac3040847f34d1fa38b020a970c913fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 235,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b02c13e17db023a6e8dd6c14d3c3ba1a2837e49e42111391802eaf4129c7ba17",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe382015-fe60-2594-a5fe-faa4d4f8f775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hitting_isStoppingTime [ConditionallyCompleteLinearOrder ι] [IsWellOrder ι (· < ·)]
    [Countable ι] [TopologicalSpace β] [PseudoMetrizableSpace β] [MeasurableSpace β] [BorelSpace β]
    {f : Filtration ι m} {u : ι → Ω → β} {s : Set β} {n n' : ι} (hu : Adapted f u)
    (hs : MeasurableSet s) : IsStoppingTime f (hitting u s n n') := by
  intro i
  cases' le_or_lt n' i with hi hi
  · have h_le : ∀ ω, hitting u s n n' ω ≤ i := fun x => (hitting_le x).trans hi
    simp [h_le]
  · have h_set_eq_Union : {ω | hitting u s n n' ω ≤ i} = ⋃ j ∈ Set.Icc n i, u j ⁻¹' s := by
      ext x
      rw [Set.mem_setOf_eq, hitting_le_iff_of_lt _ hi]
      simp only [Set.mem_Icc, exists_prop, Set.mem_iUnion, Set.mem_preimage]
    rw [h_set_eq_Union]
    exact MeasurableSet.iUnion fun j =>
      MeasurableSet.iUnion fun hj => f.mono hj.2 _ ((hu j).measurable hs)
#align measure_theory.hitting_is_stopping_time MeasureTheory.hitting_isStoppingTime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d66eb7ac3040847f34d1fa38b020a970c913fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
