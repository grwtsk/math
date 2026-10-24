# rectangleBoundaryIntegral_swap_real_orientation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c91fea9d-010d-526b-f7cf-4147663dea35",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_swap_real_orientation",
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
  "slug": "rectangleboundaryintegral-swap-real-orientation--b1e34912057953dc66ec98cc",
  "source": {
    "blob": "6595560da3198c8e04890468f33a3129f29fedc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1e34912057953dc66ec98cc096c3d780734cd5f102caaecba39f7b2da269430",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c91fea9d-010d-526b-f7cf-4147663dea35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_swap_real_orientation
    (f : ℂ → ℂ) (z w : ℂ) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
        f ⟨w.re, z.im⟩ ⟨z.re, w.im⟩ =
      -Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral f z w := by
  have hH (y : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral
          f ⟨w.re, z.im⟩ ⟨z.re, w.im⟩ y =
        -Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral f z w y := by
    unfold Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral
    exact intervalIntegral.integral_symm z.re w.re
  have hV (x : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleVerticalIntegral
          f ⟨w.re, z.im⟩ ⟨z.re, w.im⟩ x =
        Surface.Core.ComplexAnalysis.rectangleVerticalIntegral f z w x := by
    rfl
  unfold Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
  rw [hH, hH, hV, hV]
  dsimp
  abel

/-- Circle-orientation calibration.  This is positive for every nonzero
signed radius because negating the radius only shifts the parameter by
`Real.pi`; it does not reverse the traversal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant91e9c90ede4d4f5051eb66841aa4a1eb11a9e1131bad38f882c016bb8dfd140d.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6595560da3198c8e04890468f33a3129f29fedc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
