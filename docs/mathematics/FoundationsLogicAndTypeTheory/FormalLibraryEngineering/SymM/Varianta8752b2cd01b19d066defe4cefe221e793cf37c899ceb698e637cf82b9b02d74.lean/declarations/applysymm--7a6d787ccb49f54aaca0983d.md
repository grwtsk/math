# applySymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d3ae40c2bb63d04934d0962bf6e726f88fe6d61b610eb23db17e0da63e39812",
  "kind": "def",
  "lexical_name": "applySymm",
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
  "slug": "applysymm--7a6d787ccb49f54aaca0983d",
  "source": {
    "blob": "201ad2082eac89cf007f7bb6a760619407f0b8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Varianta8752b2cd01b19d066defe4cefe221e793cf37c899ceb698e637cf82b9b02d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a6d787ccb49f54aaca0983df90a4842531f1d9be8ae7b8420ec31c1fa55ff02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Varianta8752b2cd01b19d066defe4cefe221e793cf37c899ceb698e637cf82b9b02d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d3ae40c2bb63d04934d0962bf6e726f88fe6d61b610eb23db17e0da63e39812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applySymm (e : Expr) : MetaM Expr := do
  let tgt <- instantiateMVars (← inferType e)
  let lems ← getSymmLems tgt
  let s ← saveState
  let act lem := do
        restoreState s
        let lem ← mkConstWithFreshMVarLevels lem
        let (args, _, body) ← withReducible <| forallMetaTelescopeReducing (← inferType lem)
        let .true ← isDefEq args.back! e | failure
        mkExpectedTypeHint (mkAppN lem args) (← instantiateMVars body)
  lems.toList.firstM act
    <|> throwError m!"No applicable symmetry lemma found for{indentExpr tgt}"
          ++ .note m!"Additional symmetry lemmas can be registered using the `[symm]` attribute"

end Lean.Expr

namespace Lean.MVarId

/--
Apply a symmetry lemma (i.e. marked with `@[symm]`) to a metavariable.

The type of `g` should be of the form `a ~ b`, and is used to index the symm lemmas.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Varianta8752b2cd01b19d066defe4cefe221e793cf37c899ceb698e637cf82b9b02d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Varianta8752b2cd01b19d066defe4cefe221e793cf37c899ceb698e637cf82b9b02d74.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201ad2082eac89cf007f7bb6a760619407f0b8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
