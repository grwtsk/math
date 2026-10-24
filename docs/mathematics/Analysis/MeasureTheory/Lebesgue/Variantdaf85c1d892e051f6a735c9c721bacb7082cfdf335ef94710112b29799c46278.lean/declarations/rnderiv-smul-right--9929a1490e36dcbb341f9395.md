# rnDeriv_smul_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8713bb-ec82-adca-b14a-e810a081960a",
  "kind": "theorem",
  "lexical_name": "rnDeriv_smul_right'",
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
  "slug": "rnderiv-smul-right--9929a1490e36dcbb341f9395",
  "source": {
    "blob": "8ca321c5b9b5af65d66972a10523cdc7988786c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 1017,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9929a1490e36dcbb341f9395d1d6165dc8b7b50124f4b8418e869737eecb09bd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8713bb-ec82-adca-b14a-e810a081960a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1017–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rnDeriv_smul_right' (ν μ : Measure α) [SigmaFinite ν] [SigmaFinite μ]
    {r : ℝ≥0} (hr : r ≠ 0) :
    ν.rnDeriv (r • μ) =ᵐ[μ] r⁻¹ • ν.rnDeriv μ := by
  refine (absolutelyContinuous_smul <| ENNReal.coe_ne_zero.2 hr).ae_le
    (?_ : ν.rnDeriv (r • μ) =ᵐ[r • μ] r⁻¹ • ν.rnDeriv μ)
  rw [← withDensity_eq_iff_of_sigmaFinite]
  · simp_rw [ENNReal.smul_def]
    rw [withDensity_smul _ (measurable_rnDeriv _ _)]
    suffices ν.singularPart (r • μ) + withDensity (r • μ) (rnDeriv ν (r • μ))
        = ν.singularPart (r • μ) + r⁻¹ • withDensity (r • μ) (rnDeriv ν μ) by
      rwa [add_right_inj] at this
    rw [← ν.haveLebesgueDecomposition_add (r • μ), singularPart_smul_right _ _ _ hr,
      ENNReal.smul_def r, withDensity_smul_measure, ← ENNReal.smul_def, ← smul_assoc,
      smul_eq_mul, inv_mul_cancel₀ hr, one_smul]
    exact ν.haveLebesgueDecomposition_add μ
  · exact (measurable_rnDeriv _ _).aemeasurable
  · exact (measurable_rnDeriv _ _).aemeasurable.const_smul _

/-- Radon-Nikodym derivative with respect to the scalar multiple of a measure.
See also `rnDeriv_smul_right_of_ne_top`, which has no hypothesis on `μ` but requires finite `ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean#L1017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca321c5b9b5af65d66972a10523cdc7988786c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
