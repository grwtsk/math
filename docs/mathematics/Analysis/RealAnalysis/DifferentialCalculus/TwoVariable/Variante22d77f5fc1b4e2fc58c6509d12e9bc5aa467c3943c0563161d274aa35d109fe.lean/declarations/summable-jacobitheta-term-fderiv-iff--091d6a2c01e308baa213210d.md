# summable_jacobiTheta₂_term_fderiv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bff5f305-2d08-ee6c-1f6c-ee39b156518b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b499d21f-bbf7-bf9c-33ca-ea34d967265c",
  "kind": "lemma",
  "lexical_name": "summable_jacobiTheta₂_term_fderiv_iff",
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
  "slug": "summable-jacobitheta-term-fderiv-iff--091d6a2c01e308baa213210d",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:091d6a2c01e308baa213210d2b132f53e441aff44f2106d942e691cb2bd8b806",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b499d21f-bbf7-bf9c-33ca-ea34d967265c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_jacobiTheta₂_term_fderiv_iff (z τ : ℂ) :
    Summable (jacobiTheta₂_term_fderiv · z τ) ↔ 0 < im τ := by
  constructor
  · rw [← summable_jacobiTheta₂_term_iff (z := z)]
    intro h
    have := h.norm
    refine this.of_norm_bounded_eventually _ ?_
    have : ∀ᶠ (n : ℤ) in cofinite, n ≠ 0 :=
      Int.cofinite_eq ▸ (mem_sup.mpr ⟨eventually_ne_atBot 0, eventually_ne_atTop 0⟩)
    filter_upwards [this] with n hn
    refine le_trans ?_ (norm_jacobiTheta₂_term_fderiv_ge n z τ)
    apply le_mul_of_one_le_left (norm_nonneg _)
    refine one_le_pi_div_two.trans (mul_le_mul_of_nonneg_left ?_ pi_pos.le)
    refine (by norm_num : 2⁻¹ ≤ (1 : ℝ)).trans ?_
    rw [one_le_sq_iff_one_le_abs, ← Int.cast_abs, abs_abs, ← Int.cast_one, Int.cast_le]
    exact Int.one_le_abs hn
  · intro hτ
    refine ((summable_pow_mul_jacobiTheta₂_term_bound
      |z.im| hτ 2).mul_left (3 * π)).of_norm_bounded _ (fun n ↦ ?_)
    refine (norm_jacobiTheta₂_term_fderiv_le n z τ).trans
      (?_ : 3 * π * |n| ^ 2 * ‖jacobiTheta₂_term n z τ‖ ≤ _)
    simp_rw [mul_assoc (3 * π)]
    refine mul_le_mul_of_nonneg_left ?_ (mul_pos (by norm_num : 0 < (3 : ℝ)) pi_pos).le
    refine mul_le_mul_of_nonneg_left ?_ (pow_nonneg (Int.cast_nonneg.mpr (abs_nonneg _)) _)
    exact norm_jacobiTheta₂_term_le hτ le_rfl le_rfl n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
