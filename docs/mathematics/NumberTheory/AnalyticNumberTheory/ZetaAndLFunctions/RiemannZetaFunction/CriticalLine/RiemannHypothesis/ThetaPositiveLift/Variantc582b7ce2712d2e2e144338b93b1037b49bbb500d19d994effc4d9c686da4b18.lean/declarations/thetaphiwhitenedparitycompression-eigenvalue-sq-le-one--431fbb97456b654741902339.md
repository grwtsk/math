# thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:701e643b-727c-6bf3-a994-0beecc3be391",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one",
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
  "slug": "thetaphiwhitenedparitycompression-eigenvalue-sq-le-one--431fbb97456b654741902339",
  "source": {
    "blob": "4dd9e1292fd52b38cc1e3fe23c45fe1592d933ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:431fbb97456b65474190233979fe190ead89834c6c73db721adecc7b210e3f22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:701e643b-727c-6bf3-a994-0beecc3be391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (i : Fin k) :
    ((thetaPhiWhitenedParityCompression_isHermitian
      k L N t).eigenvalues i) ^ 2 ≤ 1 := by
  let C := thetaPhiWhitenedParityCompression k L N t
  have hC : C.IsHermitian := by
    dsimp [C]
    exact thetaPhiWhitenedParityCompression_isHermitian k L N t
  let lambda : ℝ := hC.eigenvalues i
  let v : Fin k → ℝ :=
    fun j => hC.eigenvectorBasis i j
  have hCv :
      C.mulVec v = lambda • v := by
    dsimp [lambda, v]
    exact hC.mulVec_eigenvectorBasis i
  let D : Matrix (Fin k) (Fin k) ℝ :=
    (1 : Matrix (Fin k) (Fin k) ℝ) - C * C
  have hD : D.PosSemidef := by
    dsimp [D, C]
    exact
      thetaPhiWhitenedParityCompression_phaseDefect_posSemidef
        hk hN t
  have hDv :
      D.mulVec v = (1 - lambda ^ 2) • v := by
    dsimp [D]
    rw [Matrix.sub_mulVec, Matrix.one_mulVec,
      ← Matrix.mulVec_mulVec, hCv, Matrix.mulVec_smul, hCv]
    ext j
    simp [Pi.smul_apply]
    ring
  have hvinner :
      @inner ℝ (EuclideanSpace ℝ (Fin k)) _
          (hC.eigenvectorBasis i)
          (hC.eigenvectorBasis i) = 1 := by
    rw [inner_self_eq_norm_sq_to_K,
      hC.eigenvectorBasis.orthonormal.1 i]
    norm_num
  have hvdot : v ⬝ᵥ v = 1 := by
    rw [EuclideanSpace.inner_eq_star_dotProduct] at hvinner
    simpa [v, star_trivial, dotProduct_comm] using hvinner
  have hquad := hD.dotProduct_mulVec_nonneg v
  rw [hDv] at hquad
  simp only [star_trivial, dotProduct_smul,
    smul_eq_mul, hvdot, mul_one] at hquad
  have hlam : lambda ^ 2 ≤ 1 :=
    sub_nonneg.mp hquad
  change lambda ^ 2 ≤ 1
  exact hlam

/-- Every eigenvalue of the canonical compressed phase lies in the closed
interval [-1,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dd9e1292fd52b38cc1e3fe23c45fe1592d933ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
