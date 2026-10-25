# Alt.toImpure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51b7ab4730be123be8a85f5dd98012cbbb5ee5ab3564333deabbe4fa41cbfcda",
  "kind": "def",
  "lexical_name": "Alt.toImpure",
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
  "slug": "alt-toimpure--1c870ac71776dbb87b07c1e9",
  "source": {
    "blob": "0377ec665f828461c8bfa34ccaf7171754336330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c870ac71776dbb87b07c1e9d62a41deaea1a606a06c8273f7d6ac65ba2cb115",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51b7ab4730be123be8a85f5dd98012cbbb5ee5ab3564333deabbe4fa41cbfcda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Alt.toImpure (discr : FVarId) (alt : Alt .pure) : ToImpureM (Alt .impure) := do
  match alt with
  | .alt ctorName params k =>
    let ⟨ctorInfo, fields⟩ ← getCtorLayout ctorName
    let lowerParams (params : Array (LCNF.Param .pure)) (fields : Array CtorFieldInfo) :
        ToImpureM (Code .impure) := do
      let rec loop (i : Nat) : ToImpureM (Code .impure) := do
        match params[i]?, fields[i]? with
        | some param, some field =>
          let ⟨result, type⟩ := lowerProj discr ctorInfo field
          match result with
          | .erased =>
            addSubst param.fvarId .erased
            loop (i + 1)
          | _ =>
            let decl := ⟨param.fvarId, param.binderName, type, result⟩
            modifyLCtx fun lctx => lctx.addLetDecl decl
            return .let decl (← loop (i + 1))
        | none, none => k.toImpure
        | _, _ => panic! "mismatched fields and params"
      loop 0
    let body ← lowerParams params fields
    return .ctorAlt ctorInfo body
  | .default k => return .default (← k.toImpure)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0377ec665f828461c8bfa34ccaf7171754336330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
