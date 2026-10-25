# ppCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a0cafbae358f79a8993a2d563b7469ff3b87d194a6da7281af0e2fdda57c622",
  "kind": "def",
  "lexical_name": "ppCode",
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
  "slug": "ppcode--9faccafcb6651eab6ddaa508",
  "source": {
    "blob": "bbe99861d0037b91374503856fe2d227227c3de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant0576d1b6da45877d800d3b1fc1ae5939c6b4860a8b41a454bb888621168d2f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9faccafcb6651eab6ddaa50878c656597fe2d615853d29145b1e4bc1d6c0002c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant0576d1b6da45877d800d3b1fc1ae5939c6b4860a8b41a454bb888621168d2f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a0cafbae358f79a8993a2d563b7469ff3b87d194a6da7281af0e2fdda57c622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def ppCode (c : Code pu) : M Format := do
    match c with
    | .let decl k => return (← ppLetDecl decl) ++ ";" ++ .line ++ (← ppCode k)
    | .fun decl k _ => return f!"fun " ++ (← ppFunDecl decl) ++ ";" ++ .line ++ (← ppCode k)
    | .jp decl k => return f!"jp " ++ (← ppFunDecl decl) ++ ";" ++ .line ++ (← ppCode k)
    | .cases c => return f!"cases {← ppFVar c.discr} : {← ppExpr c.resultType}{← prefixJoin .line c.alts ppAlt}"
    | .return fvarId => return f!"return {← ppFVar fvarId}"
    | .jmp fvarId args => return f!"goto {← ppFVar fvarId}{← ppArgs args}"
    | .unreach type =>
      if pp.all.get (← getOptions) then
        return f!"⊥ : {← ppExpr type}"
      else
        return "⊥"
    | .sset fvarId i offset y ty k _ =>
      if pp.letVarTypes.get (← getOptions) then
        return f!"sset {← ppFVar fvarId}[{i}, {offset}] : {← ppExpr ty} := {← ppFVar y};" ++ .line ++ (← ppCode k)
      else
        return f!"sset {← ppFVar fvarId}[{i}, {offset}] := {← ppFVar y};" ++ .line ++ (← ppCode k)
    | .uset fvarId i y k _ =>
      return f!"uset {← ppFVar fvarId}[{i}] := {← ppFVar y};" ++ .line ++ (← ppCode k)
    | .oset fvarId i y k _ =>
      return f!"oset {← ppFVar fvarId} [{i}] := {← ppArg y};" ++ .line ++ (← ppCode k)
    | .setTag fvarId cidx k _ =>
      return f!"setTag {← ppFVar fvarId} := {cidx};" ++ .line ++ (← ppCode k)
    | .inc fvarId n check persistent k _ =>
      let ann := (if persistent then "[persistent]" else "") ++ (if !check then "[ref]" else "")
      if n != 1 then
        return f!"inc[{n}]{ann} {← ppFVar fvarId};" ++ .line ++ (← ppCode k)
      else
        return f!"inc{ann} {← ppFVar fvarId};" ++ .line ++ (← ppCode k)
    | .dec fvarId n check persistent objs? k _ =>
      let mut ann := ""
      if persistent then ann := ann ++ "[persistent]"
      if !check then ann := ann ++ "[ref]"
      if let some objs := objs? then ann := ann ++ s!"[{objs} objs]"
      if n != 1 then
        return f!"dec[{n}]{ann} {← ppFVar fvarId};" ++ .line ++ (← ppCode k)
      else
        return f!"dec{ann} {← ppFVar fvarId};" ++ .line ++ (← ppCode k)
    | .del fvarId k _ =>
      return f!"del {← ppFVar fvarId};" ++ .line ++ (← ppCode k)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant0576d1b6da45877d800d3b1fc1ae5939c6b4860a8b41a454bb888621168d2f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant0576d1b6da45877d800d3b1fc1ae5939c6b4860a8b41a454bb888621168d2f37.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe99861d0037b91374503856fe2d227227c3de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
