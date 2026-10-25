# eval_split_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82cedde7-d03b-ff1b-44d9-f4587359b21b",
  "kind": "theorem",
  "lexical_name": "eval_split_right",
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
  "slug": "eval-split-right--6f82878d81ff5a37bae227a5",
  "source": {
    "blob": "cd4f9172b9af1b9b93cd00002415ec2e848de599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f82878d81ff5a37bae227a55334980385115edf8000037bbe5a0c0cc23d5cb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82cedde7-d03b-ff1b-44d9-f4587359b21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_split_right (C : Segment V degree) (u t : UnitInterval) :
    (C.splitAt u).2.eval t = C.eval (rightParameter u t) := by
  have hhom :
    deCasteljau degree (C.splitRightSegment u).homogeneousRow t.1 =
        deCasteljau degree
          (splitRightRow degree C.homogeneousRow u.1) t.1 := by
      apply deCasteljau_congr_prefix
      intro i hi
      exact C.splitRightSegment_row_eq u hi
  have hsplit :
      deCasteljau degree (C.splitRightSegment u).homogeneousRow t.1 =
        deCasteljau degree C.homogeneousRow
          (u.1 + (1 - u.1) * t.1) :=
    hhom.trans (deCasteljau_splitRightRow degree C.homogeneousRow u.1 t.1)
  unfold splitAt eval numerator denominator
  rw [hsplit]
  rfl

end Segment

end

end Surface.BZ1.RecursiveRationalSubdivisionProbe

#print axioms Surface.BZ1.RecursiveRationalSubdivisionProbe.Segment.eval_split_left
#print axioms Surface.BZ1.RecursiveRationalSubdivisionProbe.Segment.eval_split_right
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4f9172b9af1b9b93cd00002415ec2e848de599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
