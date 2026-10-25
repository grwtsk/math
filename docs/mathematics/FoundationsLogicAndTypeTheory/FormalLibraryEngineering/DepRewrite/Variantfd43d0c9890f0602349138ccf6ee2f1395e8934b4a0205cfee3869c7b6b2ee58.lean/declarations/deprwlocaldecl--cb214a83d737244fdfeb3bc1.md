# depRwLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ab297c1bc6dcc78940324d0063f24286f6fc26b75efe086e24b02f397438856",
  "kind": "def",
  "lexical_name": "depRwLocalDecl",
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
  "slug": "deprwlocaldecl--cb214a83d737244fdfeb3bc1",
  "source": {
    "blob": "e694ff179c58bd373538d9e3f48bae26c18cdbbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 614,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb214a83d737244fdfeb3bc128b282764eb142d878aa814a43f60bdd33639008",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ab297c1bc6dcc78940324d0063f24286f6fc26b75efe086e24b02f397438856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def depRwLocalDecl (stx : Syntax) (symm : Bool) (fvarId : FVarId)
    (config : DepRewrite.Config := {}) : TacticM Unit := withMainContext do
  -- Note: we cannot execute `replaceLocalDecl` inside `Term.withSynthesize`.
  -- See issues https://github.com/leanprover-community/mathlib4/issues/2711 and https://github.com/leanprover-community/mathlib4/issues/2727.
  let rwResult ← Term.withSynthesize <| withMainContext do
    let e ← elabTerm stx none true
    let localDecl ← fvarId.getDecl
    (← getMainGoal).depRewrite localDecl.type e symm (config := config)
  let r ← (← getMainGoal).replaceLocalDecl fvarId rwResult.eNew rwResult.eqProof
  let mvarId' ← r.mvarId.changeLocalDecl r.fvarId (← withTransparency config.castTransparency
    (r.mvarId.withContext do cleanupCasts (← r.fvarId.getType)))
  replaceMainGoal (mvarId' :: rwResult.mvarIds)

/-- Elaborate `DepRewrite.Config`. -/
declare_config_elab elabDepRewriteConfig Config

@[tactic depRewriteSeq, inherit_doc depRewriteSeq]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DepRewrite/Variantfd43d0c9890f0602349138ccf6ee2f1395e8934b4a0205cfee3869c7b6b2ee58.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e694ff179c58bd373538d9e3f48bae26c18cdbbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
