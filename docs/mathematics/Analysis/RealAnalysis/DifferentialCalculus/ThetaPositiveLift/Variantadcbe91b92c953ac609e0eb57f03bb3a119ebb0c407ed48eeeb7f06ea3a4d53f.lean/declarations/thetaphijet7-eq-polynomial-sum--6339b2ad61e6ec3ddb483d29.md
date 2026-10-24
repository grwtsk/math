# thetaPhiJet7_eq_polynomial_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a64013f9-53be-124a-f57f-f7b062194ee4",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet7_eq_polynomial_sum",
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
  "slug": "thetaphijet7-eq-polynomial-sum--6339b2ad61e6ec3ddb483d29",
  "source": {
    "blob": "adbc2ede8ef2d7592d4fc048758d0ec76f9457b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6339b2ad61e6ec3ddb483d291f43444f510fd804e46c756802b756f5114753e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a64013f9-53be-124a-f57f-f7b062194ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet7_eq_polynomial_sum (k : Fin 7) (t : ℝ) :
    thetaPhiJet7 t k = (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      ∑' m : ℕ, ((m : ℝ) + 1) ^ 2 *
        thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)) := by
  rw [thetaPhiJet7_eq_gaussianSum]
  have hs (j : Fin 8) : Summable (fun m : ℕ => jetCoefficient7 k j *
      (Real.pi ^ (j.val + 1) *
        thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  calc
    _ = ∑ j : Fin 8, ∑' m : ℕ, jetCoefficient7 k j *
        (Real.pi ^ (j.val + 1) *
          thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      simp only [tsum_mul_left, thetaGaussianSum]
    _ = ∑' m : ℕ, ∑ j : Fin 8, jetCoefficient7 k j *
        (Real.pi ^ (j.val + 1) *
          thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      exact (Summable.tsum_finsetSum (fun j _ => hs j)).symm
    _ = ∑' m : ℕ, (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        (((m : ℝ) + 1) ^ 2 *
          thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
            Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
      apply tsum_congr
      intro m
      simp_rw [scaledGaussianTerm_eq_rankFour]
      rw [jetPolynomial7_eq_sum]
      simp only [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := tsum_mul_left

/-- Absolute convergence of every normalized rank-four source-jet mode sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantadcbe91b92c953ac609e0eb57f03bb3a119ebb0c407ed48eeeb7f06ea3a4d53f.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbc2ede8ef2d7592d4fc048758d0ec76f9457b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
