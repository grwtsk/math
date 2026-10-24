# haveLebesgueDecompositionSMulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed99e9649dab9fa7c25e7d591b4a8165d74c33f0184554d06d71ced3b0cb7816",
  "kind": "instance",
  "lexical_name": "haveLebesgueDecompositionSMulRight",
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
  "slug": "havelebesguedecompositionsmulright--44d623d0b7a3e916cef9d3fb",
  "source": {
    "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 167,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44d623d0b7a3e916cef9d3fb420d28947698a5fd4f12964941c72d98b8e0b935",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed99e9649dab9fa7c25e7d591b4a8165d74c33f0184554d06d71ced3b0cb7816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance haveLebesgueDecompositionSMulRight (μ ν : Measure α) [HaveLebesgueDecomposition μ ν]
    (r : ℝ≥0) :
    μ.HaveLebesgueDecomposition (r • ν) where
  lebesgue_decomposition := by
    obtain ⟨hmeas, hsing, hadd⟩ := haveLebesgueDecomposition_spec μ ν
    by_cases hr : r = 0
    · exact ⟨⟨μ, 0⟩, measurable_const, by simp [hr], by simp⟩
    refine ⟨⟨μ.singularPart ν, r⁻¹ • μ.rnDeriv ν⟩, hmeas.const_smul _,
      hsing.mono_ac AbsolutelyContinuous.rfl smul_absolutelyContinuous, ?_⟩
    have : r⁻¹ • rnDeriv μ ν = ((r⁻¹ : ℝ≥0) : ℝ≥0∞) • rnDeriv μ ν := by simp [ENNReal.smul_def]
    rw [this, withDensity_smul _ hmeas, ENNReal.smul_def r, withDensity_smul_measure,
      ← smul_assoc, smul_eq_mul, ENNReal.coe_inv hr, ENNReal.inv_mul_cancel, one_smul]
    · exact hadd
    · simp [hr]
    · exact ENNReal.coe_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883724233c3fd89322f8347adcc92d1cab190c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
