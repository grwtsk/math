# checkValidAutoBoundImplicitName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8ca3b520511153c56cd2115c7dc211e627e4d988e1c8171af9629cfb1490722",
  "kind": "def",
  "lexical_name": "checkValidAutoBoundImplicitName",
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
  "slug": "checkvalidautoboundimplicitname--6e5b109cf70efe5d9d958e69",
  "source": {
    "blob": "19cf7da3dc2279ac911d174b9dc3a88db1b51853",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e5b109cf70efe5d9d958e6993819dd4fb5a26bcb7683a60d6cb2b6ac500c919",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8ca3b520511153c56cd2115c7dc211e627e4d988e1c8171af9629cfb1490722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkValidAutoBoundImplicitName (n : Name) (allowed : Bool) (relaxed : Bool) : Except MessageData Bool :=
  match n with
  | .str .anonymous s =>
    if s.isEmpty then
      .ok false
    else if allowed && (relaxed || isValidAutoBoundSuffix s) then
      .ok true
    else if !allowed then
      .error <| .note m!"It is not possible to treat `{.ofConstName n}` as an implicitly bound variable here because the `autoImplicit` option is set to `{.ofConstName ``false}`."
    else
      .error <| .note m!"It is not possible to treat `{.ofConstName n}` as an implicitly bound variable here because it has multiple characters while the `relaxedAutoImplicit` option is set to `{.ofConstName ``false}`."
  | _ => .ok false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19cf7da3dc2279ac911d174b9dc3a88db1b51853` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
