# affine_shift_sends_raw_to_spectral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e91d1a6-a167-2f7b-84c5-a498b589694b",
  "kind": "theorem",
  "lexical_name": "affine_shift_sends_raw_to_spectral",
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
  "slug": "affine-shift-sends-raw-to-spectral--23e5fd2300832e64105bf0b2",
  "source": {
    "blob": "9329a97bb2924aaeb880f1132b44ab425bb0c5a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/CriticalCoordinateNormalization/Variant21502e287da46ca5/AffineShiftEquality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e5fd2300832e64105bf0b29012e29e7121ae83c0d26847df4a9ade202ad0fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/CriticalCoordinateNormalization/Variant21502e287da46ca5/AffineShiftEquality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e91d1a6-a167-2f7b-84c5-a498b589694b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_shift_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (A : Folder.DerivedSheaf.AffineCriticalShift L) :
    A.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.affine_shift_sends_raw_to_spectral A

end GRWTSK.Analysis.RealAnalysis.RealFunctions.CriticalCoordinateNormalization.Variant21502e287da46ca5
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/CriticalCoordinateNormalization/Variant21502e287da46ca5/AffineShiftEquality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/CriticalCoordinateNormalization/Variant21502e287da46ca5/AffineShiftEquality.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9329a97bb2924aaeb880f1132b44ab425bb0c5a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
