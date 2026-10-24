# _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.factorsThrough

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fd15796-5f6f-5abd-bceb-52ee0e81bd91",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.factorsThrough",
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
  "slug": "root-grwtsk-analysis-measuretheory-rootmeasurablefactorsthrough-variant4--eceb3bb5ee69d76f44bae1eb",
  "source": {
    "blob": "4e85ab9f249884e11f827ccf6772aefe47de295f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variant23fc27f0e43881c3d43f1980326489b5ad674632dd42d2e33435fdd6a69e5629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eceb3bb5ee69d76f44bae1ebd2c850a2208025a098d419b19da0c2ee23142d47",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FactorsThrough/Variant23fc27f0e43881c3d43f1980326489b5ad674632dd42d2e33435fdd6a69e5629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fd15796-5f6f-5abd-bceb-52ee0e81bd91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.factorsThrough [MeasurableSpace Z] [MeasurableSingletonClass Z]
    (hg : Measurable[mY.comap f] g) : g.FactorsThrough f := by
  refine fun x₁ x₂ h ↦ eq_of_mem_singleton ?_
  obtain ⟨s, -, hs⟩ := hg (measurableSet_singleton (g x₂))
  rw [← mem_preimage, ← hs, mem_preimage, h, ← mem_preimage, hs, mem_preimage, mem_singleton_iff]

/-- If a function `g` is strongly measurable with respect to the pullback along some function `f`,
then to prove `g x = g y` it is enough to prove `f x = f y`.

If `Z` is not empty there exists `h : Y → Z` such that `g = h ∘ f`.
If `Z` is also completely metrizable, the factorization map `h` can be taken to be measurable
(see `exists_eq_measurable_comp`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FactorsThrough/Variant23fc27f0e43881c3d43f1980326489b5ad674632dd42d2e33435fdd6a69e5629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variant23fc27f0e43881c3d43f1980326489b5ad674632dd42d2e33435fdd6a69e5629.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e85ab9f249884e11f827ccf6772aefe47de295f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
