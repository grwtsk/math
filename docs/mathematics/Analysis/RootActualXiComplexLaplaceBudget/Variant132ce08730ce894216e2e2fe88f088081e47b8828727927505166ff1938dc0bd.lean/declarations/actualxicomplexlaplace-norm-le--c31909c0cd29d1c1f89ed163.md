# actualXiComplexLaplace_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c67a34c-17fd-521f-9333-021233265fd7",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_norm_le",
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
  "slug": "actualxicomplexlaplace-norm-le--c31909c0cd29d1c1f89ed163",
  "source": {
    "blob": "372816e046dda93308414e56a3ba1bc7c607e77e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 72,
    "path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c31909c0cd29d1c1f89ed1631b6d5e9180ec11c117e854f68dac70dda77a5cd9",
  "verification": {
    "reference": "docs/verification/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c67a34c-17fd-521f-9333-021233265fd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_norm_le {z : ℂ} (hz : 1 / 2 < z.re) :
    ‖actualXiComplexLaplace z‖ ≤ 2 * actualXiExponentialEnvelopeConstant *
      Real.exp (-(z.re - 1 / 2) * Real.log 7) / (z.re - 1 / 2) := by
  have hF := actualXiComplexLaplace_integrableOn hz
  have hD : IntegrableOn (fun t : ℝ =>
      2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t))
      (Ioi (Real.log 7)) :=
    (integrableOn_exp_mul_Ioi (by linarith : -(z.re - 1 / 2) < 0) (Real.log 7)).const_mul _
  have hh : (∫ t in Ioi (Real.log 7),
      ‖(actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))‖) ≤
      ∫ t in Ioi (Real.log 7),
        2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t) := by
    apply integral_mono_ae hF.norm hD
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact actualXiComplexLaplaceKernel_norm_le z ht.le
  unfold actualXiComplexLaplace
  apply (norm_integral_le_integral_norm _).trans
  apply hh.trans_eq
  rw [integral_const_mul,
    integral_exp_mul_Ioi (by linarith : -(z.re - 1 / 2) < 0)]
  ring

end
end FormalResearch.RiemannHypothesis.RootActualXiComplexLaplaceBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372816e046dda93308414e56a3ba1bc7c607e77e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
