# elabInclude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea213a6db4071c15ceb233c3098f01922e3377b7df51e97e7226b42de7d26774",
  "kind": "def",
  "lexical_name": "elabInclude",
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
  "slug": "elabinclude--79da3e31654a1d9f47bdb0cc",
  "source": {
    "blob": "5c934363894991f60574ad47ab04c5bd4afd44c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79da3e31654a1d9f47bdb0cc6f48c493dd32395739e6c44bed482d9b0c5b5f81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea213a6db4071c15ceb233c3098f01922e3377b7df51e97e7226b42de7d26774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab Lean.Parser.Command.include] def elabInclude : CommandElab
  | `(Lean.Parser.Command.include| include $ids*) => do
    let sc ← getScope
    let vars ← sc.varDecls.flatMapM getBracketedBinderIds
    let mut uids := #[]
    for id in ids do
      if let some idx := vars.findIdx? (· == id.getId) then
        uids := uids.push sc.varUIds[idx]!
      else
        throwError "invalid 'include', variable `{id}` has not been declared in the current scope"
    modifyScope fun sc => { sc with
      includedVars := sc.includedVars ++ uids.toList
      omittedVars := sc.omittedVars.filter (!uids.contains ·) }
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c934363894991f60574ad47ab04c5bd4afd44c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
