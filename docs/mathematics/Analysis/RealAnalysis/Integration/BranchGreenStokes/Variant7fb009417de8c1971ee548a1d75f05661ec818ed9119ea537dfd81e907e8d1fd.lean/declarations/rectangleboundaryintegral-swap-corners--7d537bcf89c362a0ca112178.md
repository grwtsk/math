# rectangleBoundaryIntegral_swap_corners

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ad00229494990e5bba8ef222ea218f7cb03f88e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96aa6f24-3b54-f4e5-0fa6-4154e1393953",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f158a7c5-1939-590c-b2c5-bcd5d3e65cf9",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_swap_corners",
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
  "slug": "rectangleboundaryintegral-swap-corners--7d537bcf89c362a0ca112178",
  "source": {
    "blob": "7ad00229494990e5bba8ef222ea218f7cb03f88e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d537bcf89c362a0ca1121780e771bf7db3539d31359f641ec4c81301761663c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f158a7c5-1939-590c-b2c5-bcd5d3e65cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_swap_corners
    (f : ℂ → ℂ) (z w : ℂ) :
    Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral f w z =
      Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral f z w := by
  have hH (y : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral f w z y =
        -Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral f z w y := by
    unfold Surface.Core.ComplexAnalysis.rectangleHorizontalIntegral
    exact intervalIntegral.integral_symm z.re w.re
  have hV (x : ℝ) :
      Surface.Core.ComplexAnalysis.rectangleVerticalIntegral f w z x =
        -Surface.Core.ComplexAnalysis.rectangleVerticalIntegral f z w x := by
    unfold Surface.Core.ComplexAnalysis.rectangleVerticalIntegral
    rw [intervalIntegral.integral_symm z.im w.im]
    simp
  unfold Surface.Core.ComplexAnalysis.rectangleBoundaryIntegral
  rw [hH, hH, hV, hV]
  abel

/-- Reversing exactly the real coordinate reverses the raw rectangular
orientation.  Thus future positive-orientation theorems must order their
corner coordinates or canonicalize them first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad00229494990e5bba8ef222ea218f7cb03f88e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
