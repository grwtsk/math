# withDensity_rnDeriv_toReal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c4fa7f-6ef4-269c-cfce-d50dc93a9a7a",
  "kind": "theorem",
  "lexical_name": "withDensity_rnDeriv_toReal_eq",
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
  "slug": "withdensity-rnderiv-toreal-eq--bc5651b9b4fc0c9f0fc99716",
  "source": {
    "blob": "b22a2fd8433e6af553a819db0af5731f6beb56b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc5651b9b4fc0c9f0fc997163919c2916e8238005cb685ec4441c10cae780b13",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c4fa7f-6ef4-269c-cfce-d50dc93a9a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensity_rnDeriv_toReal_eq {μ ν : Measure α} [IsFiniteMeasure μ]
    [HaveLebesgueDecomposition μ ν] (h : μ ≪ ν) {i : Set α} (hi : MeasurableSet i) :
    (∫ x in i, (μ.rnDeriv ν x).toReal ∂ν) = (μ i).toReal := by
  rw [integral_toReal, ← withDensity_apply _ hi, withDensity_rnDeriv_eq μ ν h]
  · measurability
  · refine' ae_lt_top (μ.measurable_rnDeriv ν)
      (lt_of_le_of_lt (lintegral_mono_set i.subset_univ) _).ne
    rw [← withDensity_apply _ MeasurableSet.univ, withDensity_rnDeriv_eq μ ν h]
    exact measure_lt_top _ _
#align measure_theory.measure.with_density_rn_deriv_to_real_eq MeasureTheory.Measure.withDensity_rnDeriv_toReal_eq

end Measure

namespace SignedMeasure

open Measure VectorMeasure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb97b19621b7fd6a3c2c3791aa9e506f3ba2f1a9b50662662da5ed3960d28b47d.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22a2fd8433e6af553a819db0af5731f6beb56b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
