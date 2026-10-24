# reflection_mul_reflection_pow_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de5910d8-201c-9d0f-fa54-edb8437fb9f1",
  "kind": "lemma",
  "lexical_name": "reflection_mul_reflection_pow_apply",
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
  "slug": "reflection-mul-reflection-pow-apply--47dfdaa4247142e84dabb655",
  "source": {
    "blob": "884c32c24663e523356ed851a8747163a98cb019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47dfdaa4247142e84dabb655fd3ea830774c01696bf3b5b2a320d406510fe3ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de5910d8-201c-9d0f-fa54-edb8437fb9f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflection_mul_reflection_pow_apply (m : ℕ) (z : M)
    (t : R := f y * g x - 2) (ht : t = f y * g x - 2 := by rfl) :
    ((reflection hf * reflection hg) ^ m) z =
      z +
        ((S R ((m - 2) / 2)).eval t * ((S R ((m - 1) / 2)).eval t + (S R ((m - 3) / 2)).eval t)) •
          ((g x * f z - g z) • y - f z • x) +
        ((S R ((m - 1) / 2)).eval t * ((S R (m / 2)).eval t + (S R ((m - 2) / 2)).eval t)) •
          ((f y * g z - f z) • x - g z • y) := by
  induction m with
  | zero => simp
  | succ m ih =>
    /- Now, let us collect two facts about the evaluations of `S r k`. These easily follow from the
    properties of the `S` polynomials. -/
    have S_eval_t_sub_two (k : ℤ) :
        (S R (k - 2)).eval t = t * (S R (k - 1)).eval t - (S R k).eval t := by
      simp [S_sub_two]
    have S_eval_t_sq_add_S_eval_t_sq (k : ℤ) :
        (S R k).eval t ^ 2 + (S R (k + 1)).eval t ^ 2 - t * (S R k).eval t * (S R (k + 1)).eval t
        = 1 := by
      simpa using congr_arg (Polynomial.eval t) (S_sq_add_S_sq R k)
    -- Apply the inductive hypothesis.
    rw [pow_succ', LinearEquiv.mul_apply, ih, LinearEquiv.mul_apply]
    -- Expand out all the reflections and use `hf`, `hg`.
    simp only [reflection_apply, map_add, map_sub, map_smul, hf, hg]
    -- `m` can be written in the form `2 * k + e`, where `e` is `0` or `1`.
    push_cast
    rw [← Int.mul_ediv_add_emod m 2]
    set k : ℤ := m / 2
    set e : ℤ := m % 2
    simp_rw [add_assoc (2 * k), add_sub_assoc (2 * k), add_comm (2 * k),
      add_mul_ediv_left _ k (by simp : (2 : ℤ) ≠ 0)]
    have he : e = 0 ∨ e = 1 := by lia
    clear_value e
    /- Now, equate the coefficients on both sides. These linear combinations were
    found using `polyrith`. -/
    match_scalars
    · rfl
    · linear_combination (norm := skip) (-g z * f y * (S R (e - 1 + k)).eval t +
          f z * (S R (e - 1 + k)).eval t) * S_eval_t_sub_two (e + k) +
          (-g z * f y + f z) * S_eval_t_sq_add_S_eval_t_sq (k - 1)
      subst ht
      obtain rfl | rfl : e = 0 ∨ e = 1 := he <;> ring_nf
    · linear_combination (norm := skip)
          g z * (S R (e - 1 + k)).eval t * S_eval_t_sub_two (e + k) +
          g z * S_eval_t_sq_add_S_eval_t_sq (k - 1)
      subst ht
      obtain rfl | rfl : e = 0 ∨ e = 1 := he <;> ring_nf

/-- A formula for $(r_1 r_2)^m$, where $m$ is a natural number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `884c32c24663e523356ed851a8747163a98cb019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
