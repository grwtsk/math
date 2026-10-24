# sourceQuadraticValue_core_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e4d4d5a9a959f3b012dd6031f092f896c4f5bea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b150b35162d59e57cfe56a9d56a225d975719455019b941b656d51da6079e61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96aa4fd3-c501-5d87-da9e-4da6ad9d91f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab5d5682-37ab-d9f0-f3aa-5c9dcee71e9c",
  "kind": "theorem",
  "lexical_name": "sourceQuadraticValue_core_upper",
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
  "slug": "sourcequadraticvalue-core-upper--bddb6d62a8c0b8605b6001c8",
  "source": {
    "blob": "5e4d4d5a9a959f3b012dd6031f092f896c4f5bea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 203,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variantb150b35162d59e57cfe56a9d56a225d975719455019b941b656d51da6079e61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bddb6d62a8c0b8605b6001c8cdc636b63c3eefacaad0a3f9d7560c1476355b63",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variantb150b35162d59e57cfe56a9d56a225d975719455019b941b656d51da6079e61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5d5682-37ab-d9f0-f3aa-5c9dcee71e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadraticValue_core_upper (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) := by
  rw [sourceQuadraticValue,
    ThetaKernelTransport.source_prime_decomposition_theta A hA]
  change archimedeanValue _ A -
    2 * (2 * (∑ i ∈ Icc 1 ⌊Real.exp A⌋₊,
      (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) -
      JointBoundaryTransport.rectangle (Icc 1 ⌊Real.exp A⌋₊) (Icc 1 ⌊Real.exp A⌋₊)
        (ThetaKernelTransport.thetaKernel A)) = _
  rw [positive_sum_split ⌊Real.exp A⌋₊ (⌊Real.exp A⌋₊ / 2) _ (Nat.div_le_self _ _),
    rectangle_core_upper_identity ⌊Real.exp A⌋₊ (⌊Real.exp A⌋₊ / 2) _ (Nat.div_le_self _ _),
    source_upper_rectangle_eq_linear A hA, source_upper_square_eq_sampling A hA]
  ring

/-- The exact rank-one part of the smaller source core is nonnegative without RH. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variantb150b35162d59e57cfe56a9d56a225d975719455019b941b656d51da6079e61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variantb150b35162d59e57cfe56a9d56a225d975719455019b941b656d51da6079e61e.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4d4d5a9a959f3b012dd6031f092f896c4f5bea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
