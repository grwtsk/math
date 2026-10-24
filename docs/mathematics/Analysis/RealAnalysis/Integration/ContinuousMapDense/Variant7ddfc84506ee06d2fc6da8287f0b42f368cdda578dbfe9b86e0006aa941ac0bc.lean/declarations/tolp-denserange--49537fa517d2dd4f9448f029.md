# toLp_denseRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bef8cb9-fdc5-1cab-9836-646218ffb677",
  "kind": "theorem",
  "lexical_name": "toLp_denseRange",
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
  "slug": "tolp-denserange--49537fa517d2dd4f9448f029",
  "source": {
    "blob": "42e34c708789a0e6253a72c3fe0cad5f477eeb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 373,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49537fa517d2dd4f9448f029464b958e2eb939e5ea349af738642077ccef3b10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bef8cb9-fdc5-1cab-9836-646218ffb677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLp_denseRange [μ.WeaklyRegular] [IsFiniteMeasure μ] :
    DenseRange (toLp p μ 𝕜 : (α →ᵇ E) →L[𝕜] Lp E p μ) := by
  haveI : NormedSpace ℝ E := RestrictScalars.normedSpace ℝ 𝕜 E
  rw [denseRange_iff_closure_range]
  suffices (LinearMap.range (toLp p μ 𝕜 : _ →L[𝕜] Lp E p μ)).toAddSubgroup.topologicalClosure = ⊤
    by exact congr_arg ((↑) : AddSubgroup (Lp E p μ) → Set (Lp E p μ)) this
  simpa [range_toLp p μ] using MeasureTheory.Lp.boundedContinuousFunction_dense E hp
set_option linter.uppercaseLean3 false in
#align bounded_continuous_function.to_Lp_dense_range BoundedContinuousFunction.toLp_denseRange

end BoundedContinuousFunction

namespace ContinuousMap

/-- Continuous functions are dense in `MeasureTheory.Lp`, `1 ≤ p < ∞`. This theorem assumes that
the domain is a compact space because otherwise `ContinuousMap.toLp` is undefined. Use
`BoundedContinuousFunction.toLp_denseRange` if the domain is not a compact space.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e34c708789a0e6253a72c3fe0cad5f477eeb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
