# holderL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:429743302853fdc229c8ab7acdfda6e1b7e7e3a9ff3c3fa374f9b7abd4ffbc3c",
  "kind": "def",
  "lexical_name": "holderL",
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
  "slug": "holderl--dd91e81159c98a4bfe5f4ec5",
  "source": {
    "blob": "0abc04f3413df1771c66fd13001241ad6b9672b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 215,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd91e81159c98a4bfe5f4ec5e1511c510b70400de3defb2d282b99db070ed74c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:429743302853fdc229c8ab7acdfda6e1b7e7e3a9ff3c3fa374f9b7abd4ffbc3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def holderL [Fact (1 ≤ p)] [Fact (1 ≤ q)] [Fact (1 ≤ r)]
    (B : (i : ι) → E i →L[𝕜] F i →L[𝕜] G i) {K : ℝ≥0} (hBK : ∀ i, ‖B i‖ ≤ K) :
    lp E p →L[𝕜] lp F q →L[𝕜] lp G r :=
  holderₗ r B hBK |>.mkContinuous₂ K fun e f ↦ by
    obtain ⟨(rfl | hp), (rfl | hq)⟩ := And.intro p.dichotomy q.dichotomy
    · obtain rfl : r = ⊤ := ENNReal.HolderTriple.unique ∞ ∞ r ∞
      refine norm_le_of_forall_le (by positivity) fun i ↦ ?_
      refine (B i).le_of_opNorm₂_le_of_le (hBK i) ?_ ?_
      all_goals exact norm_apply_le_norm (by simp) ..
    · obtain rfl : r = q := ENNReal.HolderTriple.unique ∞ q r q
      refine norm_le_of_forall_sum_le (zero_lt_one.trans_le hq) (by positivity) fun s ↦ ?_
      rw [Real.mul_rpow (by positivity) (by positivity)]
      refine Memℓp.holder_top_left_bound B hBK
        (by positivity) (by positivity) (norm_apply_le_norm (by simp) _) ?_ s
      exact sum_rpow_le_norm_rpow (zero_lt_one.trans_le hq) f
    · obtain rfl : r = p := ENNReal.HolderTriple.unique p ∞ r p
      refine norm_le_of_forall_sum_le (zero_lt_one.trans_le hp) (by positivity) fun s ↦ ?_
      rw [mul_right_comm, Real.mul_rpow (by positivity) (by positivity)]
      refine Memℓp.holder_top_right_bound B hBK
        (by positivity) (by positivity) ?_ (norm_apply_le_norm (by simp) _) s
      exact sum_rpow_le_norm_rpow (zero_lt_one.trans_le hp) e
    · have hpqr := hpqr.toReal r (zero_lt_one.trans_le hp) (zero_lt_one.trans_le hq)
      have hp := hpqr.pos
      have hq := hpqr.symm.pos
      refine norm_le_of_forall_sum_le hpqr.pos' (by positivity) fun s ↦ ?_
      simp only [holderₗ_apply_apply_coe]
      calc
        _ ≤ K ^ r.toReal * (‖e‖ ^ p.toReal) ^ (r.toReal / p.toReal) *
          (‖f‖ ^ q.toReal) ^ (r.toReal / q.toReal) :=
          Memℓp.holder_gen_bound r hp hq B hBK (by positivity) (by positivity)
            (sum_rpow_le_norm_rpow hp e) (sum_rpow_le_norm_rpow hq f) s
        _ ≤ _ := by
          rw [← Real.rpow_mul, ← Real.rpow_mul]
          · simp only [← mul_div_assoc, ne_eq, hp.ne', not_false_eq_true, mul_div_cancel_left₀,
            hq.ne', fieldLe]
            rw [Real.mul_rpow, Real.mul_rpow]
            all_goals positivity
          all_goals positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Variant1883b178d2f6b81800e73b5ad8033cc93f8b82bb1ef5152dccf08fedaa54141b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0abc04f3413df1771c66fd13001241ad6b9672b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
