# actualAdjointColumnPrimitive_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7c51c99-9c08-fe2d-29f4-0fe7beb892a2",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_absolutelyContinuous",
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
  "slug": "actualadjointcolumnprimitive-absolutelycontinuous--090099be36f6e24742c9cb82",
  "source": {
    "blob": "d31f2c5844cf54b223ce90a262b822d69a748d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:090099be36f6e24742c9cb827978d443366d94139c8a9b7146814603142976fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c51c99-9c08-fe2d-29f4-0fe7beb892a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_absolutelyContinuous {A l : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ actualColumnUpper A) :
    AbsolutelyContinuousOnInterval (actualAdjointColumnPrimitive A)
      l (actualColumnUpper A) := by
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (-r / 2) *
      actualLogColumnPrefix A r) volume l (actualColumnUpper A) :=
    (column_intervalIntegrable hA hl hlb).continuousOn_mul
      (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r / 2))).continuousOn
  have hc : ContDiff ℝ 1 (fun s : ℝ => Real.exp (s / 2)) := by fun_prop
  exact hc.contDiffOn.absolutelyContinuousOnInterval.fun_mul
    (hi.absolutelyContinuousOnInterval_intervalIntegral (by simp))

/-- The upper anchored column solves the opposite-sign adjoint ODE AE. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31f2c5844cf54b223ce90a262b822d69a748d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
