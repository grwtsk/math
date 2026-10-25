# decodeTargetDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1080edc2f14fde9d6efdc71f7553d79351581ff8c577193318b9afdc168db9e",
  "kind": "def",
  "lexical_name": "decodeTargetDecls",
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
  "slug": "decodetargetdecls--2bdc85a9a2e6afb54f2563e9",
  "source": {
    "blob": "6f71007adf3d52a827763c246fd0f0ba924699bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 438,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bdc85a9a2e6afb54f2563e942541a79ed458f4aa0bacc690974d08067e039c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1080edc2f14fde9d6efdc71f7553d79351581ff8c577193318b9afdc168db9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decodeTargetDecls
  (pkg : Name) (prettyName : String) (t : Table)
: DecodeM (Array (PConfigDecl pkg) × DNameMap (NConfigDecl pkg)) := do
  let r : DecodeTargetState pkg := {}
  let r ← go r LeanLib.keyword LeanLib.configKind LeanLibConfig.decodeToml (by simp)
  let r ← go r LeanExe.keyword LeanExe.configKind LeanExeConfig.decodeToml (by simp)
  let r ← go r InputFile.keyword InputFile.configKind InputFileConfig.decodeToml (by simp)
  let r ← go r InputDir.keyword InputDir.configKind InputDirConfig.decodeToml (by simp)
  return (r.decls, r.map)
where
  go (r : DecodeTargetState pkg) kw kind
      (decode : {n : Name} → Table → DecodeM (ConfigType kind pkg n))
      (h : DataType kind = OpaqueConfigTarget kind) := do
    let some tableArrayVal := t.find? kw | return r
    let some vals ← tryDecode? tableArrayVal.decodeValueArray | return r
    vals.foldlM (init := r) fun r val => do
      let some t ← tryDecode? val.decodeTable | return r
      let some name ← tryDecode? <| stringToLegalOrSimpleName <$> t.decode `name
        | return r
      if let some orig := r.map.get? name then
        logDecodeErrorAt val.ref s!"{prettyName}: \
          target '{name}' was already defined as a '{orig.kind}', \
          but then redefined as a '{kind}'"
        return r
      else
        let config ← @decode name t
        let decl : NConfigDecl pkg name :=
          -- Safety: By definition, for declarative configurations, the type of a package target
          -- is its configuration's data kind (i.e., `CustomData pkg name = DataType kind`).
          -- In the equivalent Lean configuration, this would hold by type family axiom.
          unsafe {pkg, name, kind, config, wf_data := fun _ => ⟨lcProof, h⟩}
        -- Check that executables have distinct root module names
        let exeRoots ← id do
          if h : kind = LeanExe.configKind then
            let exeConfig : LeanExeConfig name := cast (by rw [h]; rfl) config
            if let some origExe := r.exeRoots.get? exeConfig.root then
              logDecodeErrorAt val.ref s!"{prettyName}: \
                executable '{name}' has the same root module '{exeConfig.root}' as \
                executable '{origExe}'"
              return r.exeRoots
            else
              return r.exeRoots.insert exeConfig.root name
          else
            return r.exeRoots
        return {
          decls := r.decls.push decl.toPConfigDecl
          map := r.map.insert name decl
          exeRoots
        }

/-! ## Root Loader -/

/-- Load a Lake configuration from a file written in TOML. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variantb9cfc30a6d6d5fcdbcf03a2f5c0294433b67f9080aca93154957bd0690b9c182.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f71007adf3d52a827763c246fd0f0ba924699bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
