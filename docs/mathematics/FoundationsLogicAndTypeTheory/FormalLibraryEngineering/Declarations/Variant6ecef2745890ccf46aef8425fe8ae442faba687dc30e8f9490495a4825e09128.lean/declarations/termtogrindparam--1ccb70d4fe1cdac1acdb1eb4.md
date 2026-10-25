# termToGrindParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0837ca9443e3a349682d2801cbaab5dd7286d97b90e9abc38d611452beb9db29",
  "kind": "def",
  "lexical_name": "termToGrindParam",
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
  "slug": "termtogrindparam--1ccb70d4fe1cdac1acdb1eb4",
  "source": {
    "blob": "7a3ca29a2dba64302076428151b82ea4878868ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ccb70d4fe1cdac1acdb1eb41e42e8a068d2ad07b539b25fb26a8b5feed98549",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0837ca9443e3a349682d2801cbaab5dd7286d97b90e9abc38d611452beb9db29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def termToGrindParam (t : Syntax) : Syntax :=
  -- grindLemma := ppGroup((Attr.grindMod ppSpace)? term)
  -- grindParam := grindErase <|> grindLemmaMin <|> grindLemma <|> anchor
  -- With no modifier, the first child is a null node
  -- If t is a simple identifier, wrap as `(id t)` to force term interpretation
  let t' : Syntax := if t.isIdent then
      -- Create `id t` application - this ensures grind sees it as a term, not an e-match candidate
      mkNode ``Lean.Parser.Term.app #[mkIdent `id, mkNullNode #[t]]
    else t
  let grindLemma := mkNode ``Lean.Parser.Tactic.grindLemma #[mkNullNode, t']
  mkNode ``Lean.Parser.Tactic.grindParam #[grindLemma]

/--
Define a pass that tries replacing a specific tactic with `grind`.

`tacticName` is a human-readable name for the tactic, for example "linarith".
This can be used to group messages together, so that `ring`, `ring_nf`, `ring1`, ...
all produce the same message.

`tacticKind` is the `SyntaxNodeKind` for the tactic's main parser,
for example `Mathlib.Tactic.linarith`.

If `extractArgs` is provided, it extracts term arguments from the original tactic
(e.g., `linarith [X, Y]`) and passes them to grind (e.g., `grind [X, Y]`).
Local hypotheses are filtered out since grind uses them automatically.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3ca29a2dba64302076428151b82ea4878868ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
