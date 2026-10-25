# ParsedProjectionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f06b57fc0c10887988ec8a64a716f2fa00418e633d48ff2e43dd8436b3b803d",
  "kind": "structure",
  "lexical_name": "ParsedProjectionData",
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
  "slug": "parsedprojectiondata--bc08220cda772076d3272967",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc08220cda772076d3272967f44e51c444924fe7c27f55e8298aa491b79eafd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f06b57fc0c10887988ec8a64a716f2fa00418e633d48ff2e43dd8436b3b803d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ParsedProjectionData where
  /-- name for this projection used in the structure definition -/
  strName : Name
  /-- syntax that might have provided `strName` -/
  strStx : Syntax := .missing
  /-- name for this projection used in the generated `simp` lemmas -/
  newName : Name
  /-- syntax that provided `newName` -/
  newStx : Syntax := .missing
  /-- will simp lemmas be generated for with (without specifically naming this?) -/
  isDefault : Bool := true
  /-- is the projection name a prefix? -/
  isPrefix : Bool := false
  /-- projection expression -/
  expr? : Option Expr := none
  /-- the list of projection numbers this expression corresponds to -/
  projNrs : Array Nat := #[]
  /-- is this a projection that is changed by the user? -/
  isCustom : Bool := false

/-- Turn `ParsedProjectionData` into `ProjectionData`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
