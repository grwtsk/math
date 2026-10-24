# instCstarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b2f2437949909cc3512a5d994e64461069801413ddbcaa7b133c54e181803cf",
  "kind": "instance",
  "lexical_name": "instCstarRing",
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
  "slug": "instcstarring--eb53a65af0e4e9e01bdb305e",
  "source": {
    "blob": "2fb3dd425754bcd57af1cbb091bd5192028431ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 666,
    "path": "GRWTSK/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb53a65af0e4e9e01bdb305e5e7da80d6819cf136d9712be282a446b358023b1",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b2f2437949909cc3512a5d994e64461069801413ddbcaa7b133c54e181803cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCstarRing : CstarRing 𝓜(𝕜, A) where
  norm_star_mul_self := @fun (a : 𝓜(𝕜, A)) => congr_arg ((↑) : ℝ≥0 → ℝ) <|
    show ‖star a * a‖₊ = ‖a‖₊ * ‖a‖₊ by
    /- The essence of the argument is this: let `a = (L,R)` and recall `‖a‖ = ‖L‖`.
    `star a = (star ∘ R ∘ star, star ∘ L ∘ star)`. Then for any `x y : A`, we have
    `‖star a * a‖ = ‖(star a * a).snd‖ = ‖R (star (L (star x))) * y‖ = ‖star (L (star x)) * L y‖`
    Now, on the one hand,
    `‖star (L (star x)) * L y‖ ≤ ‖star (L (star x))‖ * ‖L y‖ = ‖L (star x)‖ * ‖L y‖ ≤ ‖L‖ ^ 2`
    whenever `‖x‖, ‖y‖ ≤ 1`, so the supremum over all such `x, y` is at most `‖L‖ ^ 2`.
    On the other hand, for any `‖z‖ ≤ 1`, we may choose `x := star z` and `y := z` to get:
    `‖star (L (star x)) * L y‖ = ‖star (L z) * (L z)‖ = ‖L z‖ ^ 2`, and taking the supremum over
    all such `z` yields that the supremum is at least `‖L‖ ^ 2`. It is the latter part of the
    argument where `DenselyNormedField 𝕜` is required (for `sSup_closed_unit_ball_eq_nnnorm`). -/
      have hball : (Metric.closedBall (0 : A) 1).Nonempty :=
        Metric.nonempty_closedBall.2 zero_le_one
      have key :
        ∀ x y, ‖x‖₊ ≤ 1 → ‖y‖₊ ≤ 1 → ‖a.snd (star (a.fst (star x))) * y‖₊ ≤ ‖a‖₊ * ‖a‖₊ := by
        intro x y hx hy
        rw [a.central]
        calc
          ‖star (a.fst (star x)) * a.fst y‖₊ ≤ ‖a.fst (star x)‖₊ * ‖a.fst y‖₊ :=
            nnnorm_star (a.fst (star x)) ▸ nnnorm_mul_le _ _
          _ ≤ ‖a.fst‖₊ * 1 * (‖a.fst‖₊ * 1) :=
            (mul_le_mul' (a.fst.le_op_norm_of_le ((nnnorm_star x).trans_le hx))
              (a.fst.le_op_norm_of_le hy))
          _ ≤ ‖a‖₊ * ‖a‖₊ := by simp only [mul_one, nnnorm_fst, le_rfl]
      rw [← nnnorm_snd]
      simp only [mul_snd, ← sSup_closed_unit_ball_eq_nnnorm, star_snd, mul_apply]
      simp only [← @op_nnnorm_mul_apply 𝕜 _ A]
      simp only [← sSup_closed_unit_ball_eq_nnnorm, mul_apply']
      refine' csSup_eq_of_forall_le_of_forall_lt_exists_gt (hball.image _) _ fun r hr => _
      · rintro - ⟨x, hx, rfl⟩
        refine' csSup_le (hball.image _) _
        rintro - ⟨y, hy, rfl⟩
        exact key x y (mem_closedBall_zero_iff.1 hx) (mem_closedBall_zero_iff.1 hy)
      · simp only [Set.mem_image, Set.mem_setOf_eq, exists_prop, exists_exists_and_eq_and]
        have hr' : NNReal.sqrt r < ‖a‖₊ := ‖a‖₊.sqrt_mul_self ▸ NNReal.sqrt_lt_sqrt_iff.2 hr
        simp_rw [← nnnorm_fst, ← sSup_closed_unit_ball_eq_nnnorm] at hr'
        obtain ⟨_, ⟨x, hx, rfl⟩, hxr⟩ := exists_lt_of_lt_csSup (hball.image _) hr'
        have hx' : ‖x‖₊ ≤ 1 := mem_closedBall_zero_iff.1 hx
        refine' ⟨star x, mem_closedBall_zero_iff.2 ((nnnorm_star x).trans_le hx'), _⟩
        refine' lt_csSup_of_lt _ ⟨x, hx, rfl⟩ _
        · refine' ⟨‖a‖₊ * ‖a‖₊, _⟩
          rintro - ⟨y, hy, rfl⟩
          exact key (star x) y ((nnnorm_star x).trans_le hx') (mem_closedBall_zero_iff.1 hy)
        · simpa only [a.central, star_star, CstarRing.nnnorm_star_mul_self, NNReal.sq_sqrt, ← sq]
            using pow_lt_pow_of_lt_left hxr zero_le' two_pos

end DenselyNormed

end DoubleCentralizer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fb3dd425754bcd57af1cbb091bd5192028431ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
