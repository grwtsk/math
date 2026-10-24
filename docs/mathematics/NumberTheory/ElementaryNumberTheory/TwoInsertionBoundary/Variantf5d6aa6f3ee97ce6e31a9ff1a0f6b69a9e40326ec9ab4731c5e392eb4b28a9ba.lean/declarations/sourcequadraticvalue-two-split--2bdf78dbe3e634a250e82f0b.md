# sourceQuadraticValue_two_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa7cc703-c486-b24e-4c43-775f07fd45a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c57e0bf2-e979-cf65-340e-4ba0e7752ca7",
  "kind": "theorem",
  "lexical_name": "sourceQuadraticValue_two_split",
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
  "slug": "sourcequadraticvalue-two-split--2bdf78dbe3e634a250e82f0b",
  "source": {
    "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 266,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bdf78dbe3e634a250e82f0b96043e91c2c296b69dc0da406ca9f1df1c9e6b60",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c57e0bf2-e979-cf65-340e-4ba0e7752ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadraticValue_two_split (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
        ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ)) +
      2 * sourceRankOneCoefficient A *
        ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
          (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter
            (fun d ↦ Nat.Coprime d 2), (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) := by
  rw [RoughClassReduction.sourceQuadraticValue_eq_mean_add_error A P hA]
  unfold RoughClassReduction.meanArithmetic
  rw [sourceLinear_two_split, reciprocal_moebius_two_split]

/-- The unchanged Q contains both the explicit linear boundary and the complete signed mean error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
