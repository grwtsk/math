# criterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd8c3aad-b9a7-feec-83bd-5cb6d4ef5c9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f4f1ee2-c6cd-4d7a-588f-9391c29f0a13",
  "kind": "theorem",
  "lexical_name": "criterion",
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
  "slug": "criterion--e0db8c2a1faba00c96f0c1c7",
  "source": {
    "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 451,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0db8c2a1faba00c96f0c1c7172e9caf6c1c426d965eb04d98689cf8ea42c78c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f4f1ee2-c6cd-4d7a-588f-9391c29f0a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criterion (mₐ Mₐ xₐ x₀ : ℝ)
  (hxₐ : 1 < xₐ)
  (hlower : ∀ x > xₐ, x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + (mₐ * x / log x ^ 6) < pi x)
  (hupper : ∀ x > exp 1 * xₐ, pi x < x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + (Mₐ * x / log x ^ 6))
  (hx₀xₐ : x₀ ≥ exp 1 * xₐ)
  (hcrit : ∀ ⦃x : ℝ⦄, x > x₀ → ε Mₐ x - εlower mₐ xₐ x < log x) :
    ∀ x > x₀, pi x ^ 2 < exp 1 * x / log x * pi (x / exp 1) := by
  intro x hx
  have hxexₐ : x > exp 1 * xₐ := lt_of_le_of_lt hx₀xₐ hx
  have hsq := sq_pi_lt Mₐ (exp 1 * xₐ) hupper x hxexₐ
  have hlow := ex_pi_gt mₐ xₐ hxₐ hlower x hxexₐ
  let U : ℝ := 1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 64 / log x ^ 6 +
    ε Mₐ x / log x ^ 7
  let L : ℝ := 1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
    εlower mₐ xₐ x / log x ^ 7
  have hsq' : pi x ^ 2 < x ^ 2 * U := by
    simpa [U] using hsq
  have hlow' : x ^ 2 * L < exp 1 * x / log x * pi (x / exp 1) := by
    simpa [L] using hlow
  have hx_gt_e : exp 1 < x := by
    have h1 : exp 1 < exp 1 * xₐ := by
      nlinarith [hxₐ, exp_pos (1 : ℝ)]
    exact lt_of_lt_of_le h1 (le_of_lt hxexₐ)
  have hlog_pos : 0 < log x :=
    log_pos (lt_trans ((Real.one_lt_exp_iff).2 (by norm_num)) hx_gt_e)
  have hnum_neg : ε Mₐ x - εlower mₐ xₐ x - log x < 0 := by
    linarith [hcrit hx]
  have hden_pos : 0 < log x ^ 7 := by positivity
  have hlog_ne : log x ≠ 0 := ne_of_gt hlog_pos
  have hUL_eq : U - L = (ε Mₐ x - εlower mₐ xₐ x - log x) / log x ^ 7 := by
    simp [U, L]
    field_simp [hlog_ne]
    ring
  have hUL_neg : U - L < 0 := by
    rw [hUL_eq]
    exact div_neg_of_neg_of_pos hnum_neg hden_pos
  have hU_lt_L : U < L := by linarith
  have hx_pos : 0 < x := lt_trans (by positivity : 0 < exp 1 * xₐ) hxexₐ
  have hmul : x ^ 2 * U < x ^ 2 * L :=
    mul_lt_mul_of_pos_left hU_lt_L (sq_pos_of_pos hx_pos)
  exact lt_trans hsq' (lt_trans hmul hlow')

-- Native-decide lemma for the computational [3, 599) range
set_option linter.style.nativeDecide false in
open LeanCert.Engine.ChebyshevTheta in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06b8815a68e0bc3decd472336d6373f75f0d0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
