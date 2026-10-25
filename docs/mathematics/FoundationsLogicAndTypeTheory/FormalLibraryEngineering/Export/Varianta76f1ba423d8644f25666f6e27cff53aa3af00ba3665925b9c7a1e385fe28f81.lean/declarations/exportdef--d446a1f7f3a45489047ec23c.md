# exportDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93c18d22c4725826afc89792e6b42563f462c36f38c951c8f63e822c044f4f9d",
  "kind": "def",
  "lexical_name": "exportDef",
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
  "slug": "exportdef--d446a1f7f3a45489047ec23c",
  "source": {
    "blob": "b8318e9ce47b56a3808f14944bbd305c150620e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d446a1f7f3a45489047ec23c52f954646fd84bc56881267652072b96dd512250",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93c18d22c4725826afc89792e6b42563f462c36f38c951c8f63e822c044f4f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exportDef (n : Name) : ExportM Unit := do
  if (← get).defs.contains n then return
  let ci ← getConstInfo n
  for c in ci.value!.getUsedConstants do
    unless (← get).defs.contains c do
      exportDef c
  match ci with
  | axiomInfo   val => axdef "#AX" val.name val.type val.levelParams
  | defnInfo    val => defn "#DEF" val.name val.type val.value val.levelParams
  | thmInfo     val => defn "#THM" val.name val.type val.value val.levelParams
  | opaqueInfo  val => defn "#CN" val.name val.type val.value val.levelParams
  | quotInfo    _ =>
    IO.println "#QUOT"
    for n in [``Quot, ``Quot.mk, ``Quot.lift, ``Quot.ind] do
      insert n
  | inductInfo  val => ind val.all
  | ctorInfo    val => ind (← getConstInfoInduct val.induct).all
  | recInfo     val => ind val.all
where
  insert (n : Name) : ExportM Unit :=
    modify fun s ↦ { s with defs := s.defs.insert n }
  defn (ty : String) (n : Name) (t e : Expr) (ls : List Name) : ExportM Unit := do
    let mut s := s!"{ty} {← exportName n} {← exportExpr t} {← exportExpr e}"
    for l in ls do s := s ++ s!" {← exportName l}"
    IO.println s
    insert n
  axdef (ty : String) (n : Name) (t : Expr) (ls : List Name) : ExportM Unit := do
    let mut s := s!"{ty} {← exportName n} {← exportExpr t}"
    for l in ls do s := s ++ s!" {← exportName l}"
    IO.println s
    insert n
  ind : List Name → ExportM Unit
  | [] => unreachable!
  | is@(i::_) => do
    let val ← getConstInfoInduct i
    let mut s := match is.length with
    | 1 => s!"#IND {val.numParams}"
    | n => s!"#MUT {val.numParams} {n}"
    for j in is do insert j; insert (mkRecName j)
    for j in is do
      let val ← getConstInfoInduct j
      s := s ++ s!" {← exportName val.name} {← exportExpr val.type} {val.ctors.length}"
      for c in val.ctors do
        insert c
        s := s ++ s!" {← exportName c} {← exportExpr (← getConstInfoCtor c).type}"
    for j in is do s ← indbody j s
    for l in val.levelParams do s := s ++ s!" {← exportName l}"
    IO.println s
  indbody (ind : Name) (s : String) : ExportM String := do
    let val ← getConstInfoInduct ind
    let mut s := s ++ s!" {← exportName ind} {← exportExpr val.type} {val.ctors.length}"
    for c in val.ctors do
      s := s ++ s!" {← exportName c} {← exportExpr (← getConstInfoCtor c).type}"
    pure s

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Varianta76f1ba423d8644f25666f6e27cff53aa3af00ba3665925b9c7a1e385fe28f81.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8318e9ce47b56a3808f14944bbd305c150620e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
