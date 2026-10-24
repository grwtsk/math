# gauged_green_tail_iff_prime_square_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a268613-2d90-c8d0-f2b8-1ce86ee0e723",
  "kind": "theorem",
  "lexical_name": "gauged_green_tail_iff_prime_square_compensation",
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
  "slug": "gauged-green-tail-iff-prime-square-compensation--de65c7d37e93c6dc692836b8",
  "source": {
    "blob": "aca263d430a74e3e21e23155b3465801ceaaae4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 237,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de65c7d37e93c6dc692836b8708817e482c2b3526fc44f7e265848c65eea4a0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a268613-2d90-c8d0-f2b8-1ce86ee0e723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauged_green_tail_iff_prime_square_compensation (g : ℝ → ℝ → ℝ)
    (hg : ∀ A : ℝ, 1 ≤ A → ContDiff ℝ 4 (g A))
    (hz : ∀ A : ℝ, 1 ≤ A → ∀ t, poleSquaredDifferentialOperator (g A) t = 0) :
    UniformTailUpperBound (gaugedGreenValue g) ↔ PrimeSquareCompensationTail :=
  uniform_frontier_invariance _ ⟨AffineTailAdapter.ofTailScaledEq 1 zero_lt_one 1 le_rfl
    (by intro A hA; simpa using gauged_green_value_eq_discrepancy g A hA (hg A hA) (hz A hA))⟩

/-- Exact second Abel summation has unit scale, zero error and the same source threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variant701f154f7519152bab62ce4cacc21f2c983a9a8a2fa78c330836152dfe7d5871.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aca263d430a74e3e21e23155b3465801ceaaae4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
