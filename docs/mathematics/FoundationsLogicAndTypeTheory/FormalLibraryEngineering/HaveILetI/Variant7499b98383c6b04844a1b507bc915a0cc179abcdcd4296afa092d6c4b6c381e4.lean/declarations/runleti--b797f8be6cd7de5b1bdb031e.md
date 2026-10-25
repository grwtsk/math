# runLetI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf2232ce2e89f7e78b081b3af0ac1fd628ef70b94d38f2fe89306447c490e226",
  "kind": "def",
  "lexical_name": "runLetI",
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
  "slug": "runleti--b797f8be6cd7de5b1bdb031e",
  "source": {
    "blob": "4c077f78974e4d60de4d7ea97da65e88fcf9ebd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveILetI/Variant7499b98383c6b04844a1b507bc915a0cc179abcdcd4296afa092d6c4b6c381e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b797f8be6cd7de5b1bdb031e1b8c2e49d4268550c22d1b16418ccf36c4a8c0fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveILetI/Variant7499b98383c6b04844a1b507bc915a0cc179abcdcd4296afa092d6c4b6c381e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf2232ce2e89f7e78b081b3af0ac1fd628ef70b94d38f2fe89306447c490e226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runLetI (tk : Syntax) (c : TSyntax ``letConfig) (d : TSyntax ``letDecl) : TacticM Unit := do
  evalTactic (← `(tactic| letI $c:letConfig $d:letDecl))
  if getLinterValue linter.style.haveILetI (← getLinterOptions) then
    withMainContext do
    if ← isProp (← getMainTarget) then
      let suggs ← Hint.mkSuggestionsMessage #[{toTryThisSuggestion := "let"}] tk none false
      logLint linter.style.haveILetI (← getRef) m!"Try this: {suggs}\n\n\
        The goal is a proposition, so `let` is preferred over `letI`.\n\
        The difference between `let` and `letI` is that `letI` inlines the value.\n\
        But this is not relevant for proofs because of proof irrelevance."

@[tactic_alt Parser.Tactic.tacticLetI__]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveILetI/Variant7499b98383c6b04844a1b507bc915a0cc179abcdcd4296afa092d6c4b6c381e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveILetI/Variant7499b98383c6b04844a1b507bc915a0cc179abcdcd4296afa092d6c4b6c381e4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c077f78974e4d60de4d7ea97da65e88fcf9ebd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
