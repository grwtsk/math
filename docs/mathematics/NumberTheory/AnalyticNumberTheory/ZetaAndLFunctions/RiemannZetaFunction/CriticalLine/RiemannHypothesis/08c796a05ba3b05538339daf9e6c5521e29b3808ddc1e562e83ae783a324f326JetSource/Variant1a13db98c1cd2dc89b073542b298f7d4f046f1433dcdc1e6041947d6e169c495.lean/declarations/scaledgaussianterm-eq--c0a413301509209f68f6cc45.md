# scaledGaussianTerm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:570c4fe0-7555-1828-4229-568ef95433dd",
  "kind": "theorem",
  "lexical_name": "scaledGaussianTerm_eq",
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
  "slug": "scaledgaussianterm-eq--c0a413301509209f68f6cc45",
  "source": {
    "blob": "2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a413301509209f68f6cc45923c50467927c7a46b1dd7e62db6d5bef8370f4a",
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

Occurrence: `result:570c4fe0-7555-1828-4229-568ef95433dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaledGaussianTerm_eq (j m : ℕ) (t : ℝ) :
    Real.pi ^ (j + 1) * thetaGaussianTerm (2 * j + 2) (4 * j + 5) m t =
      (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        (((m : ℝ) + 1) ^ 2 * (thetaModeA t * ((m : ℝ) + 1) ^ 2) ^ j *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  have hc : Real.exp (((4 * j + 5 : ℕ) : ℝ) * t) =
      Real.exp (5 * t) * Real.exp (4 * t) ^ j := by
    rw [← Real.exp_nat_mul, ← Real.exp_add]
    congr 1
    push_cast
    ring
  have he : Real.exp (5 * t - thetaModeA t) *
      Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)) =
      Real.exp (5 * t) * Real.exp (-thetaModeA t * ((m : ℝ) + 1) ^ 2) := by
    rw [← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  rw [show (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      (((m : ℝ) + 1) ^ 2 * (thetaModeA t * ((m : ℝ) + 1) ^ 2) ^ j *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) =
      Real.pi * (((m : ℝ) + 1) ^ 2 * (thetaModeA t * ((m : ℝ) + 1) ^ 2) ^ j) *
        (Real.exp (5 * t - thetaModeA t) *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) by ring, he]
  unfold thetaGaussianTerm HurwitzKernelBounds.f_nat
  rw [hc]
  unfold thetaModeA
  simp only [pow_add, pow_mul, mul_pow]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
