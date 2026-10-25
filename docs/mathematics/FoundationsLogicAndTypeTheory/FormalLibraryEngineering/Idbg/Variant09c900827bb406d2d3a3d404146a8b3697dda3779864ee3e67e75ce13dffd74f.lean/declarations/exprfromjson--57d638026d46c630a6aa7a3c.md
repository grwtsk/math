# exprFromJson?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d36b5bf35716cc4da33d498da1457fa0e275b3390165165b3e523fde72a48e03",
  "kind": "def",
  "lexical_name": "exprFromJson?",
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
  "slug": "exprfromjson--57d638026d46c630a6aa7a3c",
  "source": {
    "blob": "feb7035623671aa4e28371a157df5f570d59c63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57d638026d46c630a6aa7a3cfdbe2eb42056010554c6887ba001a49cbb3f027c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d36b5bf35716cc4da33d498da1457fa0e275b3390165165b3e523fde72a48e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exprFromJson? (j : Json) : Except String Expr := do
  if let some i := (j.getObjVal? "bvar").toOption then
    return .bvar (← fromJson? i)
  if let some id := (j.getObjVal? "fvar").toOption then
    return .fvar ⟨← nameFromJson? id⟩
  if let some id := (j.getObjVal? "mvar").toOption then
    return .mvar ⟨← nameFromJson? id⟩
  if let some l := (j.getObjVal? "sort").toOption then
    return .sort (← levelFromJson? l)
  if (j.getObjVal? "const").toOption.isSome then
    let n ← nameFromJson? (← j.getObjVal? "const")
    let ls : Array Json ← fromJson? (← j.getObjVal? "levels")
    return .const n (← ls.toList.mapM levelFromJson?)
  if let some arr := (j.getObjVal? "app").toOption then
    let #[fn, arg] := (← fromJson? arr : Array Json) | .error "app expects 2 elements"
    return .app (← exprFromJson? fn) (← exprFromJson? arg)
  if let some obj := (j.getObjVal? "lam").toOption then
    return .lam (← nameFromJson? (← obj.getObjVal? "name"))
      (← exprFromJson? (← obj.getObjVal? "type"))
      (← exprFromJson? (← obj.getObjVal? "body"))
      (← binderInfoFromJson? (← obj.getObjVal? "bi"))
  if let some obj := (j.getObjVal? "forallE").toOption then
    return .forallE (← nameFromJson? (← obj.getObjVal? "name"))
      (← exprFromJson? (← obj.getObjVal? "type"))
      (← exprFromJson? (← obj.getObjVal? "body"))
      (← binderInfoFromJson? (← obj.getObjVal? "bi"))
  if let some obj := (j.getObjVal? "letE").toOption then
    return .letE (← nameFromJson? (← obj.getObjVal? "name"))
      (← exprFromJson? (← obj.getObjVal? "type"))
      (← exprFromJson? (← obj.getObjVal? "value"))
      (← exprFromJson? (← obj.getObjVal? "body"))
      (← fromJson? (← obj.getObjVal? "nondep"))
  if let some l := (j.getObjVal? "lit").toOption then
    return .lit (← literalFromJson? l)
  if let some obj := (j.getObjVal? "proj").toOption then
    return .proj (← nameFromJson? (← obj.getObjVal? "typeName"))
      (← fromJson? (← obj.getObjVal? "idx"))
      (← exprFromJson? (← obj.getObjVal? "struct"))
  .error s!"expected Expr, got {j}"

/-- Deterministic port for a given `idbg` site, in range [10000, 65535]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant09c900827bb406d2d3a3d404146a8b3697dda3779864ee3e67e75ce13dffd74f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb7035623671aa4e28371a157df5f570d59c63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
