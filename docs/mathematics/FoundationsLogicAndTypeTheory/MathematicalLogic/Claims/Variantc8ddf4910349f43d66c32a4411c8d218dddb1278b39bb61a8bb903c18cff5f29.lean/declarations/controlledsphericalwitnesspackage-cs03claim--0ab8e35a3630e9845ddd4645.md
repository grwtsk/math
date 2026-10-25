# ControlledSphericalWitnessPackage.cs03Claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b5ff3f-a92d-e29f-702d-17a72cc25251",
  "kind": "theorem",
  "lexical_name": "ControlledSphericalWitnessPackage.cs03Claim",
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
  "slug": "controlledsphericalwitnesspackage-cs03claim--0ab8e35a3630e9845ddd4645",
  "source": {
    "blob": "df12ebcd950ec40ec4a54236d0679bb99f5fa5dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ab8e35a3630e9845ddd4645e76b9db6d04b0c1cd740649963b488e9589ad12a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b5ff3f-a92d-e29f-702d-17a72cc25251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ControlledSphericalWitnessPackage.cs03Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS03Claim W :=
  W.sphere1Compact

/-- Selected-carrier compactness discharges the branch-relative CS-04 claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variantc8ddf4910349f43d66c32a4411c8d218dddb1278b39bb61a8bb903c18cff5f29.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df12ebcd950ec40ec4a54236d0679bb99f5fa5dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
