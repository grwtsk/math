# reorderCtorArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be9fe65d75901f122760e7a7eac38d18eb5b7d636897ce04553edac6922c6285",
  "kind": "def",
  "lexical_name": "reorderCtorArgs",
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
  "slug": "reorderctorargs--1c6b5a2ef4f452c04647587e",
  "source": {
    "blob": "015f33d01dc9080041fe10e6e6abb2767f6d3f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c6b5a2ef4f452c04647587ec309851e3cd31909345ef404da98826d5bb0c841",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be9fe65d75901f122760e7a7eac38d18eb5b7d636897ce04553edac6922c6285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def reorderCtorArgs (ctorType : Expr) : MetaM Expr := do
  forallTelescopeReducing ctorType fun as type => do
    /- `type` is of the form `C ...` where `C` is the inductive datatype being defined. -/
    let bs := type.getAppArgs
    let mut as  := as
    let mut bsPrefix := #[]
    for b in bs do
      unless b.isFVar && as.contains b do
        break
      let localDecl ← getFVarLocalDecl b
      if localDecl.binderInfo.isExplicit then
        break
      unless localDecl.userName.hasMacroScopes do
        break
      if (← localDeclDependsOnPred localDecl fun fvarId => as.any fun p => p.fvarId! == fvarId) then
        break
      bsPrefix := bsPrefix.push b
      as := as.erase b
    if bsPrefix.isEmpty then
      return ctorType
    else
      let r ← mkForallFVars (bsPrefix ++ as) type
      /- `r` already contains the resulting type.
         To be able to produce better error messages, we copy the first `bsPrefix.size` binder names from `C` to `r`.
         This is important when some of constructor parameters were inferred using the auto-bound implicit feature.
         For example, in the following declaration.
         ```
          inductive Member : α → List α → Type u
            | head : Member a (a::as)
            | tail : Member a bs → Member a (b::bs)
         ```
         if we do not copy the binder names
         ```
         #check @Member.head
         ```
         produces `@Member.head : {x : Type u_1} → {a : x} → {as : List x} → Member a (a :: as)`
         which is correct, but a bit confusing. By copying the binder names, we obtain
         `@Member.head : {α : Type u_1} → {a : α} → {as : List α} → Member a (a :: as)`
       -/
      let C := type.getAppFn
      let binderNames := getArrowBinderNames (← instantiateMVars (← inferType C))
      return replaceArrowBinderNames r binderNames[*...bsPrefix.size]

/--
  Elaborate constructor types.

  Remark: we check whether the resulting type is correct, and the parameter occurrences are consistent, but
  we currently do not check for:
  - Positivity (it is a rare failure, and the kernel already checks for it).
  - Universe constraints (the kernel checks for it).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015f33d01dc9080041fe10e6e6abb2767f6d3f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
