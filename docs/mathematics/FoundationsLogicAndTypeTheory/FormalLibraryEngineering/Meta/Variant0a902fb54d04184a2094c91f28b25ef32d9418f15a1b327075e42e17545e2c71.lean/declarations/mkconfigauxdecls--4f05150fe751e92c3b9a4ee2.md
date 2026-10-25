# mkConfigAuxDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0f9f022d75de8972d63c20dfbdd0b23c7359fda44e39e8712bd3b3c30891e06",
  "kind": "def",
  "lexical_name": "mkConfigAuxDecls",
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
  "slug": "mkconfigauxdecls--4f05150fe751e92c3b9a4ee2",
  "source": {
    "blob": "66830d47345f4f9ed71b16815fca707d7b0606e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f05150fe751e92c3b9a4ee2329920b1bd23fddb23174287a5fc097225c7d6ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0f9f022d75de8972d63c20dfbdd0b23c7359fda44e39e8712bd3b3c30891e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def mkConfigAuxDecls
  (vis? : Option (TSyntax ``visibility))
  (structId : Ident) (structArity : Nat) (structTy : Term) (views : Array FieldView)
: MacroM (Array Command) := do
  let data : FieldMetadata := {}
  -- `..` is used to avoid missing pattern error from an incomplete match.
  -- Such errors are too verbose, so we prefer errors on use of the missing field.
  let structPat ← `({$[$(views.map (·.id)):ident],* ..})
  let data ← views.foldlM (init := data) fun {cmds, fields} view => do
    let {id, ids, type, defVal, parent, ..} := view
    let projId := mkIdentFrom id <| id.getId.modifyBase (structId.getId ++ · |>.str "_proj")
    let cmds ← cmds.push <$> `(
       $[$vis?:visibility]? def $projId:ident : ConfigProj $structTy $type where
        get cfg := cfg.$id
        set val cfg := {cfg with $id := val}
        modify f cfg := {cfg with $id := f cfg.$id}
        mkDefault := fun $structPat => $defVal
    )
    let realNameLit := Name.quoteFrom id id.getId
    if parent then
      let instId := mkIdentFrom id <| id.getId.modifyBase (structId.getId ++ · |>.str "instConfigParent")
      let cmds ← cmds.push <$> `(
        $[$vis?:visibility]? instance $instId:ident : ConfigParent $structTy $type := ⟨$projId⟩
      )
      let fields ← withRef fields `($(fields) |>.append (ConfigFields.fields $type))
      let fields ← withRef fields `($(fields) |>.push {
        name := $realNameLit
        realName := $realNameLit
        parent := true
        : ConfigFieldInfo
      })
      return {cmds, fields}
    else
      let data := {cmds, fields}
      let addName canonical data id := do
        let {cmds, fields} := data
        let nameLit := Name.quoteFrom id id.getId
        let instId := mkIdentFrom id <|
          id.getId.modifyBase (structId.getId ++ · |>.str "instConfigField")
        let cmds ← cmds.push <$> `(
           $[$vis?:visibility]? instance $instId:ident : ConfigField $structTy $nameLit $type := ⟨$projId⟩
        )
        let fields ← withRef fields `($(fields) |>.push {
          name := $nameLit
          realName := $realNameLit
          canonical := $(quote canonical)
          : ConfigFieldInfo
        })
        return {cmds, fields}
      if h : 0 < ids.size then
        let data ← addName true data (ids[0]'h)
        let data ← ids.foldlM (start := 1) (addName false) data
        return data
      else
        return data
  let fieldsId := mkIdentFrom structId <| structId.getId.modifyBase (·.str "_fields")
  let fieldsDef ← `( $[$vis?:visibility]? def $fieldsId:ident := $(data.fields))
  let instId := mkIdentFrom structId <| structId.getId.modifyBase (·.str "instConfigFields")
  let fieldsInst ← `( $[$vis?:visibility]? instance $instId:ident : ConfigFields $structTy := ⟨$fieldsId⟩)
  let instId := mkIdentFrom structId <| structId.getId.modifyBase (·.str "instConfigInfo")
  let structNameLit : Term := ⟨mkNode ``Term.doubleQuotedName #[mkAtom "`", mkAtom "`", structId]⟩
  let info ← `({fields := $fieldsId, arity := $(quote structArity)})
  let infoInst ← `( $[$vis?:visibility]? instance $instId:ident : ConfigInfo $structNameLit := $info)
  let instId := mkIdentFrom structId <| structId.getId.modifyBase (·.str "instEmptyCollection")
  let emptyInst ← `( $[$vis?:visibility]? instance $instId:ident : EmptyCollection $structTy := ⟨{}⟩)
  return data.cmds.push fieldsDef |>.push fieldsInst |>.push infoInst |>.push emptyInst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant0a902fb54d04184a2094c91f28b25ef32d9418f15a1b327075e42e17545e2c71.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66830d47345f4f9ed71b16815fca707d7b0606e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
