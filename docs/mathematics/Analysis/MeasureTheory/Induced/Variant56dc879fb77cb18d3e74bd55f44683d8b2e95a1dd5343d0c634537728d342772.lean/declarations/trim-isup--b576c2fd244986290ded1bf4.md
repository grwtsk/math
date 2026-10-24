# trim_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35fc68361898273405ca04d0ff07846078abdab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e631f0be-edac-5fac-725f-4345bcad191b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7effe396-7743-295e-1507-c68f71f5266f",
  "kind": "theorem",
  "lexical_name": "trim_iSup",
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
  "slug": "trim-isup--b576c2fd244986290ded1bf4",
  "source": {
    "blob": "35fc68361898273405ca04d0ff07846078abdab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 449,
    "path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b576c2fd244986290ded1bf409d087baa5b4aa1e5c426821bb28f69133d3f0e4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7effe396-7743-295e-1507-c68f71f5266f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trim_iSup {ι} [Countable ι] (μ : ι → OuterMeasure α) :
    trim (⨆ i, μ i) = ⨆ i, trim (μ i) := by
  simp_rw [← @iSup_plift_down _ ι]
  ext1 s
  obtain ⟨t, _, _, hμt⟩ :=
    exists_measurable_superset_forall_eq_trim
      (Option.elim' (⨆ i, μ (PLift.down i)) (μ ∘ PLift.down)) s
  simp only [Option.forall, Option.elim'] at hμt
  simp only [iSup_apply, ← hμt.1]
  exact iSup_congr hμt.2

/-- The trimmed property of a measure μ states that `μ.toOuterMeasure.trim = μ.toOuterMeasure`.
This theorem shows that a restricted trimmed outer measure is a trimmed outer measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35fc68361898273405ca04d0ff07846078abdab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
