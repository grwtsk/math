# hasDerivAt_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4f68d8e-91cb-04fc-3d86-321c8ae0ca08",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_kernel",
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
  "slug": "hasderivat-kernel--c23e25f7d03f0b27a50f7593",
  "source": {
    "blob": "28cb1e86a7b4b71d993a7934b75cf9604b369aec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 142,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23e25f7d03f0b27a50f759333ba72bcefde29a69e38ccc6e5c11739ac3a04c3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4f68d8e-91cb-04fc-3d86-321c8ae0ca08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_kernel {a b : ℝ} (ha : 1 < a) (hab : a ≤ b) (z : ℂ) :
    HasDerivAt (kernel a b) (logMoment a b z) z := by
  let U : Set ℂ := {w | w.re < z.re + 1}
  have hU : U ∈ 𝓝 z :=
    (isOpen_lt Complex.continuous_re continuous_const).mem_nhds (by
      change z.re < z.re + 1
      linarith)
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := density) (F' := fun w t ↦ density w t * (Real.log t : ℂ))
    (bound := fun _ ↦ Real.log b * densityBound a b (z.re + 1)) hU
    (Eventually.of_forall fun w ↦ (density_intervalIntegrable ha hab w).def'.aestronglyMeasurable)
    (density_intervalIntegrable ha hab z)
    (weighted_density_intervalIntegrable ha hab z).def'.aestronglyMeasurable
    (Eventually.of_forall fun t ht w hw ↦ by
      have ht' : t ∈ Ioc a b := (uIoc_of_le hab) ▸ ht
      exact norm_weighted_density_le ha ⟨ht'.1.le, ht'.2⟩ (le_of_lt hw))
    intervalIntegrable_const
    (Eventually.of_forall fun t _ w _ ↦ hasDerivAt_density w t)
  exact h.2

/-- Entire means complex differentiable at every parameter, including zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinKernel.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28cb1e86a7b4b71d993a7934b75cf9604b369aec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
