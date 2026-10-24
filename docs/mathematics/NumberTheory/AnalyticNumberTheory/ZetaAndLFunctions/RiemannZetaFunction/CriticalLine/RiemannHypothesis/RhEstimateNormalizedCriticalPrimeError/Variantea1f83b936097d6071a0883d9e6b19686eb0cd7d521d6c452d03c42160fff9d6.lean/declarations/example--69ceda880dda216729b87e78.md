# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1856be358e15e45f2868db0de1846ba4f4ecb1dd3d7563d3fcd8733e6a04c29",
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
  "slug": "example--69ceda880dda216729b87e78",
  "source": {
    "blob": "d2a2a9221f40fe6ace87392db2961a2a3708e40f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhEstimateNormalizedCriticalPrimeError/Variantea1f83b936097d6071a0883d9e6b19686eb0cd7d521d6c452d03c42160fff9d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69ceda880dda216729b87e78d1f36a28b856b4662059af2164113076ee534211",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhEstimateNormalizedCriticalPrimeError/Variantea1f83b936097d6071a0883d9e6b19686eb0cd7d521d6c452d03c42160fff9d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1856be358e15e45f2868db0de1846ba4f4ecb1dd3d7563d3fcd8733e6a04c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A θ C : ℝ) (L : ℝ → ℝ) (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hL : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)), 0 ≤ L x)
    (hE : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)),
      |FormalResearch.RiemannHypothesis.SourcePairing.chebyshevError x| ≤ C * x ^ θ * L x)
    (hM : IntervalIntegrable (powerErrorMajorant A θ L) volume
      FormalResearch.RiemannHypothesis.SourcePairing.lowerEndpoint (2 * A)) :
    |normalizedCriticalPrimeError A - 2 * criticalWeight A 2| ≤
      C * ∫ t in FormalResearch.RiemannHypothesis.SourcePairing.lowerEndpoint..2 * A,
        powerErrorMajorant A θ L t :=
  critical_prime_error_abs_le_power_majorant A θ C L hA hC hL hE hM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhEstimateNormalizedCriticalPrimeError/Variantea1f83b936097d6071a0883d9e6b19686eb0cd7d521d6c452d03c42160fff9d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhEstimateNormalizedCriticalPrimeError/Variantea1f83b936097d6071a0883d9e6b19686eb0cd7d521d6c452d03c42160fff9d6.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2a2a9221f40fe6ace87392db2961a2a3708e40f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
