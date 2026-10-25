# processLeadingOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75032c71448638f257c50a49fba23e92a95db9975a3864e2a0017029d4b9476e",
  "kind": "def",
  "lexical_name": "processLeadingOption",
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
  "slug": "processleadingoption--986ce99c7019b4136b472df3",
  "source": {
    "blob": "2a48ee4bd60f7c3de098c30eb1d4cde15158b0f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cli/Variant9bb2f248683f5c030e05c2ac8469d9c2804a3111f2de25e33a067aeba7c2e932.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:986ce99c7019b4136b472df33d62774a564f28c24c828104486e56468236c4b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CLI/Variant9bb2f248683f5c030e05c2ac8469d9c2804a3111f2de25e33a067aeba7c2e932.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75032c71448638f257c50a49fba23e92a95db9975a3864e2a0017029d4b9476e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def processLeadingOption (handle : String → m PUnit) : m PUnit := do
  match (← getArgs) with
  | [] => pure ()
  | arg :: args =>
    if arg.chars.length > 1 && String.Pos.Raw.get arg 0 == '-' then -- `-(.+)`
      setArgs args
      handle arg

/--
Process the leading options of the remaining argument list.
Consumes empty leading arguments in the argument list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CLI/Variant9bb2f248683f5c030e05c2ac8469d9c2804a3111f2de25e33a067aeba7c2e932.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cli/Variant9bb2f248683f5c030e05c2ac8469d9c2804a3111f2de25e33a067aeba7c2e932.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a48ee4bd60f7c3de098c30eb1d4cde15158b0f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
