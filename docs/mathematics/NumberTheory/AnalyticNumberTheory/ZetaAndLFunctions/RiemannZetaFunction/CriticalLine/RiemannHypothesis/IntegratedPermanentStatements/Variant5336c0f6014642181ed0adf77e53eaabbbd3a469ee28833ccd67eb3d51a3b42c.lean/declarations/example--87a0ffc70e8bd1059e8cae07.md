# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57fda8b01d9c409d5176b7b3d0124f55aa82a8d194d9820d0d52e38dc74c57ce",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--87a0ffc70e8bd1059e8cae07",
  "source": {
    "blob": "1c41e9d50494c0c0971336640e5f053c5c6c3f6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 695,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant5336c0f6014642181ed0adf77e53eaabbbd3a469ee28833ccd67eb3d51a3b42c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87a0ffc70e8bd1059e8cae0712bca5c2dfdc971be5ef61d2f2175dffdc1bf1e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant5336c0f6014642181ed0adf77e53eaabbbd3a469ee28833ccd67eb3d51a3b42c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57fda8b01d9c409d5176b7b3d0124f55aa82a8d194d9820d0d52e38dc74c57ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) : primeSupportedBlock A P =
    ∑ p ∈ ((Icc 1 ⌊Real.exp A⌋₊) ×ˢ (Icc 1 ⌊Real.exp A⌋₊)).filter
      (fun p ↦ (p.1 / Nat.gcd p.1 p.2).primeFactors ⊆ P ∧
        (p.2 / Nat.gcd p.1 p.2).primeFactors ⊆ P),
      (ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ) *
        ThetaRemainder.thetaRemainder A (p.1 * p.2) := by
  classical
  unfold primeSupportedBlock quotientSupported
  apply sum_congr
  · exact filter_congr_decidable _ _ _
  · intro p _
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant5336c0f6014642181ed0adf77e53eaabbbd3a469ee28833ccd67eb3d51a3b42c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant5336c0f6014642181ed0adf77e53eaabbbd3a469ee28833ccd67eb3d51a3b42c.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c41e9d50494c0c0971336640e5f053c5c6c3f6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
