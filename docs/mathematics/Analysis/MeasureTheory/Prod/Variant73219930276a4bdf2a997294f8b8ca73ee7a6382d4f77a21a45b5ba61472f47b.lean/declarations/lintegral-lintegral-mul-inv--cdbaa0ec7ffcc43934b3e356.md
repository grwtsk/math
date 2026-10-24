# lintegral_lintegral_mul_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4542784-8671-552e-4435-10ef092541a0",
  "kind": "theorem",
  "lexical_name": "lintegral_lintegral_mul_inv",
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
  "slug": "lintegral-lintegral-mul-inv--cdbaa0ec7ffcc43934b3e356",
  "source": {
    "blob": "16a4065bfb41689e592b6a16c2146123b88df3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 203,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdbaa0ec7ffcc43934b3e35619eac97fc04b0e24a5a4620c0a72fe7d4f1a90e6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4542784-8671-552e-4435-10ef092541a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_lintegral_mul_inv [IsMulLeftInvariant ν] (f : G → G → ℝ≥0∞)
    (hf : AEMeasurable (uncurry f) (μ.prod ν)) :
    (∫⁻ x, ∫⁻ y, f (y * x) x⁻¹ ∂ν ∂μ) = ∫⁻ x, ∫⁻ y, f x y ∂ν ∂μ := by
  have h : Measurable fun z : G × G => (z.2 * z.1, z.1⁻¹) :=
    (measurable_snd.mul measurable_fst).prod_mk measurable_fst.inv
  have h2f : AEMeasurable (uncurry fun x y => f (y * x) x⁻¹) (μ.prod ν) :=
    hf.comp_quasiMeasurePreserving (measurePreserving_mul_prod_inv μ ν).quasiMeasurePreserving
  simp_rw [lintegral_lintegral h2f, lintegral_lintegral hf]
  conv_rhs => rw [← (measurePreserving_mul_prod_inv μ ν).map_eq]
  symm
  exact
    lintegral_map' (hf.mono' (measurePreserving_mul_prod_inv μ ν).map_eq.absolutelyContinuous)
      h.aemeasurable
#align measure_theory.lintegral_lintegral_mul_inv MeasureTheory.lintegral_lintegral_mul_inv
#align measure_theory.lintegral_lintegral_add_neg MeasureTheory.lintegral_lintegral_add_neg

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a4065bfb41689e592b6a16c2146123b88df3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
