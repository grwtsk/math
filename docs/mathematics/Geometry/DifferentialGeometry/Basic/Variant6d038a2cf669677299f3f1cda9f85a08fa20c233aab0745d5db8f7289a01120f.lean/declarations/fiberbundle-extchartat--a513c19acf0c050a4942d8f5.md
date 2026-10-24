# FiberBundle.extChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16c53637-9501-0066-18be-902221e442bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d61ae524-af17-191c-8978-fffa70ae1aff",
  "kind": "theorem",
  "lexical_name": "FiberBundle.extChartAt",
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
  "slug": "fiberbundle-extchartat--a513c19acf0c050a4942d8f5",
  "source": {
    "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a513c19acf0c050a4942d8f54b5d12fa9cf809f3eb3930f587ab607b016d2103",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d61ae524-af17-191c-8978-fffa70ae1aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem FiberBundle.extChartAt (x : TotalSpace F E) :
    extChartAt (IB.prod 𝓘(𝕜, F)) x =
      (trivializationAt F E x.proj).toPartialEquiv ≫
        (extChartAt IB x.proj).prod (PartialEquiv.refl F) := by
  simp_rw [extChartAt, FiberBundle.chartedSpace_chartAt, extend]
  simp only [PartialEquiv.trans_assoc, mfld_simps]
  -- Porting note: should not be needed
  rw [PartialEquiv.prod_trans, PartialEquiv.refl_trans]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b07b763caa8b753341a002288853ff79a8652d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
