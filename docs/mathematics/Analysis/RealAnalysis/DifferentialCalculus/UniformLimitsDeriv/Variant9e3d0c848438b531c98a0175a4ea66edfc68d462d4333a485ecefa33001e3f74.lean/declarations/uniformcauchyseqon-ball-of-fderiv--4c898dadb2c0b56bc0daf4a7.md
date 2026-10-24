# uniformCauchySeqOn_ball_of_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9a51f91-de34-07e1-bf37-fbf4c2c3f869",
  "kind": "theorem",
  "lexical_name": "uniformCauchySeqOn_ball_of_fderiv",
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
  "slug": "uniformcauchyseqon-ball-of-fderiv--4c898dadb2c0b56bc0daf4a7",
  "source": {
    "blob": "2d05eff24a158325e4d1973f9d52564d0a59ff77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c898dadb2c0b56bc0daf4a7b423e85ddaf0a7b61004d1413b803b35c2d74ae0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a51f91-de34-07e1-bf37-fbf4c2c3f869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformCauchySeqOn_ball_of_fderiv {r : ℝ} (hf' : UniformCauchySeqOn f' l (Metric.ball x r))
    (hf : ∀ n : ι, ∀ y : E, y ∈ Metric.ball x r → HasFDerivAt (f n) (f' n y) y)
    (hfg : Cauchy (map (fun n => f n x) l)) : UniformCauchySeqOn f l (Metric.ball x r) := by
  letI : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 _
  have : NeBot l := (cauchy_map_iff.1 hfg).1
  rcases le_or_lt r 0 with (hr | hr)
  · simp only [Metric.ball_eq_empty.2 hr, UniformCauchySeqOn, Set.mem_empty_iff_false,
      IsEmpty.forall_iff, eventually_const, imp_true_iff]
  rw [SeminormedAddGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_zero] at hf' ⊢
  suffices
    TendstoUniformlyOn (fun (n : ι × ι) (z : E) => f n.1 z - f n.2 z - (f n.1 x - f n.2 x)) 0
        (l ×ˢ l) (Metric.ball x r) ∧
      TendstoUniformlyOn (fun (n : ι × ι) (_ : E) => f n.1 x - f n.2 x) 0
        (l ×ˢ l) (Metric.ball x r) by
    have := this.1.add this.2
    rw [add_zero] at this
    refine' this.congr _
    apply eventually_of_forall
    intro n z _
    simp
  constructor
  · -- This inequality follows from the mean value theorem
    rw [Metric.tendstoUniformlyOn_iff] at hf' ⊢
    intro ε hε
    obtain ⟨q, hqpos, hq⟩ : ∃ q : ℝ, 0 < q ∧ q * r < ε := by
      simp_rw [mul_comm]
      exact exists_pos_mul_lt hε.lt r
    apply (hf' q hqpos.gt).mono
    intro n hn y hy
    simp_rw [dist_eq_norm, Pi.zero_apply, zero_sub, norm_neg] at hn ⊢
    have mvt :=
      Convex.norm_image_sub_le_of_norm_hasFDerivWithin_le
        (fun z hz => ((hf n.1 z hz).sub (hf n.2 z hz)).hasFDerivWithinAt) (fun z hz => (hn z hz).le)
        (convex_ball x r) (Metric.mem_ball_self hr) hy
    refine' lt_of_le_of_lt mvt _
    have : q * ‖y - x‖ < q * r :=
      mul_lt_mul' rfl.le (by simpa only [dist_eq_norm] using Metric.mem_ball.mp hy) (norm_nonneg _)
        hqpos
    exact this.trans hq
  · -- This is just `hfg` run through `eventually_prod_iff`
    refine' Metric.tendstoUniformlyOn_iff.mpr fun ε hε => _
    obtain ⟨t, ht, ht'⟩ := (Metric.cauchy_iff.mp hfg).2 ε hε
    rw [eventually_prod_iff]
    refine' ⟨fun n => f n x ∈ t, ht, fun n => f n x ∈ t, ht, _⟩
    intro n hn n' hn' z _
    rw [dist_eq_norm, Pi.zero_apply, zero_sub, norm_neg, ← dist_eq_norm]
    exact ht' _ hn _ hn'
#align uniform_cauchy_seq_on_ball_of_fderiv uniformCauchySeqOn_ball_of_fderiv

/-- If a sequence of functions between real or complex normed spaces are differentiable on a
preconnected open set, they form a Cauchy sequence _at_ `x`, and their derivatives are Cauchy
uniformly on the set, then the functions form a Cauchy sequence at any point in the set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d05eff24a158325e4d1973f9d52564d0a59ff77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
