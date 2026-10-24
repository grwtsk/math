# StronglyMeasurable.exists_eq_measurable_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa029ca9d2f0541528a2830e506c383df3fd8ed8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77229bcd-cd53-2c3d-47a4-e6da41009fab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b30b1690-2a10-307d-b1f9-0bed1eaa1e77",
  "kind": "theorem",
  "lexical_name": "StronglyMeasurable.exists_eq_measurable_comp",
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
  "slug": "stronglymeasurable-exists-eq-measurable-comp--e5e61b85daf8856bc4d7f914",
  "source": {
    "blob": "aa029ca9d2f0541528a2830e506c383df3fd8ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e61b85daf8856bc4d7f9146e26267f361c0a65c9ee79a717710b6e511fa259",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FactorsThrough/Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b30b1690-2a10-307d-b1f9-0bed1eaa1e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyMeasurable.exists_eq_measurable_comp [Nonempty Z] [TopologicalSpace Z]
    [IsCompletelyMetrizableSpace Z] (hg : StronglyMeasurable[mY.comap f] g) :
    ∃ h : Y → Z, StronglyMeasurable h ∧ g = h ∘ f := by
  let mX : MeasurableSpace X := mY.comap f
  induction g, hg using StronglyMeasurable.induction' with
  | const z => exact ⟨fun _ ↦ z, stronglyMeasurable_const, rfl⟩
  | @pcw g₁ g₂ s hg₁ hg₂ hs h₁ h₂ =>
    obtain ⟨t, ht, rfl⟩ := hs
    obtain ⟨h₁, mh₁, rfl⟩ := h₁
    obtain ⟨h₂, mh₂, rfl⟩ := h₂
    classical
    exact ⟨t.piecewise h₁ h₂, mh₁.piecewise ht mh₂, by rw [piecewise_comp]⟩
  | @lim g i hg hi h₁ h₂ =>
    choose h mh hh using h₁
    refine ⟨fun y ↦ limUnder atTop (h · y), StronglyMeasurable.limUnder mh, ?_⟩
    ext x
    rw [Function.comp_apply, Tendsto.limUnder_eq]
    simp_all

/-- If a function `g` is measurable with respect to the pullback along some function `f`,
then there exists some measurable function `h : Y → Z` such that `g = h ∘ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FactorsThrough/Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa029ca9d2f0541528a2830e506c383df3fd8ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
