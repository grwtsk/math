# reflection_mul_reflection_zpow_apply_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eeddc2a-e96e-3ef5-0678-6f812f5ed4ad",
  "kind": "lemma",
  "lexical_name": "reflection_mul_reflection_zpow_apply_self",
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
  "slug": "reflection-mul-reflection-zpow-apply-self--d6237168aea1ea67f5ea4ca1",
  "source": {
    "blob": "884c32c24663e523356ed851a8747163a98cb019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6237168aea1ea67f5ea4ca147ce0673d139d408cba48453b48a1426cd643db3",
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

Occurrence: `result:6eeddc2a-e96e-3ef5-0678-6f812f5ed4ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflection_mul_reflection_zpow_apply_self (m : ℤ)
    (t : R := f y * g x - 2) (ht : t = f y * g x - 2 := by rfl) :
    ((reflection hf * reflection hg) ^ m) x =
      ((S R m).eval t + (S R (m - 1)).eval t) • x + ((S R (m - 1)).eval t * -g x) • y := by
  /- Even though this is a special case of `Module.reflection_mul_reflection_zpow_apply`, it is
  easier to prove it from scratch. -/
  have S_eval_t_sub_two (k : ℤ) :
      (S R (k - 2)).eval t = (f y * g x - 2) * (S R (k - 1)).eval t - (S R k).eval t := by
    simp [S_sub_two, ht]
  induction m with
  | zero => simp
  | succ m ih =>
    -- Apply the inductive hypothesis.
    rw [add_comm (m : ℤ) 1, zpow_one_add, LinearEquiv.mul_apply, LinearEquiv.mul_apply, ih]
    -- Expand out all the reflections and use `hf`, `hg`.
    simp only [reflection_apply, map_add, map_sub, map_smul, hf, hg]
    -- Equate coefficients of `x` and `y`.
    match_scalars
    · linear_combination (norm := ring_nf) -S_eval_t_sub_two (m + 1)
    · ring_nf
  | pred m ih =>
    -- Apply the inductive hypothesis.
    rw [sub_eq_add_neg (-m : ℤ) 1, add_comm (-m : ℤ) (-1), zpow_add, zpow_neg_one, mul_inv_rev,
      reflection_inv, reflection_inv, LinearEquiv.mul_apply, LinearEquiv.mul_apply, ih]
    -- Expand out all the reflections and use `hf`, `hg`.
    simp only [reflection_apply, map_add, map_sub, map_smul, hf, hg]
    -- Equate coefficients of `x` and `y`.
    match_scalars
    · linear_combination (norm := ring_nf) -S_eval_t_sub_two (-m)
    · linear_combination (norm := ring_nf) g x * S_eval_t_sub_two (-m)

/-- A formula for $(r_1 r_2)^m x$, where $m$ is a natural number. This is the special case of
`Module.reflection_mul_reflection_pow_apply` with $z = x$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `884c32c24663e523356ed851a8747163a98cb019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
