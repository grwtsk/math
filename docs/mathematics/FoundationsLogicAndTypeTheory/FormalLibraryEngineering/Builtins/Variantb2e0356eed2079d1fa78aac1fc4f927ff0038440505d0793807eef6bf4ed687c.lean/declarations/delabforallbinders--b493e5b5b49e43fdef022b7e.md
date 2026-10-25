# delabForallBinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7d424bbf6ac616a208410a9a8d903ad59d5b0f2bd980ba6d6b77acd87da04a0",
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
  "slug": "delabforallbinders--b493e5b5b49e43fdef022b7e",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1047,
    "line": 1020,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b493e5b5b49e43fdef022b7ee2d78ca080f060ff29029d0458dfd8fbce536a0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7d424bbf6ac616a208410a9a8d903ad59d5b0f2bd980ba6d6b77acd87da04a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1020–1047.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L1020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
