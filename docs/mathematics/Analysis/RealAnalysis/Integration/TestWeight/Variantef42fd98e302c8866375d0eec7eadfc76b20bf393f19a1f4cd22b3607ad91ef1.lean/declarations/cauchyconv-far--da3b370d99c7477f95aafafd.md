# cauchyConv_far

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e4d272-de2b-3f83-d2a0-78299d466331",
  "kind": "theorem",
  "lexical_name": "cauchyConv_far",
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
  "slug": "cauchyconv-far--da3b370d99c7477f95aafafd",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da3b370d99c7477f95aafafdb6a3601ff7e7408f75ef20c6566ee2c42507cb53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e4d272-de2b-3f83-d2a0-78299d466331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchyConv_far (a b : ℝ) {R : ℝ} (hR : 0 < R) :
    ∫ t in {t : ℝ | R ≤ |t - a|}, 1 / ((1 + (t - a) ^ 2) * (1 + (t - b) ^ 2))
      ≤ Real.pi / R ^ 2 := by
  have hg : Integrable (fun t : ℝ => 1 / R ^ 2 * (1 / (1 + (t - b) ^ 2))) :=
    (integrable_inv_one_add_sq_sub b).const_mul _
  calc ∫ t in {t : ℝ | R ≤ |t - a|}, 1 / ((1 + (t - a) ^ 2) * (1 + (t - b) ^ 2))
      ≤ ∫ t in {t : ℝ | R ≤ |t - a|}, 1 / R ^ 2 * (1 / (1 + (t - b) ^ 2)) := by
        refine setIntegral_mono_on (cauchyConv_integrable a b).integrableOn hg.integrableOn
          (measurableSet_far a R) fun t ht => ?_
        have ht : R ≤ |t - a| := ht
        have hq : 0 < 1 + (t - b) ^ 2 := by positivity
        have hRa : R ^ 2 ≤ 1 + (t - a) ^ 2 := by
          rw [← sq_abs (t - a)]; nlinarith [abs_nonneg (t - a)]
        rw [one_div_mul_one_div, one_div_le_one_div (by positivity) (by positivity)]
        exact mul_le_mul_of_nonneg_right hRa hq.le
    _ ≤ ∫ t : ℝ, 1 / R ^ 2 * (1 / (1 + (t - b) ^ 2)) :=
        setIntegral_le_integral hg (Eventually.of_forall fun t => by positivity)
    _ = Real.pi / R ^ 2 := by
        rw [integral_const_mul, integral_inv_one_add_sq_sub]; ring

/-! ## §B. paperFT helpers -/

/-- [eq:hfbound], first order: supp f ⊆ [−Λ, Λ], f ∈ C_c¹ ⇒ ‖h_f(z)‖·‖z‖ ≤ e^{|Im z|Λ}‖f′‖₁.
(Same statement and proof as Zeta23.Taper.norm_paperFT_mul_le.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
