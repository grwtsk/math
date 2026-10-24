# compactLaplace_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdbc6580-d0cb-b971-444b-b85b4dcf3c32",
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
  "slug": "compactlaplace-hasderivat--6095dc770711d398619aaab8",
  "source": {
    "blob": "7c0ad4455f08c506b892214654c7c4f78b3b4d98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6095dc770711d398619aaab8060a5a7acd73dc90c33ab1c56ff052f282a1f743",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdbc6580-d0cb-b971-444b-b85b4dcf3c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactLaplace_hasDerivAt (f : ℝ → ℝ) (hf : Continuous f)
    (hs : HasCompactSupport f) (z0 : ℂ) :
    HasDerivAt (compactLaplace f)
      (∫ x : ℝ, (f x : ℂ) * (Complex.exp (z0*(x : ℂ))*(x : ℂ))) z0 := by
  let F : ℂ → ℝ → ℂ := fun z x => (f x : ℂ)*Complex.exp (z*(x : ℂ))
  let F' : ℂ → ℝ → ℂ := fun z x => (f x : ℂ)*(Complex.exp (z*(x : ℂ))*(x : ℂ))
  let bound : ℝ → ℝ := fun x => ‖f x‖*|x|*Real.exp ((‖z0‖+1)*|x|)
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
      have hd : ‖z-z0‖ ≤ 1 := (Metric.mem_ball_iff_norm.mp hz).le
      calc
        ‖z‖ = ‖(z-z0)+z0‖ := by congr 1; ring
        _ ≤ ‖z-z0‖+‖z0‖ := norm_add_le _ _
        _ ≤ ‖z0‖+1 := by linarith
    have hex : ‖Complex.exp (z*(x : ℂ))‖ ≤ Real.exp ((‖z0‖+1)*|x|) := by
      refine (Complex.norm_exp_le_exp_norm _).trans (Real.exp_le_exp.mpr ?_)
      rw [norm_mul,Complex.norm_real,Real.norm_eq_abs]
      exact mul_le_mul_of_nonneg_right hnorm (abs_nonneg x)
    dsimp [F',bound]
    rw [norm_mul,norm_mul,Complex.norm_real,Complex.norm_real,Real.norm_eq_abs]
    calc
      ‖f x‖*(‖Complex.exp (z*(x : ℂ))‖*|x|) ≤
          ‖f x‖*(Real.exp ((‖z0‖+1)*|x|)*|x|) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hex (abs_nonneg x)) (norm_nonneg _)
      _ = _ := by ring
  have hdiff : ∀ᵐ x : ℝ ∂volume, ∀ z ∈ Metric.ball z0 1, HasDerivAt (F · x) (F' z x) z := by
    apply Eventually.of_forall
    intro x z _
    simpa only [F,F',id_eq,mul_one] using
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant33243c881ac1e5b6d77bcfd99373c4eaf65382f76d8b92acbd97d437c6174ce6.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c0ad4455f08c506b892214654c7c4f78b3b4d98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
