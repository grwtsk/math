# beta_eq_delta_sub_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:646d05da-f0db-62f2-568f-78a138de8681",
  "kind": "theorem",
  "lexical_name": "beta_eq_delta_sub_short",
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
  "slug": "beta-eq-delta-sub-short--8d898efbe651f78b57d67817",
  "source": {
    "blob": "faab245cf9e51e96037918f15098ea4599280f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante997f194427839f9f31cf63321699fbaa8c7d8d780bb3363b7694db899d5d7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d898efbe651f78b57d67817af87d5b168983acdf9f137e5b5f1062186a14bb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante997f194427839f9f31cf63321699fbaa8c7d8d780bb3363b7694db899d5d7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:646d05da-f0db-62f2-568f-78a138de8681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_eq_delta_sub_short (U n : ℕ) :
    beta U n = (if n = 1 then 1 else 0) -
      ∑ d ∈ n.divisors.filter (fun d ↦ d ≤ U), (moebius d : ℝ) := by
  rw [beta_eq_long_convolution, longPart, sub_mul, coe_moebius_mul_coe_zeta]
  change (1 : ArithmeticFunction ℝ) n -
    (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n = _
  rw [one_apply, coe_mul_zeta_apply]
  simp only [shortPart_apply, intCoe_apply, Finset.sum_filter]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante997f194427839f9f31cf63321699fbaa8c7d8d780bb3363b7694db899d5d7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante997f194427839f9f31cf63321699fbaa8c7d8d780bb3363b7694db899d5d7e5.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faab245cf9e51e96037918f15098ea4599280f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
