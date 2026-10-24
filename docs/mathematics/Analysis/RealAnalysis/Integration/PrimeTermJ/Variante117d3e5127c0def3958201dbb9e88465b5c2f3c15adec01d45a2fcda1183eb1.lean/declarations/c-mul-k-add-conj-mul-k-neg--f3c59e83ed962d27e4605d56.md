# c_mul_k_add_conj_mul_k_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f24bafedc67ad05f8029cd7507b5989ae3f7db16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0770bac9-2baa-c895-e9e9-299c11973075",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd1cee84-68f4-1931-105d-f9a9c8fc9b10",
  "kind": "theorem",
  "lexical_name": "c_mul_k_add_conj_mul_k_neg",
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
  "slug": "c-mul-k-add-conj-mul-k-neg--f3c59e83ed962d27e4605d56",
  "source": {
    "blob": "f24bafedc67ad05f8029cd7507b5989ae3f7db16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c59e83ed962d27e4605d56b5d1fae4a730cd51d2d8cdb1fa44a3102e9aa37a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd1cee84-68f4-1931-105d-f9a9c8fc9b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem c_mul_k_add_conj_mul_k_neg {k : ℝ → ℂ} (hk : Continuous k) (hki : Integrable k)
    (hFk : Integrable (𝓕 k)) (c : ℂ) (y : ℝ) :
    c * k y + conj c * k (-y)
      = (1 / π : ℂ) * ∫ τ : ℝ, paperFT k τ * ((c.re * Real.cos (τ * y) + c.im * Real.sin (τ * y) : ℝ) : ℂ) := by
  rw [paper_inversion hk hki hFk y, paper_inversion hk hki hFk (-y)]
  have hI1 := (integrable_paperFT_mul_cexp hFk y).const_mul c
  have hI2 := (integrable_paperFT_mul_cexp hFk (-y)).const_mul (conj c)
  have e : c * ((1 / (2 * π) : ℂ) * ∫ r : ℝ, paperFT k r * cexp (-I * r * y))
      + conj c * ((1 / (2 * π) : ℂ) * ∫ r : ℝ, paperFT k r * cexp (-I * r * ↑(-y)))
      = (1 / (2 * π) : ℂ) * ((∫ r : ℝ, c * (paperFT k r * cexp (-I * r * y)))
          + ∫ r : ℝ, conj c * (paperFT k r * cexp (-I * r * ↑(-y)))) := by
    rw [cintegral_const_mul, cintegral_const_mul]
    ring
  rw [e, ← integral_add hI1 hI2]
  have h2 : ∀ τ : ℝ, c * (paperFT k τ * cexp (-I * τ * y)) + conj c * (paperFT k τ * cexp (-I * τ * ↑(-y)))
      = 2 * (paperFT k τ * ((c.re * Real.cos (τ * y) + c.im * Real.sin (τ * y) : ℝ) : ℂ)) := by
    intro τ
    have key := mul_cexp_add_conj_mul_cexp c (τ * y)
    have a1 : -I * (τ : ℂ) * (y : ℂ) = -I * ((τ * y : ℝ) : ℂ) := by push_cast; ring
    have a2 : -I * (τ : ℂ) * ((-y : ℝ) : ℂ) = I * ((τ * y : ℝ) : ℂ) := by push_cast; ring
    rw [a1, a2]
    calc c * (paperFT k τ * cexp (-I * ↑(τ * y))) + conj c * (paperFT k τ * cexp (I * ↑(τ * y)))
        = paperFT k τ * (c * cexp (-I * ↑(τ * y)) + conj c * cexp (I * ↑(τ * y))) := by ring
      _ = 2 * (paperFT k τ * ((c.re * Real.cos (τ * y) + c.im * Real.sin (τ * y) : ℝ) : ℂ)) := by
          rw [key]; ring
  simp_rw [h2]
  rw [cintegral_const_mul, ← mul_assoc]
  congr 1
  have hπ : (π : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  field_simp

/-- support step: for N ∉ (0, e^L] the N-th summand vanishes (√0 = 0 in Lean for N = 0; k(±log N) = 0 for N > e^L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24bafedc67ad05f8029cd7507b5989ae3f7db16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
