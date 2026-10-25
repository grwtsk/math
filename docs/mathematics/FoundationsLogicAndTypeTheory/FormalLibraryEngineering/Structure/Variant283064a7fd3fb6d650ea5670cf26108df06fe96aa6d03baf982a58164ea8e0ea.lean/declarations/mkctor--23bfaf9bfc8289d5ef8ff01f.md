# mkCtor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a80eb3be940755bd04897705f4339e85c2dfda979645733531dbb1cc4dd07806",
  "kind": "def",
  "lexical_name": "mkCtor",
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
  "slug": "mkctor--23bfaf9bfc8289d5ef8ff01f",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1202,
    "line": 1173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23bfaf9bfc8289d5ef8ff01feb6b7e7a88f4df1fa67bf08f7edbbb4648d43187",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a80eb3be940755bd04897705f4339e85c2dfda979645733531dbb1cc4dd07806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCtor (view : StructView) (r : ElabHeaderResult) (params : Array Expr) : StructElabM Constructor :=
  withoutExporting (when := isPrivateName view.ctor.declName) do
  withRef view.ref do
  let (binders, paramInfoOverrides) ← elabParamInfoUpdates params view.ctor.binders.getArgs (fun _ => pure true)
  unless binders.isEmpty do
    throwErrorAt (mkNullNode binders) "Expecting binders that update binder kinds of type parameters."
  trace[Elab.structure] "constructor param overrides {view.ctor.binders}"
  let lctx ← mkCtorLCtx
  let type ← instantiateMVars <| mkAppN r.indFVar params
  let fieldInfos := (← get).fields
  let fieldCtorFVars := fieldInfos |>.filter (·.kind.isInCtor) |>.map (·.fvar)
  let type := lctx.mkForall fieldCtorFVars type
  withFreshCache <| withLCtx lctx {} do
    trace[Elab.structure] "constructor type before reductions:{indentExpr type}"
    let type ← fieldNormalizeExpr type
    trace[Elab.structure] "constructor type after reductions:{indentExpr type}"
    let type ← mkForallFVars params type
    let type ← instantiateMVars type
    let type := type.inferImplicit params.size true
    let type := type.updateForallBinderInfos <| params.toList.map fun e => paramInfoOverrides[e]?.map Prod.snd
    trace[Elab.structure] "full constructor type:{indentExpr type}"
    pure { name := view.ctor.declName, type }

/--
Creates an alternative constructor that takes all the fields directly.
Assumes the inductive type has already been added to the environment.

Note: we can't generally use optParams here since the default values might depend on previous ones.
We include autoParams however.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
