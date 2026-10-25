# warnIfUsesSorry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60ab5d43856e0757edd4f1754231c4cdf91f542b7273d23b18098a89a8396c84",
  "kind": "def",
  "lexical_name": "warnIfUsesSorry",
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
  "slug": "warnifusessorry--38e0083cb33c24bd3adf1538",
  "source": {
    "blob": "512ba0ff2cdf52843b9f5425ec636e94d15ab92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38e0083cb33c24bd3adf1538333abdd569b97e9224b62f2c32f75faf1b777ce5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60ab5d43856e0757edd4f1754231c4cdf91f542b7273d23b18098a89a8396c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def warnIfUsesSorry (decl : Declaration) : CoreM Unit := do
  if warn.sorry.get (← getOptions) then
    if !(← MonadLog.hasErrors) && decl.hasSorry then
      -- Find an actual sorry expression to use for `sorry`.
      -- That way the user can hover over it to see its type and use "go to definition" if it is a labeled sorry.
      let findSorry : StateRefT (Array (Bool × MessageData)) MetaM Unit := decl.forEachSorryM fun s => do
        let s' ← addMessageContext s
        modify fun arr => arr.push (s.isSyntheticSorry, s')
      let (_, sorries) ← findSorry |>.run #[] |>.run'
      -- Prefer reporting a synthetic sorry.
      -- These can appear without logged errors if `decl` is referring to declarations with elaboration errors;
      -- that's where a user should direct their focus.
      if let some (_, s) := sorries.find? (·.1) <|> sorries[0]? then
        logWarning <| .tagged `hasSorry m!"declaration uses `{s}`"
      else
        -- This case should not happen, but it ensures a warning will get logged no matter what.
        logWarning <| .tagged `hasSorry m!"declaration uses `sorry`"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512ba0ff2cdf52843b9f5425ec636e94d15ab92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
