# mkIntModLawfulPreOrdThmPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91572cbd88a6a45166bc05f617b3c61010940ccbfcd3b2bd400effa299d232d6",
  "kind": "def",
  "lexical_name": "mkIntModLawfulPreOrdThmPrefix",
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
  "slug": "mkintmodlawfulpreordthmprefix--ce9363b5d2650c6c5f732ece",
  "source": {
    "blob": "6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 196,
    "path": "GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce9363b5d2650c6c5f732ece22cac29f6c86aafffe3396d921e93f00505e78c3",
  "verification": {
    "reference": "docs/verification/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91572cbd88a6a45166bc05f617b3c61010940ccbfcd3b2bd400effa299d232d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkIntModLawfulPreOrdThmPrefix (declName : Name) : ProofM Expr := do
  let s ← getStruct
  return mkApp8 (mkConst declName [s.u]) s.type s.intModuleInst (← getLEInst) (← getLTInst) (← getLawfulOrderLTInst) (← getIsPreorderInst) (← getOrderedAddInst) (← getContext)

/--
Returns the prefix of a theorem with name `declName` where the first five arguments are
`{α} [IntModule α] [LE α] [LT α] [LawfulOrderLT α] [IsLinearOrder α] [OrderedAdd α] (ctx : Context α)`
This is the most common theorem prefix at `Linarith.lean`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
