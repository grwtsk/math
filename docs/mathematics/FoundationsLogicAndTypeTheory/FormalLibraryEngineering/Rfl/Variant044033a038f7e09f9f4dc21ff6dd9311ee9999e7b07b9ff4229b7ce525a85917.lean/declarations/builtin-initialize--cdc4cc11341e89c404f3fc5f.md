# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fde38b451a134ca33b32b4d492802722b955a593be50d55619d050e51edab746",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--cdc4cc11341e89c404f3fc5f",
  "source": {
    "blob": "28c185a740da33776ba82fa46b4ec600106123e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdc4cc11341e89c404f3fc5fb920f999357c8bcb5a1d60e86ad585a29fd920ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fde38b451a134ca33b32b4d492802722b955a593be50d55619d050e51edab746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerBuiltinAttribute {
  name := `refl
  descr := "reflexivity relation"
  add := fun decl _ kind => MetaM.run' do
    let declTy := (← getConstInfo decl).type
    let (_, _, targetTy) ← withReducible <| forallMetaTelescopeReducing declTy
    let fail := throwError
      "`[refl]` attribute only applies to lemmas of the form `x ∼ x`, but this declaration is not:\
        {inlineExprTrailing declTy}"
    let .app (.app rel lhs) rhs := targetTy | fail
    if let .app (.const ``Eq [_]) _ := rel then
      throwError "`[refl]` attribute may not be used on `Eq.refl`"
    unless ← withNewMCtxDepth <| isDefEq lhs rhs do fail
    let key ← DiscrTree.mkPath rel
    reflExt.add (decl, key) kind
}

open Elab Tactic

/-- `MetaM` version of the `rfl` tactic.

This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, equality or another relation which has a reflexive lemma tagged with the
attribute [refl].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant044033a038f7e09f9f4dc21ff6dd9311ee9999e7b07b9ff4229b7ce525a85917.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c185a740da33776ba82fa46b4ec600106123e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
