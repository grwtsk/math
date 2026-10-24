# GrowsPolynomially.rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b91ae9a-ed80-5c99-88c3-12fa8084331b",
  "kind": "lemma",
  "lexical_name": "GrowsPolynomially.rpow",
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
  "slug": "growspolynomially-rpow--9395522f90ee8318e499d294",
  "source": {
    "blob": "ebc4480187c09e3283587c150206252ceb767a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 540,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9395522f90ee8318e499d294020250c3214e489494a1afd07041229e874ae046",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b91ae9a-ed80-5c99-88c3-12fa8084331b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma GrowsPolynomially.rpow (p : ℝ) (hf : GrowsPolynomially f)
    (hf_nonneg : ∀ᶠ x in atTop, 0 ≤ f x) : GrowsPolynomially fun x => (f x) ^ p := by
  intro b hb
  obtain ⟨c₁, (hc₁_mem : 0 < c₁), c₂, hc₂_mem, hfnew⟩ := hf b hb
  have hc₁p : 0 < c₁ ^ p := Real.rpow_pos_of_pos hc₁_mem _
  have hc₂p : 0 < c₂ ^ p := Real.rpow_pos_of_pos hc₂_mem _
  cases le_or_gt 0 p with
  | inl => -- 0 ≤ p
    refine ⟨c₁^p, hc₁p, ?_⟩
    refine ⟨c₂^p, hc₂p, ?_⟩
    filter_upwards [eventually_gt_atTop 0, hfnew, hf_nonneg,
        (tendsto_id.const_mul_atTop hb.1).eventually_forall_ge_atTop hf_nonneg]
        with x _ hf₁ hf_nonneg hf_nonneg₂
    intro u hu
    have fu_nonneg : 0 ≤ f u := hf_nonneg₂ u hu.1
    refine ⟨?lb, ?ub⟩
    case lb => calc
      c₁ ^ p * (f x) ^ p = (c₁ * f x) ^ p := by rw [mul_rpow (le_of_lt hc₁_mem) hf_nonneg]
        _ ≤ _ := by gcongr; exact (hf₁ u hu).1
    case ub => calc
      (f u) ^ p ≤ (c₂ * f x) ^ p := by gcongr; exact (hf₁ u hu).2
        _ = _ := by rw [← mul_rpow (le_of_lt hc₂_mem) hf_nonneg]
  | inr hp => -- p < 0
    match hf.eventually_atTop_zero_or_pos_or_neg with
    | .inl hzero => -- eventually zero
      refine ⟨1, by norm_num, 1, by norm_num, ?_⟩
      filter_upwards [hzero, hfnew] with x hx hx'
      intro u hu
      simp only [hx, zero_rpow (ne_of_lt hp), mul_zero,
        Set.Icc_self, Set.mem_singleton_iff]
      simp only [hx, mul_zero, Set.Icc_self, Set.mem_singleton_iff] at hx'
      rw [hx' u hu, zero_rpow (ne_of_lt hp)]
    | .inr (.inl hpos) => -- eventually positive
      refine ⟨c₂^p, hc₂p, ?_⟩
      refine ⟨c₁^p, hc₁p, ?_⟩
      filter_upwards [eventually_gt_atTop 0, hfnew, hpos,
          (tendsto_id.const_mul_atTop hb.1).eventually_forall_ge_atTop hpos]
          with x _ hf₁ hf_pos hf_pos₂
      intro u hu
      refine ⟨?lb, ?ub⟩
      case lb => calc
        c₂ ^ p * (f x) ^ p = (c₂ * f x) ^ p := by rw [mul_rpow (le_of_lt hc₂_mem) (le_of_lt hf_pos)]
          _ ≤ _ := rpow_le_rpow_of_nonpos (hf_pos₂ u hu.1) (hf₁ u hu).2 (le_of_lt hp)
      case ub => calc
        (f u) ^ p ≤ (c₁ * f x) ^ p := by
              exact rpow_le_rpow_of_nonpos (by positivity) (hf₁ u hu).1 (le_of_lt hp)
          _ = _ := by rw [← mul_rpow (le_of_lt hc₁_mem) (le_of_lt hf_pos)]
    | .inr (.inr hneg) => -- eventually negative (which is impossible)
      have : ∀ᶠ (_ : ℝ) in atTop, False := by
        filter_upwards [hf_nonneg, hneg] with x hx hx'; linarith
      rw [Filter.eventually_false_iff_eq_bot] at this
      exact False.elim <| atTop_neBot.ne this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc4480187c09e3283587c150206252ceb767a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
