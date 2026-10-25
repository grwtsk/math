# delabForall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cfb82c7868f6bfd8bb917cb0f94de73dd515403aed7c5da2e9a72a121cd75e9",
  "kind": "def",
  "lexical_name": "delabForall",
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
  "slug": "delabforall--78aed6c1b56d6b351aa31b96",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1080,
    "line": 1048,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78aed6c1b56d6b351aa31b9681d6b9f5ad18bcf3ee5db2792eab85f26549ae2e",
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

Occurrence: `declaration:6cfb82c7868f6bfd8bb917cb0f94de73dd515403aed7c5da2e9a72a121cd75e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1048–1080.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabForall : Delab := do
  let prop ← try isProp (← getExpr) catch _ => pure false
  delabForallBinders prop fun curNames dependent stxBody => do
    let e ← getExpr
    let mstxT := withBindingDomain delab
    let group ← match e.binderInfo with
    | BinderInfo.implicit       => `(bracketedBinderF|{$curNames* : $(← mstxT)})
    | BinderInfo.strictImplicit => `(bracketedBinderF|⦃$curNames* : $(← mstxT)⦄)
    | BinderInfo.instImplicit   =>
      -- here `curNames.size == 1`
      if dependent || !e.bindingName!.hasMacroScopes then
        `(bracketedBinderF|[$curNames.back! : $(← mstxT)])
      else
        -- omit the binder name if it's not used and not accessible
        `(bracketedBinderF|[$(← mstxT)])
    | BinderInfo.default        =>
      -- NOTE: non-dependent arrows are available only for the default binder info
      if dependent then
        if prop && !(← getPPOption getPPPiBinderTypes) && (← getPPOption getPPForalls) then
          return ← `(∀ $curNames:ident*, $stxBody)
        else
          `(bracketedBinderF|($curNames* : $(← mstxT)))
      else
        let stxT ← mstxT
        return ← curNames.foldrM (fun _ stxBody => `($stxT → $stxBody)) stxBody
    if prop && (← getPPOption getPPForalls) then
      match stxBody with
      | `(∀ $groups*, $stxBody) => `(∀ $group $groups*, $stxBody)
      | _                       => `(∀ $group, $stxBody)
    else
      `($group:bracketedBinder → $stxBody)

@[builtin_delab letE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L1048).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
