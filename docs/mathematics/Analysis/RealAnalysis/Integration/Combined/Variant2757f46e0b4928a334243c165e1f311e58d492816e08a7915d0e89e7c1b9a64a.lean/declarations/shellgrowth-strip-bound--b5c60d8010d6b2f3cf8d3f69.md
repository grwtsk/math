# shellGrowth_strip_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:761b9600-b9b9-ddd5-3e4c-06eac6584de5",
  "kind": "lemma",
  "lexical_name": "shellGrowth_strip_bound",
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
  "slug": "shellgrowth-strip-bound--b5c60d8010d6b2f3cf8d3f69",
  "source": {
    "blob": "308d83957645250eeb49c1c0ac619c0bee0dd4eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c60d8010d6b2f3cf8d3f6939bdce9df80a58fde2f32c1ff4ac116160e3d326",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:761b9600-b9b9-ddd5-3e4c-06eac6584de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_strip_bound (s : ℂ) (a b : ℝ) (ha : a ≤ s.re) (hb : s.re ≤ b) :
    ‖completedRiemannZeta₀ s‖ ≤
      (completedRiemannZeta₀ a).re + (completedRiemannZeta₀ b).re := by
  have hi : ‖∫ t : ℝ in Ioi 0, (t : ℂ) ^ (s / 2 - 1) *
      (hurwitzEvenFEPair 0).f_modif t‖ ≤
      ∫ t : ℝ in Ioi 0, t ^ (a / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re +
        t ^ (b / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re := by
    apply norm_integral_le_of_norm_le ((shellGrowth_real_integrable a).add
      (shellGrowth_real_integrable b))
    apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with t ht
    change 0 < t at ht
    rw [norm_mul, shellGrowth_fmodif_real t,
      Complex.norm_of_nonneg (shellGrowth_fmodif_nonneg ht),
      Complex.norm_cpow_eq_rpow_re_of_pos ht, Complex.sub_re,
      Complex.div_ofNat_re, Complex.one_re, Pi.add_apply, ← add_mul]
    apply mul_le_mul_of_nonneg_right _ (shellGrowth_fmodif_nonneg ht)
    rcases le_total t 1 with ht1 | ht1
    · exact (Real.rpow_le_rpow_of_exponent_ge ht ht1 (by linarith)).trans
        (le_add_of_nonneg_right (by positivity))
    · exact (Real.rpow_le_rpow_of_exponent_le ht1 (by linarith)).trans
        (le_add_of_nonneg_left (by positivity))
  rw [integral_add (shellGrowth_real_integrable a) (shellGrowth_real_integrable b)] at hi
  rw [shellGrowth_lambda_integral, norm_div, norm_ofNat, shellGrowth_real_integral,
    shellGrowth_real_integral]
  simpa only [add_div] using div_le_div_of_nonneg_right hi (show (0 : ℝ) ≤ 2 by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308d83957645250eeb49c1c0ac619c0bee0dd4eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
