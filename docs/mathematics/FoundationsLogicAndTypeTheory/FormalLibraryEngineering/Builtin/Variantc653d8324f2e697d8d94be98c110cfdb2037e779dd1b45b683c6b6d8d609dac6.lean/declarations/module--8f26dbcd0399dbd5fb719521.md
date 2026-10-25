# module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6835ff4936cd4c8d6ee4419cc9277c021a9abdd84cfa39047bf5d0259e1fc9ac",
  "kind": "def",
  "lexical_name": "module",
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
  "slug": "module--8f26dbcd0399dbd5fb719521",
  "source": {
    "blob": "128001ebaa848e230bfbb1d7ad55d36ebf90f010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f26dbcd0399dbd5fb719521f59281f5901bc8727d3055e8eba11451e2313bb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6835ff4936cd4c8d6ee4419cc9277c021a9abdd84cfa39047bf5d0259e1fc9ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def module (checked : flag true) (xs : TSyntaxArray `inline) : DocM (Inline ElabInline) := do
  let s ← onlyCode xs
  let x := s.getString.toName
  let n := mkIdentFrom' s x
  if checked then
    let env ← getEnv
    if x != env.mainModule && x ∉ env.header.moduleNames then
      let ss := similarNames x env.header.moduleNames
      let ref ← getRef
      let unchecked : Option Meta.Hint.Suggestion ←
        match ref with
        | `(inline|role{$x +checked}%$tk2[$_]) =>
          let some b := x.raw.getTailPos?
            | pure none
          let some e := tk2.getPos?
            | pure none
          pure <| some {
            span? := some (Syntax.mkStrLit (String.Pos.Raw.extract (← getFileMap).source b e) (info := .synthetic b e)),
            previewSpan? := some ref,
            suggestion := "" : Meta.Hint.Suggestion
          }
        | `(inline|role{$_}%$tk2[$_]) =>
          pure <| some {
            span? := some tk2
            previewSpan? := some ref,
            suggestion := " -checked}": Meta.Hint.Suggestion
          }
        | _ => pure none
      let ss := unchecked.toArray ++ ss.map fun x =>
        { suggestion := x.toString, span? := some n, previewSpan? := some ref }
      let h ←
        if ss.isEmpty then pure m!""
        else m!"Either disable the existence check or use an imported module:".hint ss (ref? := some ref)
      logErrorAt n m!"Module is not transitively imported by the current module.{h}"

  return .custom (Data.ModuleName.mk x) #[.code s.getString]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128001ebaa848e230bfbb1d7ad55d36ebf90f010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
