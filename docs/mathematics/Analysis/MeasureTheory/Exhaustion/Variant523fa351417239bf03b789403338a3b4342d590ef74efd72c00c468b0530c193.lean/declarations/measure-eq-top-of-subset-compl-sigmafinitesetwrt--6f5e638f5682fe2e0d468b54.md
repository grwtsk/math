# measure_eq_top_of_subset_compl_sigmaFiniteSetWRT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b3d651280d40645073ff1f346a34618418eb756",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1de3f1e9-cafe-9840-7adf-b93e37dfffc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37a767dd-b458-da2f-9f85-0b9afa195022",
  "kind": "lemma",
  "lexical_name": "measure_eq_top_of_subset_compl_sigmaFiniteSetWRT",
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
  "slug": "measure-eq-top-of-subset-compl-sigmafinitesetwrt--6f5e638f5682fe2e0d468b54",
  "source": {
    "blob": "5b3d651280d40645073ff1f346a34618418eb756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 255,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f5e638f5682fe2e0d468b54226f3c499376eaefe46c77d288ee323ff66cc50a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37a767dd-b458-da2f-9f85-0b9afa195022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_eq_top_of_subset_compl_sigmaFiniteSetWRT [SFinite ν]
    (hs_subset : s ⊆ (μ.sigmaFiniteSetWRT ν)ᶜ) (hνs : ν s ≠ 0) :
    μ s = ∞ := by
  have ⟨ν', hν', hνν', _⟩ := exists_isFiniteMeasure_absolutelyContinuous ν
  have h : ∃ s : Set α, MeasurableSet s ∧ SigmaFinite (μ.restrict s)
      ∧ (∀ t ⊆ sᶜ, ν t ≠ 0 → μ t = ∞) := by
    refine ⟨μ.sigmaFiniteSetWRT' ν', measurableSet_sigmaFiniteSetWRT',
      sigmaFinite_restrict_sigmaFiniteSetWRT' _ _,
      fun t ht_subset hνt ↦ measure_eq_top_of_subset_compl_sigmaFiniteSetWRT' ht_subset ?_⟩
    exact fun hν't ↦ hνt (hνν' hν't)
  rw [Measure.sigmaFiniteSetWRT, dif_pos h] at hs_subset
  exact h.choose_spec.2.2 s hs_subset hνs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3d651280d40645073ff1f346a34618418eb756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
