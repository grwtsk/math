# LSeries_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "620e6295e4d930b19a562314791e91c4d7e2182b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7d104a5-38b7-8a2c-c5af-fd3c09b2cece",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf22d1dc-fb74-0ba1-ff2f-913d349a4722",
  "kind": "lemma",
  "lexical_name": "LSeries_eq_zero_iff",
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
  "slug": "lseries-eq-zero-iff--6888e2a08d8ceb1687a11225",
  "source": {
    "blob": "620e6295e4d930b19a562314791e91c4d7e2182b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6888e2a08d8ceb1687a11225e731042b77e2d6745fc7eef7bc9beca89dc149ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf22d1dc-fb74-0ba1-ff2f-913d349a4722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_eq_zero_iff {f : ℕ → ℂ} (hf : f 0 = 0) :
    LSeries f = 0 ↔ f = 0 ∨ abscissaOfAbsConv f = ⊤ := by
  by_cases h : abscissaOfAbsConv f = ⊤
  · simpa [h] using LSeries_eq_zero_of_abscissaOfAbsConv_eq_top h
  · simp only [h, or_false]
    refine ⟨fun H ↦ ?_, fun H ↦ H ▸ LSeries_zero⟩
    convert (LSeries_eventually_eq_zero_iff'.mp ?_).resolve_right h
    · refine ⟨fun H' _ _ ↦ by rw [H', Pi.zero_apply], fun H' ↦ ?_⟩
      ext (- | m)
      · simp [hf]
      · simp [H']
    · simpa only [H] using Filter.EventuallyEq.rfl

open Filter in
/-- If the `LSeries` of `f` and of `g` converge somewhere and agree on large real arguments,
then the L-series of `f - g` is zero for large real arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `620e6295e4d930b19a562314791e91c4d7e2182b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
