# isFiniteMeasure_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3fe3afd62b99037340cc32bb2018b0a7ed27afc587f3177036c5be0464f6621",
  "kind": "instance",
  "lexical_name": "isFiniteMeasure_sub",
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
  "slug": "isfinitemeasure-sub--a19f3ab345fce3cb01004409",
  "source": {
    "blob": "fb289e43b457df2bf498be6ed0e7a1bb4e3c5830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 145,
    "path": "GRWTSK/Analysis/MeasureTheory/Sub/Variant7255179e0ec6689998e84bb02b660d7499d67aeb71ee758a80914fc3142b5172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a19f3ab345fce3cb010044098c5e5dc939115da531614cc30795d20f16350036",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Sub/Variant7255179e0ec6689998e84bb02b660d7499d67aeb71ee758a80914fc3142b5172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3fe3afd62b99037340cc32bb2018b0a7ed27afc587f3177036c5be0464f6621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isFiniteMeasure_sub [IsFiniteMeasure μ] : IsFiniteMeasure (μ - ν) :=
  isFiniteMeasure_of_le μ sub_le

/-- See `sub_le_iff_le_add` for the case where both measures are finite, which does not need the
hypothesis `ν ≤ μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Sub/Variant7255179e0ec6689998e84bb02b660d7499d67aeb71ee758a80914fc3142b5172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Sub/Variant7255179e0ec6689998e84bb02b660d7499d67aeb71ee758a80914fc3142b5172.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb289e43b457df2bf498be6ed0e7a1bb4e3c5830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
