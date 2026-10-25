# getSimpContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80b21eb7df4f979a6c31c11031c229dd8753d35a5d2925f413018a979ce8917c",
  "kind": "def",
  "lexical_name": "getSimpContext",
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
  "slug": "getsimpcontext--d0ba578478a47abebf2c1453",
  "source": {
    "blob": "451946edc44216b6277edaa771118ff15de9799e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0ba578478a47abebf2c1453ab82896863b6d7c9bca617667a2952efd14d1a58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80b21eb7df4f979a6c31c11031c229dd8753d35a5d2925f413018a979ce8917c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getSimpContext (cfg args : Syntax) (simpOnly := false) :
    TacticM (Simp.Context × Simp.SimprocsArray) := do
  let { config, userConfig } ← elabSimpConfigCore cfg
  let simpTheorems ←
    if simpOnly then simpOnlyBuiltins.foldlM (·.addConst ·) {} else getSimpTheorems
  let simprocs ← if simpOnly then pure {} else Simp.getSimprocs
  let { ctx, simprocs, .. } ←
    elabSimpArgs args[0] (eraseLocal := false) (kind := .simp) (simprocs := #[simprocs])
      (← Simp.mkContext config (simpTheorems := #[simpTheorems])
        (congrTheorems := ← getSimpCongrTheorems) (userConfig := userConfig))
  return (ctx, simprocs)

open Elab Tactic in
/--
Elaborates a call to `norm_num only? [args]` or `norm_num1`.
* `args`: the `(simpArgs)?` syntax for simp arguments
* `loc`: the `(location)?` syntax for the optional location argument
* `simpOnly`: true if `only` was used in `norm_num`
* `useSimp`: false if `norm_num1` was used, in which case only the structural parts
  of `simp` will be used, not any of the post-processing that `simp only` does without lemmas
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1a09cd74176f30cf8ae14f231a951ddf7c6a1830b0a6c9a8b138e47f11ad30e6.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `451946edc44216b6277edaa771118ff15de9799e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
