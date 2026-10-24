# strictRowsAt_one_eq_plainOff_add_rawDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af277f9343e9946b8ad8b8e82674dd6fc518b8f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52e247d2-2525-bd62-a22e-e9ea51c37665",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:106aba56-5d4f-1b68-17fe-a4a47e3d0f3a",
  "kind": "theorem",
  "lexical_name": "strictRowsAt_one_eq_plainOff_add_rawDiagonal",
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
  "slug": "strictrowsat-one-eq-plainoff-add-rawdiagonal--a1c99babc255353b9b95a453",
  "source": {
    "blob": "af277f9343e9946b8ad8b8e82674dd6fc518b8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 247,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c99babc255353b9b95a453b7b6c711cc0f63399dd9f5378e7355de7788bf31",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106aba56-5d4f-1b68-17fe-a4a47e3d0f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictRowsAt_one_eq_plainOff_add_rawDiagonal (A : ℝ) (U : ℕ) :
    strictLongPlainRowsAt A 1 U = plainOffAt A U (sourceKernelCutoff A) +
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) := by
  simp only [strictLongPlainRowsAt, plainOffAt, offDiagonal, rectangle, diagonal,
    sourceKernel, Nat.one_mul, mul_one, Finset.mul_sum]
  ring

end

end FormalResearch.RiemannHypothesis.SourceScaledWholePlainConvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af277f9343e9946b8ad8b8e82674dd6fc518b8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
