# ext_of_Icc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d18dd7c-530c-bc6c-2ac7-e743f4b9f901",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5154d3cf-ba96-e8ec-139d-b13d8112ea70",
  "kind": "theorem",
  "lexical_name": "ext_of_Icc'",
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
  "slug": "ext-of-icc--37388ced630af9c89e4da11f",
  "source": {
    "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 545,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37388ced630af9c89e4da11f7c4b886d73de75b66d32e2081f3d3f7419eabd6d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5154d3cf-ba96-e8ec-139d-b13d8112ea70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_Icc' {α : Type*} [TopologicalSpace α] {m : MeasurableSpace α}
    [SecondCountableTopology α] [LinearOrder α] [OrderTopology α] [BorelSpace α]
    (μ ν : Measure α) (hμ : ∀ ⦃a b⦄, a ≤ b → μ (Icc a b) ≠ ∞)
    (h : ∀ ⦃a b⦄, a ≤ b → μ (Icc a b) = ν (Icc a b)) : μ = ν := by
  rcases exists_countable_dense_bot_top α with ⟨s, hsc, hsd, hsb, hst⟩
  have : (⋃ (l ∈ s) (u ∈ s) (_ : l ≤ u), {Icc l u} : Set (Set α)).Countable :=
    hsc.biUnion fun l _ => hsc.biUnion fun u _ => countable_iUnion fun _ => countable_singleton _
  simp only [← ofPred_eq_eq_singleton, ← ofPred_exists] at this
  refine
    Measure.ext_of_generateFrom_of_cover_subset
      (BorelSpace.measurable_eq.trans (borel_eq_generateFrom_Icc α)) (isPiSystem_Icc id id) ?_ this
      ?_ ?_ ?_
  · rintro _ ⟨l, -, u, -, h, rfl⟩
    exact ⟨l, u, h, rfl⟩
  · refine sUnion_eq_univ_iff.2 fun x => ?_
    rcases hsd.exists_le' hsb x with ⟨l, hls, hlx⟩
    rcases hsd.exists_ge' hst x with ⟨u, hus, hxu⟩
    exact ⟨_, ⟨l, hls, u, hus, hlx.trans hxu, rfl⟩, hlx, hxu⟩
  · rintro _ ⟨l, -, u, -, hlt, rfl⟩
    exact hμ hlt
  · rintro _ ⟨l, u, hlt, rfl⟩
    exact h hlt

/-- Two measures which are finite on closed intervals are equal if they agree on all
closed intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373362a90f7b59d21ae884ceadb84fc51fcae514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
