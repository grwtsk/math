# congr_cylinder_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c0a781c114bf255d86567cf590a4f29d77fedd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90f4e63a-8b79-a4f7-afa5-437e78d939da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df2b89cd-9eee-d3c1-826d-4fe23ea41b99",
  "kind": "lemma",
  "lexical_name": "congr_cylinder_of_subset",
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
  "slug": "congr-cylinder-of-subset--0f605e00a984a9657b6b2a14",
  "source": {
    "blob": "8c0a781c114bf255d86567cf590a4f29d77fedd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f605e00a984a9657b6b2a1451f4a357a5a4d61a7542da2aab441f1ee215ddf7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df2b89cd-9eee-d3c1-826d-4fe23ea41b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congr_cylinder_of_subset (hP : IsProjectiveMeasureFamily P)
    {S : Set (∀ i : I, α i)} {T : Set (∀ i : J, α i)} (hT : MeasurableSet T)
    (h_eq : cylinder I S = cylinder J T) (hJI : J ⊆ I) :
    P I S = P J T := by
  cases isEmpty_or_nonempty (∀ i, α i) with
  | inl h =>
    suffices ∀ I, P I univ = 0 by
      simp only [Measure.measure_univ_eq_zero] at this
      simp [this]
    simpa using eq_zero_of_isEmpty hP
  | inr h =>
    have : S = Finset.restrict₂ hJI ⁻¹' T :=
      eq_of_cylinder_eq_of_subset h_eq hJI
    rw [hP I J hJI, Measure.map_apply _ hT, this]
    exact .of_eval (fun _ ↦ measurable_pi_apply _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0a781c114bf255d86567cf590a4f29d77fedd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
