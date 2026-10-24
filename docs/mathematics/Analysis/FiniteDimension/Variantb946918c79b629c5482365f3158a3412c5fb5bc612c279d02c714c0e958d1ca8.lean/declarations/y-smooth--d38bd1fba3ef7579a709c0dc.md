# y_smooth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef56578e-1396-17e3-c89a-bafaf9bba362",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01adf98c-2c07-175a-0f6c-d63f6a620a9d",
  "kind": "theorem",
  "lexical_name": "y_smooth",
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
  "slug": "y-smooth--d38bd1fba3ef7579a709c0dc",
  "source": {
    "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 468,
    "path": "GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38bd1fba3ef7579a709c0dcea347eeef3f5c2634a7bb1b38245be5734c5a82c",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01adf98c-2c07-175a-0f6c-d63f6a620a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem y_smooth : ContDiffOn ℝ ⊤ (uncurry y) (Ioo (0 : ℝ) 1 ×ˢ (univ : Set E)) := by
  have hs : IsOpen (Ioo (0 : ℝ) (1 : ℝ)) := isOpen_Ioo
  have hk : IsCompact (closedBall (0 : E) 1) := ProperSpace.isCompact_closedBall _ _
  refine' contDiffOn_convolution_left_with_param (lsmul ℝ ℝ) hs hk _ _ _
  · rintro p x hp hx
    simp only [w, mul_inv_rev, Algebra.id.smul_eq_mul, mul_eq_zero, inv_eq_zero]
    right
    contrapose! hx
    have : p⁻¹ • x ∈ support u := mem_support.2 hx
    simp only [u_support, norm_smul, mem_ball_zero_iff, Real.norm_eq_abs, abs_inv,
      abs_of_nonneg hp.1.le, ← div_eq_inv_mul, div_lt_one hp.1] at this
    rw [mem_closedBall_zero_iff]
    exact this.le.trans hp.2.le
  · exact (locallyIntegrable_const _).indicator measurableSet_closedBall
  · apply ContDiffOn.mul
    · norm_cast
      refine'
        (contDiffOn_const.mul _).inv fun x hx =>
          ne_of_gt (mul_pos (u_int_pos E) (pow_pos (abs_pos_of_pos hx.1.1) (finrank ℝ E)))
      apply ContDiffOn.pow
      simp_rw [← Real.norm_eq_abs]
      apply @ContDiffOn.norm ℝ
      · exact contDiffOn_fst
      · intro x hx; exact ne_of_gt hx.1.1
    · apply (u_smooth E).comp_contDiffOn
      exact ContDiffOn.smul (contDiffOn_fst.inv fun x hx => ne_of_gt hx.1.1) contDiffOn_snd
#align exists_cont_diff_bump_base.Y_smooth ExistsContDiffBumpBase.y_smooth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9d4818ff159efc9cfd66012e9f5a2d560fb041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
