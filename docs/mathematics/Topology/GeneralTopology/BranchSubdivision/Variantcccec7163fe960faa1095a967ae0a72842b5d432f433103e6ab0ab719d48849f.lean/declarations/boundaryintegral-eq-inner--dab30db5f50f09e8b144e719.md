# boundaryIntegral_eq_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56ac54a6-785f-0963-bc14-60a097d2b525",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1daca5f-5f5b-c3b8-a241-eb8f596632ec",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_eq_inner",
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
  "slug": "boundaryintegral-eq-inner--dab30db5f50f09e8b144e719",
  "source": {
    "blob": "895b733bb679fb6a458800744e769385f6e54f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dab30db5f50f09e8b144e71955e445b641464e827eae89b102b40be9ecba5b96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1daca5f-5f5b-c3b8-a241-eb8f596632ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_eq_inner
    (outer inner : OrderedRectangle)
    (h : Contains outer inner)
    (f : ℂ → ℂ)
    (hBottom : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left outer.bottom)
        (corner outer.right inner.bottom)))
    (hTop : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left inner.top)
        (corner outer.right outer.top)))
    (hLeft : DifferentiableOn ℂ f
      (closedRectangle
        (corner outer.left inner.bottom)
        (corner inner.left inner.top)))
    (hRight : DifferentiableOn ℂ f
      (closedRectangle
        (corner inner.right inner.bottom)
        (corner outer.right inner.top))) :
    outer.boundaryIntegral f = inner.boundaryIntegral f := by
  exact rectangleBoundaryIntegral_eq_innerRectangle f
    h.left_lt.le inner.left_lt_right.le h.right_lt.le
    h.bottom_lt.le inner.bottom_lt_top.le h.top_lt.le
    hBottom hTop hLeft hRight

end OrderedRectangle

end

end Surface.Core.ComplexAnalysis.Scratch

#print axioms Surface.Core.ComplexAnalysis.Scratch.four_rectangles_boundary_sum
#print axioms Surface.Core.ComplexAnalysis.Scratch.rectangleBoundaryIntegral_eq_innerRectangle
#print axioms Surface.Core.ComplexAnalysis.Scratch.rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn
#print axioms Surface.Core.ComplexAnalysis.Scratch.OrderedRectangle.boundaryIntegral_eq_inner
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantcccec7163fe960faa1095a967ae0a72842b5d432f433103e6ab0ab719d48849f.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `895b733bb679fb6a458800744e769385f6e54f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
