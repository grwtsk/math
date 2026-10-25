# name

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43e4822920aa7bcf5d32fc1b25188f7966c5dd693cb973eaecae86d7a54e2435",
  "kind": "def",
  "lexical_name": "name",
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
  "slug": "name--8ccf3c0ffe6755d0c04dc186",
  "source": {
    "blob": "54c9b797ff124c8665b7ec5a1bbc43a9feca52c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ccf3c0ffe6755d0c04dc186ebfc57b13d7e24ec2c27a0b656b337cd27cb6748",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43e4822920aa7bcf5d32fc1b25188f7966c5dd693cb973eaecae86d7a54e2435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def name (full : Option Ident := none) (scope : DocScope := .local)
    (xs : TSyntaxArray `inline) : DocM (Inline ElabInline) := do
  let s ← onlyCode xs
  let x := s.getString.toName
  if x.isAnonymous then
    let h ←
      if s.getString.toSlice != s.getString.trimAscii && !s.getString.trimAscii.isEmpty then
        -- Like Markdown, Verso code elements that start and end with a space will strip the space,
        -- to allow code with leading or trailing backticks. But our suggestions shouldn't prefer
        -- that form here. Thus, the suggestion uses the delimiter positions instead of the string
        -- literal.
        let text ← getFileMap
        let ref? := do
          let stx ← (xs : Array Syntax)[0]?
          let `(inline|code(%$tk1 $_ )%$tk2) := stx
            | none
          let ⟨_, pos⟩ ← tk1.getRange?
          let ⟨tailPos, _⟩ ← tk2.getRange?
          pure <| Syntax.mkStrLit (String.Pos.Raw.extract text.source pos tailPos) (info := .synthetic pos tailPos)
        if let some ref := ref? then
            m!"Remove surrounding whitespace:".hint #[s.getString.trimAscii.copy] (ref? := some ref)
        else pure m!""
      else pure m!""
    throwErrorAt s "Not a valid name.{h}"
  let n := mkIdentFrom' s x
  if let some r := full then
    unless x.isSuffixOf r.getId do
      logErrorAt r "Expected a qualified version of {x}"
      return .code s.getString
  else
    if let some (e, fields) := (← resolveLocalName n.getId) then
      let t ← Meta.inferType e
      if fields.isEmpty then
        pushInfoLeaf <| .ofTermInfo {
          elaborator := .anonymous
          stx := n
          lctx := ← getLCtx
          expr := e
          expectedType? := some t
        }
        let data : Data.Local := {name := x, lctx := ← getLCtx, type := t, fvarId := e.fvarId!}
        return .custom data #[.code s.getString]
  match scope with
  | .local =>
    let x ←
      if let some r := full then
        let x ← realizeGlobalConstNoOverloadWithInfo r
        addConstInfo n x
        pure x
      else
        try
          realizeGlobalConstNoOverloadWithInfo n
        catch
          | err => do
            let ref ← getRef
            if let `(inline|role{$_x $_args*}%$tok[$_*]) := ref then
              let ss ← getQualified n.raw.getId
              let h ←
                if ss.isEmpty then pure m!""
                else m!"Insert a fully-qualified name:".hint (ref? := some tok) <|
                  ss.map fun x => { suggestion := s!" (full := {x})" ++ "}", previewSpan? := ref}
              logErrorAt s m!"{err.toMessageData}{h}"
            else logErrorAt s m!"{err.toMessageData}"
            return .code s!"{n.raw.getId}"
    return .custom (Data.Const.mk x) #[.code s.getString]
  | .import xs =>
    let name :=
      if let some r := full then r.getId
      else x
    return .deferred (← addDeferredCheck (.mk (PostponedName.mk name)) xs (← getRef)) #[.code s.getString]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c9b797ff124c8665b7ec5a1bbc43a9feca52c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
