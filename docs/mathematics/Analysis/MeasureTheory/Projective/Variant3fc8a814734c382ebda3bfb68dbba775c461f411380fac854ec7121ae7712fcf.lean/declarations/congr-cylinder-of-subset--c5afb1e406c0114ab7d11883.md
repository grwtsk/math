# congr_cylinder_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6914e760103e31f31413badd03fbc1aec60d26f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4211758-9ab2-7577-0415-fb7ccb83c9ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:627b13f6-1514-5b20-0d8a-ed2adf09df72",
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
  "slug": "congr-cylinder-of-subset--c5afb1e406c0114ab7d11883",
  "source": {
    "blob": "b6914e760103e31f31413badd03fbc1aec60d26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5afb1e406c0114ab7d11883935c5d0bec6826b7f517e7ea7d7b6c94c3a3eef0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627b13f6-1514-5b20-0d8a-ed2adf09df72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

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
    intro I
    simp only [isEmpty_pi] at h
    obtain ⟨i, hi_empty⟩ := h
    rw [measure_univ_eq hP I {i}]
    have : (univ : Set ((j : {x // x ∈ ({i} : Finset ι)}) → α j)) = ∅ := by simp [hi_empty]
    simp [this]
  | inr h =>
    have : S = Finset.restrict₂ hJI ⁻¹' T :=
      eq_of_cylinder_eq_of_subset h_eq hJI
    rw [hP I J hJI, Measure.map_apply _ hT, this]
    exact measurable_pi_lambda _ (fun _ ↦ measurable_pi_apply _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6914e760103e31f31413badd03fbc1aec60d26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
