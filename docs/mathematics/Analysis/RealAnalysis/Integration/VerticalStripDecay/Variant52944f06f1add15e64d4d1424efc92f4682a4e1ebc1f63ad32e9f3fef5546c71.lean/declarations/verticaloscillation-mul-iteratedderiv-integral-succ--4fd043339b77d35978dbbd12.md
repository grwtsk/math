# verticalOscillation_mul_iteratedDeriv_integral_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c0b2390-7f50-7dc6-0cf5-2cc3d34d6173",
  "kind": "lemma",
  "lexical_name": "verticalOscillation_mul_iteratedDeriv_integral_succ",
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
  "slug": "verticaloscillation-mul-iteratedderiv-integral-succ--4fd043339b77d35978dbbd12",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fd043339b77d35978dbbd1212664025cfeda0022e189eac0c1d6f027d3c62f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c0b2390-7f50-7dc6-0cf5-2cc3d34d6173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma verticalOscillation_mul_iteratedDeriv_integral_succ
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) (n : ℕ) :
    (Complex.I * (t : ℂ)) *
        (∫ x : ℝ,
          iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x) =
      -∫ x : ℝ,
        iteratedDeriv (n + 1)
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
          verticalOscillation t x := by
  let u : ℝ → ℂ :=
    iteratedDeriv n (g.laplaceSliceSchwartz sigma : ℝ → ℂ)
  let u' : ℝ → ℂ :=
    iteratedDeriv (n + 1)
      (g.laplaceSliceSchwartz sigma : ℝ → ℂ)
  let v : ℝ → ℂ := verticalOscillation t
  let v' : ℝ → ℂ :=
    fun x ↦ (Complex.I * (t : ℂ)) * verticalOscillation t x
  have hsmooth : ContDiff ℝ ∞
      (g.laplaceSliceSchwartz sigma : ℝ → ℂ) :=
    (g.laplaceSliceSchwartz sigma).smooth ⊤
  have hu : ∀ x ∈ tsupport v, HasDerivAt u (u' x) x := by
    intro x hx
    have hd :=
      (hsmooth.differentiable_iteratedDeriv n
        (mod_cast ENat.coe_lt_top n) x).hasDerivAt
    simpa only [u, u', ← congrFun (iteratedDeriv_succ
      (f := (g.laplaceSliceSchwartz sigma : ℝ → ℂ))
      (n := n)) x] using hd
  have hv : ∀ x ∈ tsupport u, HasDerivAt v (v' x) x := by
    intro x hx
    exact hasDerivAt_verticalOscillation t x
  have huv : Integrable (u * v) := by
    change Integrable (fun x : ℝ ↦
      iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x)
    exact
      integrable_iteratedDeriv_mul_verticalOscillation g sigma t n
  have hu'v : Integrable (u' * v) := by
    change Integrable (fun x : ℝ ↦
      iteratedDeriv (n + 1)
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
        verticalOscillation t x)
    exact
      integrable_iteratedDeriv_mul_verticalOscillation
        g sigma t (n + 1)
  have huv' : Integrable (u * v') := by
    have h :=
      (integrable_iteratedDeriv_mul_verticalOscillation
        g sigma t n).const_mul (Complex.I * (t : ℂ))
    refine h.congr ?_
    filter_upwards with x
    dsimp [u, v']
    ring
  have hibp :=
    MeasureTheory.integral_mul_deriv_eq_deriv_mul_of_integrable
      (u := u) (v := v) (u' := u') (v' := v')
      hu hv huv' hu'v huv
  rw [show
      (∫ x : ℝ, u x * v' x) =
        (Complex.I * (t : ℂ)) * ∫ x : ℝ, u x * v x by
      rw [← integral_const_mul]
      apply integral_congr_ae
      filter_upwards with x
      simp only [v', mul_assoc]
      ring] at hibp
  exact hibp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
