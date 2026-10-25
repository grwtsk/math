# nonPropHaveToLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6ca1fe4495de395bdb9dc844181ca6191b429599e396af7a38dd589487194c7",
  "kind": "def",
  "lexical_name": "nonPropHaveToLet",
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
  "slug": "nonprophavetolet--6936705f711242ddeac94ea9",
  "source": {
    "blob": "7d67dead73db10b84667b80bb602f1028ba87a2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6936705f711242ddeac94ea99fc0f3e9870df69c84b836e61e6d9cd0c86b8875",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6ca1fe4495de395bdb9dc844181ca6191b429599e396af7a38dd589487194c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def nonPropHaveToLet (e : Expr) : MetaM Expr := do
  Meta.transform e (pre := fun e => do
    if (← Meta.isProof e) then
      return .done e
    else if e.isLet then
      -- Recall that `Meta.transform` processes entire let telescopes,
      -- so we need to handle the telescope all at once.
      let lctx ← getLCtx
      let e' ← letTelescope e fun xs b => do
        let lctx' ← xs.foldlM (init := lctx) fun lctx' x => do
          let decl ← x.fvarId!.getDecl
          -- Clear the flag if it's not a prop.
          let decl' := decl.setNondep <| ← pure decl.isNondep <&&> Meta.isProp decl.type
          pure <| lctx'.addDecl decl'
        withLCtx' lctx' do
          mkLetFVars (usedLetOnly := false) (generalizeNondepLet := false) xs b
      return .continue e'
    else
      return .continue
  )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d67dead73db10b84667b80bb602f1028ba87a2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
