# thetaPhiJet_eq_polynomial_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80675926-dbe1-224c-c006-0b5b60284e35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:056fc1bd-c8ca-2190-61e9-684f87065b38",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_eq_polynomial_sum",
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
  "slug": "thetaphijet-eq-polynomial-sum--4505bcec2beb40d46b97d020",
  "source": {
    "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4505bcec2beb40d46b97d020d07c2fe4d330ea5522f2d8a4d0085d4ebf8d789e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:056fc1bd-c8ca-2190-61e9-684f87065b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_eq_polynomial_sum (k : Fin 5) (t : ℝ) :
    thetaPhiJet t k = (Real.pi * Real.exp (5 * t - thetaModeA t)) *
      ∑' m : ℕ, ((m : ℝ) + 1) ^ 2 *
        thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
          Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)) := by
  rw [thetaPhiJet_eq_gaussianSum]
  have hs (j : Fin 6) : Summable (fun m : ℕ => jetCoefficient k j *
      (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  calc
    _ = ∑ j : Fin 6, ∑' m : ℕ, jetCoefficient k j *
        (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      simp only [tsum_mul_left, thetaGaussianSum]
    _ = ∑' m : ℕ, ∑ j : Fin 6, jetCoefficient k j *
        (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t) := by
      exact (Summable.tsum_finsetSum (fun j _ => hs j)).symm
    _ = ∑' m : ℕ, (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        (((m : ℝ) + 1) ^ 2 *
          thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
            Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
      apply tsum_congr
      intro m
      simp_rw [scaledGaussianTerm_eq]
      rw [jetPolynomial_eq_sum]
      simp only [Finset.mul_sum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := tsum_mul_left


/-- Absolute convergence of the normalized polynomial mode representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a37aacc165cd26eff3b8ab34ab3a023b216e1e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
