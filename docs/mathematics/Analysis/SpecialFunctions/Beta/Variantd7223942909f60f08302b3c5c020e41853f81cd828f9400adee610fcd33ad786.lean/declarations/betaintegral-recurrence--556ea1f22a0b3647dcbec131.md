# betaIntegral_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ae7de6-6670-24c4-e240-38bcf77bbefd",
  "kind": "theorem",
  "lexical_name": "betaIntegral_recurrence",
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
  "slug": "betaintegral-recurrence--556ea1f22a0b3647dcbec131",
  "source": {
    "blob": "759ae5f8971be63fe142c316a5312b1e18c65dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 154,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:556ea1f22a0b3647dcbec131fa2967b9258cde741d64444a3f629dc8d29e26f5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ae7de6-6670-24c4-e240-38bcf77bbefd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem betaIntegral_recurrence {u v : ℂ} (hu : 0 < re u) (hv : 0 < re v) :
    u * betaIntegral u (v + 1) = v * betaIntegral (u + 1) v := by
  -- NB: If we knew `Gamma (u + v + 1) ≠ 0` this would be an easy consequence of
  -- `Gamma_mul_Gamma_eq_betaIntegral`; but we don't know that yet. We will prove it later, but
  -- this lemma is needed in the proof. So we give a (somewhat laborious) direct argument.
  let F : ℝ → ℂ := fun x => (x : ℂ) ^ u * (1 - (x : ℂ)) ^ v
  have hu' : 0 < re (u + 1) := by rw [add_re, one_re]; positivity
  have hv' : 0 < re (v + 1) := by rw [add_re, one_re]; positivity
  have hc : ContinuousOn F (Icc 0 1) := by
    refine (continuousOn_of_forall_continuousAt fun x hx => ?_).mul
        (continuousOn_of_forall_continuousAt fun x hx => ?_)
    · refine (continuousAt_cpow_const_of_re_pos (Or.inl ?_) hu).comp continuous_ofReal.continuousAt
      rw [ofReal_re]; exact hx.1
    · refine (continuousAt_cpow_const_of_re_pos (Or.inl ?_) hv).comp
        (continuous_const.sub continuous_ofReal).continuousAt
      rw [sub_re, one_re, ofReal_re, sub_nonneg]
      exact hx.2
  have hder : ∀ x : ℝ, x ∈ Ioo (0 : ℝ) 1 →
      HasDerivAt F (u * ((x : ℂ) ^ (u - 1) * (1 - (x : ℂ)) ^ v) -
        v * ((x : ℂ) ^ u * (1 - (x : ℂ)) ^ (v - 1))) x := by
    intro x hx
    have U : HasDerivAt (fun y : ℂ => y ^ u) (u * (x : ℂ) ^ (u - 1)) ↑x := by
      have := @HasDerivAt.cpow_const _ _ _ u (hasDerivAt_id (x : ℂ)) (Or.inl ?_)
      · simp only [id_eq, mul_one] at this
        exact this
      · rw [id_eq, ofReal_re]; exact hx.1
    have V : HasDerivAt (fun y : ℂ => (1 - y) ^ v) (-v * (1 - (x : ℂ)) ^ (v - 1)) ↑x := by
      have A := @HasDerivAt.cpow_const _ _ _ v (hasDerivAt_id (1 - (x : ℂ))) (Or.inl ?_)
      swap; · rw [id, sub_re, one_re, ofReal_re, sub_pos]; exact hx.2
      simp_rw [id] at A
      have B : HasDerivAt (fun y : ℂ => 1 - y) (-1) ↑x := by
        apply HasDerivAt.const_sub; apply hasDerivAt_id
      convert HasDerivAt.comp (↑x) A B using 1
      ring
    convert (U.mul V).comp_ofReal using 1
    ring
  have h_int := ((betaIntegral_convergent hu hv').const_mul u).sub
    ((betaIntegral_convergent hu' hv).const_mul v)
  rw [add_sub_cancel_right, add_sub_cancel_right] at h_int
  have int_ev := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le zero_le_one hc hder h_int
  have hF0 : F 0 = 0 := by
    simp only [F, mul_eq_zero, ofReal_zero, cpow_eq_zero_iff, eq_self_iff_true, Ne,
      true_and, sub_zero, one_cpow, one_ne_zero, or_false]
    contrapose! hu; rw [hu, zero_re]
  have hF1 : F 1 = 0 := by
    simp only [F, mul_eq_zero, ofReal_one, one_cpow, one_ne_zero, sub_self, cpow_eq_zero_iff,
      eq_self_iff_true, Ne, true_and, false_or]
    contrapose! hv; rw [hv, zero_re]
  rw [hF0, hF1, sub_zero, intervalIntegral.integral_sub, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at int_ev
  · rw [betaIntegral, betaIntegral, ← sub_eq_zero]
    convert int_ev <;> ring
  · apply IntervalIntegrable.const_mul
    convert betaIntegral_convergent hu hv'; ring
  · apply IntervalIntegrable.const_mul
    convert betaIntegral_convergent hu' hv; ring

/-- Explicit formula for the Beta function when second argument is a positive integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759ae5f8971be63fe142c316a5312b1e18c65dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
