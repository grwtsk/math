# isEquivalentFunDecl?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a5aafac272e2a44af32056b6d3efd27c33fcff975d4f1997983ddb97f40138f",
  "kind": "def",
  "lexical_name": "isEquivalentFunDecl?",
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
  "slug": "isequivalentfundecl--f69dc4b2b1ee678ebcc8206b",
  "source": {
    "blob": "8afe5a3ee9e4da445eed71342b63d5b50fd1a308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f69dc4b2b1ee678ebcc8206b522eafb42668f23fa2c183aa132e2d39ba14cf84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a5aafac272e2a44af32056b6d3efd27c33fcff975d4f1997983ddb97f40138f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isEquivalentFunDecl? (decl : FunDecl .pure) : FixParamM (Option Nat) := do
  let .let { fvarId, value := (.fvar funFvarId args), .. } k := decl.value | return none
  if args.size != decl.params.size then return none
  let .return retFVarId := k | return none
  if retFVarId != fvarId then return none
  let some (.val funIdx) := (← read).assignment.get? funFvarId | return none
  for h : i in [:decl.params.size] do
    let param := decl.params[i]
    -- TODO: Eliminate this dynamic bounds check.
    let arg := args[i]!
    if arg != .fvar param.fvarId && arg != .erased then return none
  return some funIdx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant80c1406dd1146086e052786bddba93d9068d823b170b6704acf61eb796bcdcbb.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afe5a3ee9e4da445eed71342b63d5b50fd1a308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
