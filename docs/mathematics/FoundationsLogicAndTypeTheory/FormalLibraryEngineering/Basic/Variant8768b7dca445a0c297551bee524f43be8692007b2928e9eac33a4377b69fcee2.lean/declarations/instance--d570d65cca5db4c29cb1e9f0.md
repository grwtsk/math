# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7aae88666a7d755d1ef91bdb645be1a0c4fa146f8431b9ad77711af0fbd1baef",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d570d65cca5db4c29cb1e9f0",
  "source": {
    "blob": "1603411e8560fb5b185f853295fe5f8ae120e862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d570d65cca5db4c29cb1e9f005e6e96092120c6236c395806d0efba595831d9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7aae88666a7d755d1ef91bdb645be1a0c4fa146f8431b9ad77711af0fbd1baef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToMessageData ProjectionRule where toMessageData
  | .rename x₁ x₂ x₃ x₄ => .group <| .nest 1 <|
    "rename ⟨" ++ .joinSep [toMessageData x₁, toMessageData x₂, toMessageData x₃, toMessageData x₄]
      ("," ++ Format.line) ++ "⟩"
  | .add x₁ x₂ => .group <| .nest 1 <|
    "+⟨" ++ .joinSep [toMessageData x₁, toMessageData x₂] ("," ++ Format.line) ++ "⟩"
  | .erase x₁ x₂ => .group <| .nest 1 <|
    "-⟨" ++ .joinSep [toMessageData x₁, toMessageData x₂] ("," ++ Format.line) ++ "⟩"
  | .prefix x₁ x₂ => .group <| .nest 1 <|
    "prefix ⟨" ++ .joinSep [toMessageData x₁, toMessageData x₂] ("," ++ Format.line) ++ "⟩"

/-- Returns the projection information of a structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1603411e8560fb5b185f853295fe5f8ae120e862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
