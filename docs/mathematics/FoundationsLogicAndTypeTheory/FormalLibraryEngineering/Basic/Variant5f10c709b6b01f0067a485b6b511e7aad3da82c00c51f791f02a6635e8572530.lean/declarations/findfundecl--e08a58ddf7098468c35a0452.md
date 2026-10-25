# findFunDecl'?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdcc7b6f43eaba51c847812c9aa3ab8154b1c88310baaa3288c2aa11863b24bb",
  "kind": "def",
  "lexical_name": "findFunDecl'?",
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
  "slug": "findfundecl--e08a58ddf7098468c35a0452",
  "source": {
    "blob": "721d07892662f9f7423d37333ae0d92fac25e700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e08a58ddf7098468c35a0452ee61b03a0713b9cd1fd8cb87dd7fc1e16ceb9f20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdcc7b6f43eaba51c847812c9aa3ab8154b1c88310baaa3288c2aa11863b24bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findFunDecl'? (fvarId : FVarId) : CompilerM (Option (FunDecl pu)) := do
  if let some decl ← findFunDecl? (pu := pu) fvarId then
    return decl
  else if let some (.fvar fvarId' #[]) ← findLetValue? (pu := pu) fvarId then
    findFunDecl'? fvarId'
  else
    return none

/-
-- TODO: cleanup
partial def findExpr (e : LetValue) : CompilerM LetValue := do
  match e with
  | .fvar fvarId args =>
    if args.isEmpty then
      let some decl ← findLetDecl? fvarId | return e
      findExpr decl.value
    else
      return e
  | _ => return e
-/
end Simp
end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `721d07892662f9f7423d37333ae0d92fac25e700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
