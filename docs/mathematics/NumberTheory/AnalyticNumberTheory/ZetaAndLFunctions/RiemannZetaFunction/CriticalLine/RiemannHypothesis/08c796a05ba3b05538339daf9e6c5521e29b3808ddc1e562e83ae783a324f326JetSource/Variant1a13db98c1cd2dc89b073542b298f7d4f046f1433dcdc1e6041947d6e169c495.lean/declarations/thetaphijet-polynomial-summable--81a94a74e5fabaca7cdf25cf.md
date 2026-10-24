# thetaPhiJet_polynomial_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cd6b9c1-4c13-1f51-a035-4c935a1344fc",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_polynomial_summable",
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
  "slug": "thetaphijet-polynomial-summable--81a94a74e5fabaca7cdf25cf",
  "source": {
    "blob": "2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a94a74e5fabaca7cdf25cfd799ac3a9e3fb3ac72559473b4821be9cafc7bb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cd6b9c1-4c13-1f51-a035-4c935a1344fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_polynomial_summable (k : Fin 5) (t : ℝ) :
    Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  apply (summable_mul_left_iff (a := Real.pi * Real.exp (5 * t - thetaModeA t))
    (by positivity)).mp
  have hs (j : Fin 6) : Summable (fun m : ℕ => jetCoefficient k j *
      (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  apply (summable_sum (fun j (_ : j ∈ Finset.univ) => hs j)).congr
  intro m
  simp_rw [scaledGaussianTerm_eq]
  rw [jetPolynomial_eq_sum]
  simp only [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Consecutive entries of the source jet are actual ordinary derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
