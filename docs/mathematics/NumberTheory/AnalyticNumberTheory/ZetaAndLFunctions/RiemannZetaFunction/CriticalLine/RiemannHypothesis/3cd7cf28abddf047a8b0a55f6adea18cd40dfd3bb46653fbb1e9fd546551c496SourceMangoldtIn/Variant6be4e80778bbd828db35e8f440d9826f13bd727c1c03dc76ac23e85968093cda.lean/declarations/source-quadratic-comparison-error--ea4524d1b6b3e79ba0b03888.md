# source_quadratic_comparison_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbcb09c1-9c97-834b-c939-377b7a905189",
  "kind": "theorem",
  "lexical_name": "source_quadratic_comparison_error",
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
  "slug": "source-quadratic-comparison-error--ea4524d1b6b3e79ba0b03888",
  "source": {
    "blob": "bbefe48dc0be90c185294d5bb2ec0ea498daba29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 366,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant6be4e80778bbd828db35e8f440d9826f13bd727c1c03dc76ac23e85968093cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea4524d1b6b3e79ba0b038888d02bafe1dc4a813e2dbf72b17f9c051aba8b326",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant6be4e80778bbd828db35e8f440d9826f13bd727c1c03dc76ac23e85968093cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbcb09c1-9c97-834b-c939-377b7a905189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_quadratic_comparison_error {A : ℝ} (hA : 0 < A)
    (B : ComplexL2 →L[ℂ] ComplexL2) :
    |closedPrimeMoment A - (⟪originalSourceState A, B (originalSourceState A)⟫_ℂ).re| ≤
      ‖mangoldtInteraction A - B‖ := by
  rw [closedPrimeMoment_eq_quadratic hA]
  have h := quadratic_comparison_error (mangoldtInteraction A) B (originalSourceState A)
  simpa only [originalSourceState_norm hA, one_pow, mul_one] using h


/-- Actual angular duality commutes with the symmetrized shifts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant6be4e80778bbd828db35e8f440d9826f13bd727c1c03dc76ac23e85968093cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant6be4e80778bbd828db35e8f440d9826f13bd727c1c03dc76ac23e85968093cda.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbefe48dc0be90c185294d5bb2ec0ea498daba29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
