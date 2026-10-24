# instCStarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb00bbe968aba73266ad0f0417672e8b60876956c0dbc9256965cf4e63274f3d",
  "kind": "instance",
  "lexical_name": "instCStarRing",
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
  "slug": "instcstarring--ed2f47e738126c08788abf86",
  "source": {
    "blob": "31eb08fa7dd71ba585809bbee515aa38657add36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 595,
    "path": "GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed2f47e738126c08788abf86031c5aaa385eff2fe5f67e37c633c1e121ad8fc0",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb00bbe968aba73266ad0f0417672e8b60876956c0dbc9256965cf4e63274f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCStarRing : CStarRing 𝓜(𝕜, A) where
  norm_mul_self_le := fun (a : 𝓜(𝕜, A)) => le_of_eq <| Eq.symm <| congr_arg ((↑) : ℝ≥0 → ℝ) <|
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
    argument where `DenselyNormedField 𝕜` is required (for `sSup_unitClosedBall_eq_nnnorm`). -/
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
            (mul_le_mul' (a.fst.le_opNorm_of_le ((nnnorm_star x).trans_le hx))
              (a.fst.le_opNorm_of_le hy))
          _ ≤ ‖a‖₊ * ‖a‖₊ := by simp only [mul_one, nnnorm_fst, le_rfl]
      rw [← nnnorm_snd]
      simp only [mul_snd, ← sSup_unitClosedBall_eq_nnnorm, star_snd, mul_apply]
      simp only [← @opNNNorm_mul_apply 𝕜 _ A]
      simp only [← sSup_unitClosedBall_eq_nnnorm, mul_apply']
      refine csSup_eq_of_forall_le_of_forall_lt_exists_gt (hball.image _) ?_ fun r hr => ?_
      · rintro - ⟨x, hx, rfl⟩
        refine csSup_le (hball.image _) ?_
        rintro - ⟨y, hy, rfl⟩
        exact key x y (mem_closedBall_zero_iff.1 hx) (mem_closedBall_zero_iff.1 hy)
      · simp only [Set.mem_image, Set.mem_setOf_eq, exists_prop, exists_exists_and_eq_and]
        have hr' : NNReal.sqrt r < ‖a‖₊ := ‖a‖₊.sqrt_mul_self ▸ NNReal.sqrt_lt_sqrt.2 hr
        simp_rw [← nnnorm_fst, ← sSup_unitClosedBall_eq_nnnorm] at hr'
        obtain ⟨_, ⟨x, hx, rfl⟩, hxr⟩ := exists_lt_of_lt_csSup (hball.image _) hr'
        have hx' : ‖x‖₊ ≤ 1 := mem_closedBall_zero_iff.1 hx
        refine ⟨star x, mem_closedBall_zero_iff.2 ((nnnorm_star x).trans_le hx'), ?_⟩
        refine lt_csSup_of_lt ?_ ⟨x, hx, rfl⟩ ?_
        · refine ⟨‖a‖₊ * ‖a‖₊, ?_⟩
          rintro - ⟨y, hy, rfl⟩
          exact key (star x) y ((nnnorm_star x).trans_le hx') (mem_closedBall_zero_iff.1 hy)
        · simpa only [a.central, star_star, CStarRing.nnnorm_star_mul_self, NNReal.sq_sqrt, ← sq]
            using pow_lt_pow_left₀ hxr zero_le' two_ne_zero

end DenselyNormed

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variant9bcf12b47ea10835528e16de1a6f45d801302fdb7ddfb59e040bed5a2a03bfe9.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31eb08fa7dd71ba585809bbee515aa38657add36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
