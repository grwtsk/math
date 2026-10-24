# thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43fbdaad99e5c2a2708a7fa421bff61017793841",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b82880bf-a97c-750c-7a69-d978706cf3b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ab3d53c-e0dd-039b-48bc-7b83e800c546",
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
  "slug": "thetaphiwhitenedparitycompression-eigenvalue-sq-le-one--61c326b5922dd48c2e1278eb",
  "source": {
    "blob": "43fbdaad99e5c2a2708a7fa421bff61017793841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c326b5922dd48c2e1278eb9e31b1668a7e2d44626b954acb29e6f80211b668",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab3d53c-e0dd-039b-48bc-7b83e800c546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–91.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43fbdaad99e5c2a2708a7fa421bff61017793841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
