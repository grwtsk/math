# actualXiComplexLaplace_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ffb065e-507d-4371-ec00-8f05e62169b7",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_integrableOn",
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
  "slug": "actualxicomplexlaplace-integrableon--96967ea981e847b0c429596f",
  "source": {
    "blob": "6f903dd770834fdbccfd7ebbe4769a406c2f21eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96967ea981e847b0c429596ffb9536f257930953aec33035ae9fca395435cbac",
  "verification": {
    "reference": "docs/verification/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ffb065e-507d-4371-ec00-8f05e62169b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_integrableOn {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hD : IntegrableOn (fun t : ℝ =>
      2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t))
      (Ioi (Real.log 7)) :=
    (integrableOn_exp_mul_Ioi (by linarith : -(z.re - 1 / 2) < 0) (Real.log 7)).const_mul _
  have hc : ContinuousOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
    exact ((Complex.continuous_ofReal.comp_continuousOn primitive_continuousOn_Ici).mul
      (by fun_prop)).mono Ioi_subset_Ici_self
  apply hD.mono' (hc.aestronglyMeasurable measurableSet_Ioi)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact actualXiComplexLaplaceKernel_norm_le z ht.le

/-- The initial-domain actual transform has an explicit unconditional complex norm budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f903dd770834fdbccfd7ebbe4769a406c2f21eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
