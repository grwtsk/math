# physicalGrowingXiHead_eq_head_add_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6bffbd9-cf61-c9b5-5c13-887c522e085c",
  "kind": "theorem",
  "lexical_name": "physicalGrowingXiHead_eq_head_add_trace",
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
  "slug": "physicalgrowingxihead-eq-head-add-trace--d04e3c7a204bfbfe735414e5",
  "source": {
    "blob": "614b3a307d846bc01681b89dc61e8bc2ec343f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d04e3c7a204bfbfe735414e509e9049fc6d135a8c415616babebe909d761c348",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6bffbd9-cf61-c9b5-5c13-887c522e085c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalGrowingXiHead_eq_head_add_trace {A : ℝ} (hA : 91 ≤ A) :
    physicalGrowingXiHead A = growingXiHead A + growingXiInteriorTrace A := by
  obtain ⟨hU, _⟩ := floor_orders hA
  have hp : 0 < (⌊A ^ 2⌋₊ : ℝ) := by linarith
  have hH := Real.log_le_log (by norm_num : (0 : ℝ) < 7) hU
  have he := physicalXiHead_eq_trace_sub_primitive (by linarith : 0 < A) hH
  rw [Real.exp_log hp] at he
  unfold physicalGrowingXiHead growingXiHead growingXiInteriorTrace
  linarith only [he]

/-- Exact physical additivity at the original floor-square cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `614b3a307d846bc01681b89dc61e8bc2ec343f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
