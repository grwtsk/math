# expandConfigDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adedc524ba361d35dc9f121bf8686b3d85e0e23559d8cc916cc4c48a5cf02b0a",
  "kind": "def",
  "lexical_name": "expandConfigDecl",
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
  "slug": "expandconfigdecl--1a176db5744c336c58eb880c",
  "source": {
    "blob": "bdb521fd64f012da1addc9415d3ee20abeffecb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant173c45aba89aedfe85a97916a8b5c1ff156181093bbd34af7052005c1a6df4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a176db5744c336c58eb880cb6204deae450268abbd38d21b5453c82de4cf9b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant173c45aba89aedfe85a97916a8b5c1ff156181093bbd34af7052005c1a6df4d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adedc524ba361d35dc9f121bf8686b3d85e0e23559d8cc916cc4c48a5cf02b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public meta def expandConfigDecl : Macro := fun stx => do
  let `($mods:declModifiers configuration%$tk $declId $bs* $[$ty?]?
      $[extends $ps?,* $[$xty?]?]? $[where $[$ctor?]? $fs?*]? $drv) := stx
    | Macro.throwError "ill-formed configuration declaration"
  withRef tk do
  let bvs ← expandBinders bs
  let structId : Ident := ⟨declId.raw[0]⟩
  let structTy := Syntax.mkApp structId (bvs.map (⟨·.mkArgument⟩))
  let views : Array FieldView ← (fs?.getD #[]).mapM mkFieldView
  let ps := ps?.getD <| TSepArray.mk #[]
  let views ← ps.getElems.foldlM (init := views) (·.push <$> mkParentFieldView ·)
  let fields := views.filterMap (·.decl?)
  let struct ← `(
    $mods:declModifiers structure $declId $bs* $[$ty?]?
    extends $ps,* $(xty?.join)? where $(ctor?.join)? $fields* $drv:optDeriving
  )
  let vis? := mods.raw[2].getOptional?.map (⟨·⟩)
  let auxDecls ← mkConfigAuxDecls vis? structId bs.size structTy views
  let cmds := #[struct] ++ auxDecls
  return mkNullNode cmds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant173c45aba89aedfe85a97916a8b5c1ff156181093bbd34af7052005c1a6df4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant173c45aba89aedfe85a97916a8b5c1ff156181093bbd34af7052005c1a6df4d4.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdb521fd64f012da1addc9415d3ee20abeffecb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
