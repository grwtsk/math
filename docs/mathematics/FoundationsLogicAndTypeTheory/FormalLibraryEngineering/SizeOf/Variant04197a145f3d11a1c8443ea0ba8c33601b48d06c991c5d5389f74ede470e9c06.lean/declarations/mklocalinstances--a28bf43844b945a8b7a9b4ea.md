# mkLocalInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8485dc8c406da85e48f81f389667835d5374f2ae889a00725ce0e9f14283fe8c",
  "kind": "def",
  "lexical_name": "mkLocalInstances",
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
  "slug": "mklocalinstances--a28bf43844b945a8b7a9b4ea",
  "source": {
    "blob": "983fb719306e794879b87770a5ea6ec52b5a212d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a28bf43844b945a8b7a9b4ea93a132ac9b690baf33af9ef098af1f7fd77726e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8485dc8c406da85e48f81f389667835d5374f2ae889a00725ce0e9f14283fe8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkLocalInstances (params : Array Expr) (k : Array Expr → MetaM α) : MetaM α :=
  loop 0 #[]
where
  loop (i : Nat) (insts : Array Expr) : MetaM α := do
    if h : i < params.size then
      let param := params[i]
      let paramType ← inferType param
      let instType? ← forallTelescopeReducing paramType fun xs _ => do
        let type := mkAppN param xs
        try
          let sizeOf ← mkAppM `SizeOf #[type]
          let instType ← mkForallFVars xs sizeOf
          return some instType
        catch _ =>
          return none
      match instType? with
      | none => loop (i+1) insts
      | some instType =>
        let instName ← mkFreshUserName `inst
        withLocalDecl instName BinderInfo.instImplicit instType fun inst =>
          loop (i+1) (insts.push inst)
    else
      k insts

/--
  Return `some x` if `fvar` has type of the form `... -> motive ... fvar` where `motive` in `motiveFVars`.
  That is, `x` "produces" one of the recursor motives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983fb719306e794879b87770a5ea6ec52b5a212d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
