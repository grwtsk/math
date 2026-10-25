# warnUnused

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96cc5591f3b7407bff2a7b415c402f8f194378cab875f2f846c928797e957d6a",
  "kind": "def",
  "lexical_name": "warnUnused",
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
  "slug": "warnunused--8352758e20bde0d7b29c537f",
  "source": {
    "blob": "a620b76ed32474d95e50710fd4493f22bf4dc594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedSimpArgs/Variant8141e412d3ffe4c10754b3f46b69b4594f962344fd345ac98d9a71c80c4b9e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8352758e20bde0d7b29c537fee18687fcacbd1e39a50c89c1bcce922f1a49e12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedSimpArgs/Variant8141e412d3ffe4c10754b3f46b69b4594f962344fd345ac98d9a71c80c4b9e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96cc5591f3b7407bff2a7b415c402f8f194378cab875f2f846c928797e957d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def warnUnused (stx : Syntax) (i : Nat) : CoreM Unit := do
  let stx : TSyntax `tactic := ⟨stx⟩
  let simpArgs := Tactic.getSimpParams stx
  unless i < simpArgs.size do
    throwError "Index {i} out of bounds for simp arguments of {stx}"
  let argStx := simpArgs[i]!
  let msg := m!"This simp argument is unused:{indentD argStx}"
  let mut otherArgs : Array Syntax := #[]
  for h : j in *...simpArgs.size do if j != i then
    otherArgs := otherArgs.push simpArgs[j]
  let stx' := Tactic.setSimpParams stx otherArgs
  let suggestion : Meta.Hint.Suggestion := stx'
  let suggestion := { suggestion with span? := stx, diffGranularity := .none }
  let mut hint ← MessageData.hint "Omit it from the simp argument list." #[ suggestion ]
  -- Add hint about `←`
  let isInv := argStx.getKind == ``Lean.Parser.Tactic.simpLemma && !argStx[1].isNone
  if isInv then
    hint := hint ++ .note m!"Simp arguments with `←` have the additional effect of removing \
      the other direction from the simp set, even if the simp argument itself is unused. \
      If the hint above does not work, try replacing `←` with `-` to only get that effect \
      and silence this warning."
  logLint Tactic.linter.unusedSimpArgs argStx (msg ++ hint)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedSimpArgs/Variant8141e412d3ffe4c10754b3f46b69b4594f962344fd345ac98d9a71c80c4b9e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedSimpArgs/Variant8141e412d3ffe4c10754b3f46b69b4594f962344fd345ac98d9a71c80c4b9e11.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a620b76ed32474d95e50710fd4493f22bf4dc594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
