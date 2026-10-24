# prime_term_complex

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
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d12d5af5-54fc-aa3c-dfc4-2eb887dda57b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:effb7e7f-2ba3-4941-01d4-e623931e0c1e",
  "kind": "theorem",
  "lexical_name": "prime_term_complex",
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
  "slug": "prime-term-complex--1d27886b0950cccd62fac9e7",
  "source": {
    "blob": "f24bafedc67ad05f8029cd7507b5989ae3f7db16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d27886b0950cccd62fac9e7ae2b9d10cb3e81acf5ed21233aaa339ae4f6a624",
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

Occurrence: `result:effb7e7f-2ba3-4941-01d4-e623931e0c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_term_complex {k : ℝ → ℂ} {L : ℝ} (hk : Continuous k) (hks : tsupport k ⊆ Icc (-L) L)
    (hFk : Integrable (𝓕 k)) (c : ℕ → ℂ) :
    (∑' N : ℕ, (c N * k (Real.log N) + conj (c N) * k (-Real.log N)) / ((Real.sqrt N : ℝ) : ℂ))
      = ∫ τ : ℝ, paperFT k τ * ((Pc (Real.exp L) c τ : ℝ) : ℂ) := by
  have hki : Integrable k :=
    hk.integrable_of_hasCompactSupport (hasCompactSupport_of_tsupport_subset hks)
  set S := Finset.Ioc 0 ⌊Real.exp L⌋₊ with hS
  rw [tsum_eq_sum (s := S) (fun N hN => complex_summand_eq_zero hks c hN)]
  have step1 : ∑ N ∈ S, (c N * k (Real.log N) + conj (c N) * k (-Real.log N)) / ((Real.sqrt N : ℝ) : ℂ)
      = ∑ N ∈ S, ((1 / π : ℂ) * ∫ τ : ℝ, paperFT k τ *
          (((c N).re * Real.cos (τ * Real.log N) + (c N).im * Real.sin (τ * Real.log N) : ℝ) : ℂ))
            / ((Real.sqrt N : ℝ) : ℂ) := by
    refine Finset.sum_congr rfl fun N _ => ?_
    rw [c_mul_k_add_conj_mul_k_neg hk hki hFk]
  rw [step1, paperFT_mul_Pc_eq, integral_finset_sum _
    (fun N _ => (integrable_paperFT_mul_trig hFk (c N) _).const_mul _)]
  refine Finset.sum_congr rfl fun N _ => ?_
  rw [cintegral_const_mul]
  ring

/-! ### algebra of P_c -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24bafedc67ad05f8029cd7507b5989ae3f7db16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
