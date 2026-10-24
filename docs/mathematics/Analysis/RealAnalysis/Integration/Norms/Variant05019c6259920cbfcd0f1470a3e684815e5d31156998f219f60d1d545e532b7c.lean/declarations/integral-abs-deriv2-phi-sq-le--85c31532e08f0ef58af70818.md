# integral_abs_deriv2_phi_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb79deb4-a5eb-1254-da7d-b28b52181b93",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv2_phi_sq_le",
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
  "slug": "integral-abs-deriv2-phi-sq-le--85c31532e08f0ef58af70818",
  "source": {
    "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 396,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85c31532e08f0ef58af708183c478d2ce660b3040884e18715a98c3413c71627",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb79deb4-a5eb-1254-da7d-b28b52181b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv2_phi_sq_le (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 2 * w ≤ L) :
    ∫ u, |deriv (deriv (fun u => phi ϱ L w u ^ 2)) u| ≤ cRho ϱ / w := by
  have hw0 : (0 : ℝ) < w := by linarith
  have hφ := phi_contDiff hϱ hw0 hwL
  have hφd : Differentiable ℝ (phi ϱ L w) := hφ.differentiable (by norm_num)
  have hφ'c : ContDiff ℝ 2 (deriv (phi ϱ L w)) := deriv_phi_contDiff hϱ hw0 hwL
  have hφ'd : Differentiable ℝ (deriv (phi ϱ L w)) := hφ'c.differentiable (by norm_num)
  have hφ'cont : Continuous (deriv (phi ϱ L w)) := hφ'c.continuous
  have hφ''cont : Continuous (deriv (deriv (phi ϱ L w))) := hφ'c.continuous_deriv (by norm_num)
  have hφcs := phi_hasCompactSupport hϱ (L := L) hw0
  have hφ'cs : HasCompactSupport (deriv (phi ϱ L w)) := hφcs.deriv
  have hφ''cs : HasCompactSupport (deriv (deriv (phi ϱ L w))) := hφ'cs.deriv
  have hsq1 : deriv (fun v => phi ϱ L w v ^ 2)
      = fun v => 2 * phi ϱ L w v * deriv (phi ϱ L w) v := by
    funext v
    have hd : HasDerivAt (phi ϱ L w) (deriv (phi ϱ L w) v) v := (hφd v).hasDerivAt
    have hpow : HasDerivAt (fun x => phi ϱ L w x ^ 2)
        ((2 : ℕ) * phi ϱ L w v ^ (2 - 1) * deriv (phi ϱ L w) v) v := hd.pow 2
    rw [hpow.deriv]
    norm_num
  have hid : ∀ u : ℝ, deriv (deriv (fun v => phi ϱ L w v ^ 2)) u
      = 2 * deriv (phi ϱ L w) u * deriv (phi ϱ L w) u
        + 2 * phi ϱ L w u * deriv (deriv (phi ϱ L w)) u := by
    intro u
    rw [hsq1]
    have h1 : HasDerivAt (fun v => 2 * phi ϱ L w v) (2 * deriv (phi ϱ L w) u) u :=
      (hφd u).hasDerivAt.const_mul 2
    have h2 : HasDerivAt (deriv (phi ϱ L w)) (deriv (deriv (phi ϱ L w)) u) u :=
      (hφ'd u).hasDerivAt
    have h3 : HasDerivAt (fun v => 2 * phi ϱ L w v * deriv (phi ϱ L w) v)
        (2 * deriv (phi ϱ L w) u * deriv (phi ϱ L w) u
          + 2 * phi ϱ L w u * deriv (deriv (phi ϱ L w)) u) u := by
      exact h1.mul h2
    rw [h3.deriv]
  have hint_absphi' : MeasureTheory.Integrable (fun u => |deriv (phi ϱ L w) u|) :=
    (hφ'cont.abs).integrable_of_hasCompactSupport
      (hφ'cs.comp_left (g := fun t => |t|) abs_zero)
  have hint_absphi'' : MeasureTheory.Integrable (fun u => |deriv (deriv (phi ϱ L w)) u|) :=
    (hφ''cont.abs).integrable_of_hasCompactSupport
      (hφ''cs.comp_left (g := fun t => |t|) abs_zero)
  have hφsqc : ContDiff ℝ 3 (fun v => phi ϱ L w v ^ 2) := hφ.pow 2
  have hφsq''cont : Continuous (deriv (deriv (fun v => phi ϱ L w v ^ 2))) :=
    (hφsqc.deriv' (n := 2)).continuous_deriv (by norm_num)
  have hφsqcs : HasCompactSupport (fun v => phi ϱ L w v ^ 2) :=
    hφcs.comp_left (g := fun t => t ^ 2) (by norm_num)
  have hφsq''cs : HasCompactSupport (deriv (deriv (fun v => phi ϱ L w v ^ 2))) :=
    hφsqcs.deriv.deriv
  have hint_lhs : MeasureTheory.Integrable
      (fun u => |deriv (deriv (fun v => phi ϱ L w v ^ 2)) u|) :=
    (hφsq''cont.abs).integrable_of_hasCompactSupport
      (hφsq''cs.comp_left (g := fun t => |t|) abs_zero)
  have hmaj : MeasureTheory.Integrable
      (fun u => 2 * (supDeriv ϱ / w) * |deriv (phi ϱ L w) u|
        + 2 * |deriv (deriv (phi ϱ L w)) u|) :=
    (hint_absphi'.const_mul _).add (hint_absphi''.const_mul 2)
  calc ∫ u, |deriv (deriv (fun u => phi ϱ L w u ^ 2)) u|
      ≤ ∫ u, (2 * (supDeriv ϱ / w) * |deriv (phi ϱ L w) u|
          + 2 * |deriv (deriv (phi ϱ L w)) u|) := by
        refine MeasureTheory.integral_mono hint_lhs hmaj fun u => ?_
        rw [hid u]
        have hsup := abs_deriv_phi_le hϱ hw0 hwL u
        have h1 : |2 * deriv (phi ϱ L w) u * deriv (phi ϱ L w) u|
            ≤ 2 * (supDeriv ϱ / w) * |deriv (phi ϱ L w) u| := by
          rw [abs_mul, abs_mul]
          rw [show |(2 : ℝ)| = 2 by norm_num]
          have habs0 : (0 : ℝ) ≤ |deriv (phi ϱ L w) u| := abs_nonneg _
          have := mul_le_mul_of_nonneg_right hsup habs0
          nlinarith
        have h2 : |2 * phi ϱ L w u * deriv (deriv (phi ϱ L w)) u|
            ≤ 2 * |deriv (deriv (phi ϱ L w)) u| := by
          rw [abs_mul, abs_mul]
          rw [show |(2 : ℝ)| = 2 by norm_num]
          have hφ01 : |phi ϱ L w u| ≤ 1 := by
            rw [abs_of_nonneg (phi_nonneg hϱ u)]
            exact phi_le_one hϱ u
          have habs0 : (0 : ℝ) ≤ |deriv (deriv (phi ϱ L w)) u| := abs_nonneg _
          nlinarith
        exact le_trans (abs_add_le _ _) (add_le_add h1 h2)
    _ = 2 * (supDeriv ϱ / w) * (∫ u, |deriv (phi ϱ L w) u|)
        + 2 * ∫ u, |deriv (deriv (phi ϱ L w)) u| := by
        rw [MeasureTheory.integral_add (hint_absphi'.const_mul _) (hint_absphi''.const_mul 2),
          MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul]
    _ = 2 * (supDeriv ϱ / w) * 2 + 2 * (2 * l1Deriv2 ϱ / w) := by
        rw [integral_abs_deriv_phi hϱ hw0 hwL, integral_abs_deriv2_phi hϱ hw0 hwL]
    _ = cRho ϱ / w := by
        rw [cRho_eq]
        field_simp
        ring

/-- [eq:phinorms]: "`c_ϱ (≥ 4)`". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
