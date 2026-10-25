# makeZetaReduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e77fdd678534419a5d9e67ff855b25979d4026288ddfc0e0f14e049b4a6b54e",
  "kind": "def",
  "lexical_name": "makeZetaReduce",
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
  "slug": "makezetareduce--f3ea88f1d9593cc6ffbf8572",
  "source": {
    "blob": "80dd26726f6355f44af9535c64e12a255ff5f39e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3ea88f1d9593cc6ffbf8572f7fc582ee740860d6b36c8b993bae2036a3590ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e77fdd678534419a5d9e67ff855b25979d4026288ddfc0e0f14e049b4a6b54e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def makeZetaReduce (a : FVarId) (b : Expr) : MetaM (Option LocalContext) := do
  let decl ← a.getDecl
  if decl.isLet then
    return none
  let bFVars := (← b.collectFVars.run {}).2
  let toRevert := (← collectForwardDeps #[.fvar a] (preserveOrder := true)).map (·.fvarId!)
  for y in toRevert do if bFVars.fvarSet.contains y then return none
  let oldLCtx ← getLCtx
  let newLCtx := toRevert.foldl (init := oldLCtx) (·.erase ·)
  let newLCtx := newLCtx.mkLetDecl decl.fvarId decl.userName decl.type b (kind := decl.kind)
  let newLCtx := toRevert.filter (· != a) |>.foldl (init := newLCtx) (·.addDecl <| oldLCtx.get! ·)
  return newLCtx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80dd26726f6355f44af9535c64e12a255ff5f39e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
