# delabForallBinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5699adb4a7ac12bc0a0cfeb2f0e22a43a734afb4bcc96c8f1093ba8529c08fab",
  "kind": "def",
  "lexical_name": "delabForallBinders",
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
  "slug": "delabforallbinders--4d802a520157c24a4a40ec24",
  "source": {
    "blob": "3a43e15944e75cf221e11cb3e1100a21e4476b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1028,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d802a520157c24a4a40ec2429b73bf2734788e01de0b31af1ee74587500bbf6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5699adb4a7ac12bc0a0cfeb2f0e22a43a734afb4bcc96c8f1093ba8529c08fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1028–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def delabForallBinders (prop : Bool) (delabGroup : Array Syntax → Bool → Syntax → Delab) (curNames : Array Syntax := #[]) (curDep := false) : Delab := do
  -- Logic note: wanting to print with binder names is equivalent to pretending the forall is dependent.
  let opts ← getOptionsAtCurrPos
  let mut dep :=
    !(← getExpr).isArrow
    || (getPPPiBinderNames opts
        && (!(← getExpr).bindingName!.hasMacroScopes || getPPPiBinderNamesHygienic opts))
  if !dep && prop && (← getExpr).binderInfo.isExplicit then
    -- RFC #1834: If `∀` notation is enabled, avoid using `→` for propositions if the domain is not a proposition.
    -- We can pretend the type is dependent in this case.
    if (← getPPOption getPPForalls) then
      let domProp ← try isProp (← getExpr).bindingDomain! catch _ => pure false
      dep := !domProp
  if !curNames.isEmpty && dep != curDep then
    -- don't group
    delabGroup curNames curDep (← delab)
  else
    let preserve := opts.get ppPiPreserveNames false
    let curDep := dep
    if ← shouldGroupWithNext then
      -- group with nested binder => recurse immediately
      withBindingBodyUnusedName (preserveName := preserve) fun stxN => delabForallBinders prop delabGroup (curNames.push stxN) curDep
    else
      -- don't group => delab body and prepend current binder group
      let (stx, stxN) ← withBindingBodyUnusedName (preserveName := preserve) fun stxN => return (← delab, stxN)
      delabGroup (curNames.push stxN) curDep stx

@[builtin_delab forallE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean#L1028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a43e15944e75cf221e11cb3e1100a21e4476b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
