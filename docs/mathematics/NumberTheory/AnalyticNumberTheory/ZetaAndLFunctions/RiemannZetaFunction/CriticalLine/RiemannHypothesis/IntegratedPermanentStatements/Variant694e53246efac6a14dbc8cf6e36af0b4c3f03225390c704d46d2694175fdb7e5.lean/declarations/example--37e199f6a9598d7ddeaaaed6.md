# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e8315d899da0095c76bc62d524ba923cee8197dcb7760c46e2a12a921909a2d",
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
  "slug": "example--37e199f6a9598d7ddeaaaed6",
  "source": {
    "blob": "a9699a7bfbbb9e00735789cb3f4a4adb1231e9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 539,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37e199f6a9598d7ddeaaaed6424c1a4cb27d1a1dd95524064a1a11f488a5e0ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e8315d899da0095c76bc62d524ba923cee8197dcb7760c46e2a12a921909a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (F : ℝ → ℝ) (x L L' B : ℝ) (N : ℕ)
    (hx : 0 < x) (hN : 1 ≤ N) (hF : ContDiff ℝ 1 F) (hc : HasCompactSupport F)
    (hbound : ∀ t, |F t| ≤ L) (hd : ∀ t, |deriv F t| ≤ L')
    (h0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (h1 : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B)
    (hcut : ∀ u : ℝ, (N : ℝ) ≤ u →
      Real.log u / Real.sqrt (x * u) * F (Real.log x + Real.log u) = 0) :
    |(∑ k ∈ Finset.Icc 1 N,
      Real.log (k : ℝ) / Real.sqrt (x * k) * F (Real.log x + Real.log k)) - B / x| ≤
        (8 * L + 4 * L') / Real.sqrt x :=
  FirstMomentSampling.sampling_sum_sub_firstMoment_abs_le F x L L' B N
    hx hN hF hc hbound hd h0 h1 hcut

#print ThetaKernelTransport.source_prime_decomposition_theta
#print CorrelationSecondMoment.full_correlation_secondMoment_eq_square
#print CorrelationPrimitive.correlationPrimitive_hasDerivAt

-- A signed sawtooth identity is checked before applying its total-variation bound.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9699a7bfbbb9e00735789cb3f4a4adb1231e9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
