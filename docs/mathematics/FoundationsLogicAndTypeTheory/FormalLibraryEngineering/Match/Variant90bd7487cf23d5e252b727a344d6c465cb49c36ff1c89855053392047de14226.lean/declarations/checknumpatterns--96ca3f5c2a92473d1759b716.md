# checkNumPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d152faa081377aa8b5c33956a4fd09f50bc7b4dfb4f61534e1b0f720a2a052e7",
  "kind": "def",
  "lexical_name": "checkNumPatterns",
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
  "slug": "checknumpatterns--96ca3f5c2a92473d1759b716",
  "source": {
    "blob": "5db035b1778fff6b7854151067e4d3b3754e15d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ca3f5c2a92473d1759b716155f9798624a9f8d3d0b047bb1abea9fbb1ce564",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d152faa081377aa8b5c33956a4fd09f50bc7b4dfb4f61534e1b0f720a2a052e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkNumPatterns (numDiscrs : Nat) (lhss : List AltLHS) : MetaM Unit := do
  for lhs in lhss do
    let doThrow (kind : String) := withExistingLocalDecls lhs.fvarDecls do
      throwIncorrectNumberOfPatternsAt lhs.ref kind numDiscrs lhs.patterns.length
        (lhs.patterns.map Pattern.toMessageData)
    if lhs.patterns.length < numDiscrs then
      doThrow "Not enough"
    else if lhs.patterns.length > numDiscrs then
      -- This case should be impossible, as an alternative with too many patterns will cause an
      -- error to be thrown in `Lean.Elab.Term.elabPatterns`
      doThrow "Too many"

/--
  Execute `k hs` where `hs` contains new equalities `h : lhs[i] = rhs[i]` for each `discrInfos[i] = some h`.
  Assume `lhs.size == rhs.size == discrInfos.size`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db035b1778fff6b7854151067e4d3b3754e15d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
