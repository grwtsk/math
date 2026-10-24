# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.setLIntegral_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb1d4082-7015-4eca-ba8c-5ae25757f8aa",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.setLIntegral_kernel",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--20b778ba8769a28d0f5d75bf",
  "source": {
    "blob": "87054d14dcf4f76d83064bfda319b38591ff1bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 192,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variantc4de1fb3f82dfc8952e19d9942b875ede3477860407520a987281593f44975e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20b778ba8769a28d0f5d75bff59224f7d933c8b8616ff4744e143cc433ce1e91",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableLIntegral/Variantc4de1fb3f82dfc8952e19d9942b875ede3477860407520a987281593f44975e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb1d4082-7015-4eca-ba8c-5ae25757f8aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variante5d7752a805267cfa2a29b9d3b7a94914f4520f92f957b955f7a56ea847afe7d.Measurable.setLIntegral_kernel {f : β → ℝ≥0∞} (hf : Measurable f) {s : Set β}
    (hs : MeasurableSet s) : Measurable fun a => ∫⁻ b in s, f b ∂κ a :=
  Measurable.setLIntegral_kernel_prod_right (by fun_prop) hs

end Lintegral

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableLIntegral/Variantc4de1fb3f82dfc8952e19d9942b875ede3477860407520a987281593f44975e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variantc4de1fb3f82dfc8952e19d9942b875ede3477860407520a987281593f44975e9.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87054d14dcf4f76d83064bfda319b38591ff1bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
