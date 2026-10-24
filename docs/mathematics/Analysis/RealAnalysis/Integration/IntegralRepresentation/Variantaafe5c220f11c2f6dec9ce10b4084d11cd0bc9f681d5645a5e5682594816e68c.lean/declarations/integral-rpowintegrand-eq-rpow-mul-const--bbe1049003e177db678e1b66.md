# integral_rpowIntegrand₀₁_eq_rpow_mul_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4377f13-512e-f2ff-27c6-e97c71d739f0",
  "kind": "lemma",
  "lexical_name": "integral_rpowIntegrand₀₁_eq_rpow_mul_const",
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
  "slug": "integral-rpowintegrand-eq-rpow-mul-const--bbe1049003e177db678e1b66",
  "source": {
    "blob": "5acbc2ea0489dab0c3527605f737ba783a708bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe1049003e177db678e1b66d894a186f22bec1c4d09fad94f35a8ef0d8aa199",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4377f13-512e-f2ff-27c6-e97c71d739f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_rpowIntegrand₀₁_eq_rpow_mul_const (hp : p ∈ Ioo 0 1) (hx : 0 ≤ x) :
    (∫ t in Ioi 0, rpowIntegrand₀₁ p t x) = x ^ p * (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1) := by
  -- We use the change of variables formula with `f t = x * t`. Here `g = rpowIntegrand₀₁ p · x`.
  obtain (rfl | hx) := hx.eq_or_lt
  · simp [rpowIntegrand₀₁, Real.zero_rpow hp.1.ne']
  suffices ∫ t in Ioi 0, ((rpowIntegrand₀₁ p · x) ∘ (x * ·)) t * x =
      x ^ p * (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1) by
    rwa [integral_comp_mul_deriv_Ioi (by fun_prop), mul_zero] at this
    · exact tendsto_id.const_mul_atTop hx
    · simpa using fun t _ ↦ hasDerivWithinAt_id t (Ioi t) |>.const_mul x
    · simpa [Set.image_mul_left_Ioi hx] using continuousOn_rpowIntegrand₀₁ hp hx.le
    · simpa [Set.image_mul_left_Ici hx] using integrableOn_rpowIntegrand₀₁_Ici hp hx.le
    · simp only [Function.comp, rpowIntegrand₀₁_apply_mul' hp hx.le]
      rw [integrableOn_congr_fun (rpowIntegrand₀₁_apply_mul_eqOn_Ici hp hx.le) measurableSet_Ici]
      exact Integrable.mul_const (integrableOn_rpowIntegrand₀₁_Ici hp zero_le_one) _
  have heqOn : EqOn (fun t => rpowIntegrand₀₁ p (x * t) x * x)
      (fun t => (rpowIntegrand₀₁ p t 1) * x ^ p) (Ioi 0) :=
    EqOn.mono Ioi_subset_Ici_self (rpowIntegrand₀₁_apply_mul_eqOn_Ici hp hx.le)
  simp only [Function.comp, setIntegral_congr_fun measurableSet_Ioi heqOn,
    ← smul_eq_mul (b := x ^ p), integral_smul_const]
  rw [smul_eq_mul, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5acbc2ea0489dab0c3527605f737ba783a708bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
