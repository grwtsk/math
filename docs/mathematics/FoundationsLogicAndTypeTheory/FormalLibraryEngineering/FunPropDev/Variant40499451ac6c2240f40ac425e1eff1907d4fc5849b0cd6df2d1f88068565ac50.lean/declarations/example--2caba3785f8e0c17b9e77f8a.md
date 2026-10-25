# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad16255de27772512f8dadd5b5e88bb970e099fddf7b40892094e9e961208aa2",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2caba3785f8e0c17b9e77f8a",
  "source": {
    "blob": "8128212a89b5fedc9a76cd6f08d5463cc29fb7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 527,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunPropDev/Variant40499451ac6c2240f40ac425e1eff1907d4fc5849b0cd6df2d1f88068565ac50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2caba3785f8e0c17b9e77f8abf92a100387f8a49ded15d0480dab4233f410238",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunPropDev/Variant40499451ac6c2240f40ac425e1eff1907d4fc5849b0cd6df2d1f88068565ac50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad16255de27772512f8dadd5b5e88bb970e099fddf7b40892094e9e961208aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [Add α] (a : α) :
  let f := (fun x : α =>
    let y := x + x
    fun z : α =>
      x + y + z)
  Con (fun x =>
    f x a) := by
  fun_prop


-- Test that local theorem is being used
/--
info: [Meta.Tactic.fun_prop] [✅️] Con fun x => f x y
  [Meta.Tactic.fun_prop] [✅️] Con fun x => f x y
    [Meta.Tactic.fun_prop] candidate local theorems for f #[this : Con f]
    [Meta.Tactic.fun_prop] removing argument to later use this : Con f
    [Meta.Tactic.fun_prop] [✅️] applying: Con_comp
      [Meta.Tactic.fun_prop] [✅️] Con fun f => f y
        [Meta.Tactic.fun_prop] [✅️] applying: Con_apply
      [Meta.Tactic.fun_prop] [✅️] Con fun x => f x
        [Meta.Tactic.fun_prop] candidate local theorems for f #[this : Con f]
        [Meta.Tactic.fun_prop] [✅️] applying: this : Con f
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunPropDev/Variant40499451ac6c2240f40ac425e1eff1907d4fc5849b0cd6df2d1f88068565ac50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunPropDev/Variant40499451ac6c2240f40ac425e1eff1907d4fc5849b0cd6df2d1f88068565ac50.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8128212a89b5fedc9a76cd6f08d5463cc29fb7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
