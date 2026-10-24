# compactLaplace_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7f2cf96-9456-2e2a-876e-b52ea3fb7a30",
  "kind": "theorem",
  "lexical_name": "compactLaplace_hasDerivAt",
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
  "slug": "compactlaplace-hasderivat--34ceb4895b5f62b208fc74ec",
  "source": {
    "blob": "fb666b266ffbe8f4ca8debc3caff7bc1192e2c2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ceb4895b5f62b208fc74ec9feb4e4c37d257619c866b68c8c0b0884725a099",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f2cf96-9456-2e2a-876e-b52ea3fb7a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactLaplace_hasDerivAt (f : ℝ → ℝ) (hf : Continuous f)
    (hs : HasCompactSupport f) (z0 : ℂ) :
    HasDerivAt (compactLaplace f)
      (∫ x : ℝ, (f x : ℂ) * (Complex.exp (z0*(x : ℂ))*(x : ℂ))) z0 := by
  let F : ℂ → ℝ → ℂ := fun z x => (f x : ℂ)*Complex.exp (z*(x : ℂ))
  let F' : ℂ → ℝ → ℂ := fun z x => (f x : ℂ)*(Complex.exp (z*(x : ℂ))*(x : ℂ))
  let bound : ℝ → ℝ := fun x => ‖f x‖ * |x| * Real.exp ((‖z0‖+1) * |x|)
  have hF : ∀ z, Continuous (F z) := by intro z; dsimp [F]; fun_prop
  have hF' : Continuous (F' z0) := by dsimp [F']; fun_prop
  have hb : Continuous bound := by dsimp [bound]; fun_prop
  have hbs : HasCompactSupport bound :=
    (hs.norm.mul_right).mul_right
  have hi := hb.integrable_of_hasCompactSupport (μ := volume) hbs
  have hbound : ∀ᵐ x : ℝ ∂volume, ∀ z ∈ Metric.ball z0 1, ‖F' z x‖ ≤ bound x := by
    apply Eventually.of_forall
    intro x z hz
    have hnorm : ‖z‖ ≤ ‖z0‖+1 := by
      have hd : ‖z-z0‖ ≤ 1 := by simpa only [dist_eq_norm] using (Metric.mem_ball.mp hz).le
      calc
        ‖z‖ = ‖(z-z0)+z0‖ := by congr 1; ring
        _ ≤ ‖z-z0‖+‖z0‖ := norm_add_le _ _
        _ ≤ ‖z0‖+1 := by linarith
    have hex : ‖Complex.exp (z*(x : ℂ))‖ ≤ Real.exp ((‖z0‖+1) * |x|) := by
      refine (Complex.norm_exp_le_exp_norm _).trans (Real.exp_le_exp.mpr ?_)
      rw [norm_mul,Complex.norm_real,Real.norm_eq_abs]
      exact mul_le_mul_of_nonneg_right hnorm (abs_nonneg x)
    dsimp [F',bound]
    rw [norm_mul,norm_mul,Complex.norm_real,Complex.norm_real,Real.norm_eq_abs]
    calc
      ‖f x‖*(‖Complex.exp (z*(x : ℂ))‖ * |x|) ≤
          ‖f x‖*(Real.exp ((‖z0‖+1) * |x|) * |x|) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hex (abs_nonneg x)) (norm_nonneg _)
      _ = _ := by rw [Real.norm_eq_abs]; ring
  have hdiff : ∀ᵐ x : ℝ ∂volume, ∀ z ∈ Metric.ball z0 1, HasDerivAt (F · x) (F' z x) z := by
    apply Eventually.of_forall
    intro x z _
    simpa only [F,F',id_eq,mul_one,one_mul] using
      (((hasDerivAt_id z).mul_const (x : ℂ)).cexp).const_mul (f x : ℂ)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds z0 (by norm_num : (0 : ℝ)<1))
    (Eventually.of_forall fun z => (hF z).aestronglyMeasurable)
    (compactLaplace_integrable f hf hs z0) hF'.aestronglyMeasurable
    hbound hi hdiff
  exact h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb666b266ffbe8f4ca8debc3caff7bc1192e2c2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
