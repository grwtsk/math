# sourceQuadraticValue_core_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ee4694c-3b2c-f10d-fad7-4f05e00f107f",
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
  "slug": "sourcequadraticvalue-core-upper--cb83eece8cfe128235563bdb",
  "source": {
    "blob": "2202929344c6c0b07f8012228ee33e49862b7076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 211,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb83eece8cfe128235563bdb3fef0be65e129ef5d7866a40a17d92e2075de5b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee4694c-3b2c-f10d-fad7-4f05e00f107f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–237.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2202929344c6c0b07f8012228ee33e49862b7076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
