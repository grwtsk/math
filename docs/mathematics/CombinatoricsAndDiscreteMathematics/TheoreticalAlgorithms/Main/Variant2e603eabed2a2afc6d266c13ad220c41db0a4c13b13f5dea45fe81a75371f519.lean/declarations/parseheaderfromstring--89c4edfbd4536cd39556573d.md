# parseHeaderFromString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4f9ed72bf35ed2f10e790894e57abcc5138a0ca2bd289770f324f48080ad44b",
  "kind": "def",
  "lexical_name": "parseHeaderFromString",
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
  "slug": "parseheaderfromstring--89c4edfbd4536cd39556573d",
  "source": {
    "blob": "84ef88a1e784d3939ea9cccb7dcf29aeff1b44c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89c4edfbd4536cd39556573dc3ff430d5e3cb4bdfa19033d7696c58e99f1bb61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4f9ed72bf35ed2f10e790894e57abcc5138a0ca2bd289770f324f48080ad44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseHeaderFromString (text path : String) :
    IO (System.FilePath × Parser.InputContext ×
      TSyntaxArray ``Parser.Module.import × String.Pos) := do
  let inputCtx := Parser.mkInputContext text path
  let (header, parserState, msgs) ← Parser.parseHeader inputCtx
  if !msgs.toList.isEmpty then -- skip this file if there are parse errors
    msgs.forM fun msg => msg.toString >>= IO.println
    throw <| .userError "parse errors in file"
  -- the insertion point for `add` is the first newline after the imports
  let insertion := header.raw.getTailPos?.getD parserState.pos
  let insertion := text.findAux (· == '\n') text.endPos insertion + ⟨1⟩
  pure (path, inputCtx, .mk header.raw[2].getArgs, insertion)

/-- Parse a source file to extract the location of the import lines, for edits and error messages.

Returns `(path, inputCtx, imports, endPos)` where `imports` is the `Lean.Parser.Module.import` list
and `endPos` is the position of the end of the header.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ef88a1e784d3939ea9cccb7dcf29aeff1b44c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
