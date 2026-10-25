# mkAuxLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6f4df77b13ef4345694ccf7d87f0a17197106804b2be64eeca0ba2679b63486",
  "kind": "def",
  "lexical_name": "mkAuxLemma",
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
  "slug": "mkauxlemma--9ca3940bd45c9aad9ce0bfb4",
  "source": {
    "blob": "903861c187102295f2e065adfc67ab6491a29c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variantcb27ad4b35109af129912eee7314d99ce4d576d3147ee2ce11b4ad1c459a5e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ca3940bd45c9aad9ce0bfb45e728eaf7d912eddc01568d4c8c25c6a8ea71c49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variantcb27ad4b35109af129912eee7314d99ce4d576d3147ee2ce11b4ad1c459a5e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6f4df77b13ef4345694ccf7d87f0a17197106804b2be64eeca0ba2679b63486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAuxLemma (levelParams : List Name) (type : Expr) (value : Expr) (kind? : Option Name := none)
    (cache := true) (inferRfl := false) (forceExpose := false) (defeq := false) : MetaM Name := do
  let env ← getEnv
  let s := auxLemmasExt.getState env
  let key := { type, isPrivate := !env.isExporting, defeq }
  let mkNewAuxLemma := do
    let auxName ← mkAuxDeclName (kind := kind?.getD `_proof)
    let decl :=
      if env.hasUnsafe type || env.hasUnsafe value then
        -- `result` contains unsafe code, thus we cannot use a theorem.
        Declaration.defnDecl {
          name        := auxName
          hints       := ReducibilityHints.opaque
          safety      := DefinitionSafety.unsafe
          levelParams, type, value
        }
      else
        Declaration.thmDecl {
          name := auxName
          levelParams, type, value
        }
    addDecl (forceExpose := forceExpose) decl
    if defeq then defeqAttr.setTag auxName
    if inferRfl then
      inferDefEqAttr auxName
    modifyEnv fun env => auxLemmasExt.modifyState env fun ⟨lemmas⟩ => ⟨lemmas.insert key (auxName, levelParams)⟩
    return auxName
  if cache then
    if let some (name, levelParams') := s.lemmas.find? key then
      if levelParams == levelParams' then
        return name
    -- private contexts may reuse public matchers
    if key.isPrivate then
      if let some (name, levelParams') := s.lemmas.find? { key with isPrivate := false } then
        if levelParams == levelParams' then
          return name
  mkNewAuxLemma

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variantcb27ad4b35109af129912eee7314d99ce4d576d3147ee2ce11b4ad1c459a5e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AuxLemma/Variantcb27ad4b35109af129912eee7314d99ce4d576d3147ee2ce11b4ad1c459a5e7a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `903861c187102295f2e065adfc67ab6491a29c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
