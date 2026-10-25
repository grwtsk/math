# parseFromContents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad246f8b4938c85aff81c76e8332363fa0ea7e96612ab1e1dee6dee729f53bf2",
  "kind": "def",
  "lexical_name": "parseFromContents",
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
  "slug": "parsefromcontents--3e2331c4e3175467ad2f8f66",
  "source": {
    "blob": "10eef4ebd60c87041212cd92bd504bc5eb9a4de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e2331c4e3175467ad2f8f662c7c3dfb90a51cc3fd4cc28a3430ea52cd51e32d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad246f8b4938c85aff81c76e8332363fa0ea7e96612ab1e1dee6dee729f53bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseFromContents (p : ParserFn) (contents : String) : m Syntax := do
  let env ← getEnv
  let ictx := mkInputContext contents (← getFileName)
  let s := p.run ictx { env, options := ← getOptions } (getTokenTable env) (mkParserState contents)
  if !s.allErrors.isEmpty then
    throwError (s.toErrorMsg ictx)
  else if ictx.atEnd s.pos then
    pure s.stxStack.back
  else
    throwError ((s.mkError "end of input").toErrorMsg ictx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10eef4ebd60c87041212cd92bd504bc5eb9a4de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
