# withSubsingletonAsFast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:914e0e710fd428439ec82359e61abc9fa845ef9dd1e0f84a0f345bffaf0bd840",
  "kind": "def",
  "lexical_name": "withSubsingletonAsFast",
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
  "slug": "withsubsingletonasfast--63ada81e1b1b0b9ac2cbd6fc",
  "source": {
    "blob": "f40e4046dbd24cea511bafedd41701959ec9cce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63ada81e1b1b0b9ac2cbd6fc03da658fa1d0e1b2ed79b97725227b404a2a2643",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:914e0e710fd428439ec82359e61abc9fa845ef9dd1e0f84a0f345bffaf0bd840`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withSubsingletonAsFast {α : Type} [Inhabited α] (mx : (Expr → Expr) → MetaM α) : MetaM α := do
  let insts1 := (← getLocalInstances).filter fun inst => inst.className == ``Subsingleton
  let insts2 := (← getLocalInstances).filter fun inst => inst.className == ``IsEmpty
  let mkInst (f : Name) (inst : Expr) : MetaM Expr := do
    forallTelescopeReducing (← inferType inst) fun args _ => do
      mkLambdaFVars args <| ← mkAppOptM f #[none, mkAppN inst args]
  let vals := (← insts1.mapM fun inst => mkInst ``FastSubsingleton.mk inst.fvar)
    ++ (← insts2.mapM fun inst => mkInst ``FastIsEmpty.mk inst.fvar)
  let tys ← vals.mapM inferType
  withLocalDeclsD (tys.map fun ty => (`inst, fun _ => pure ty)) fun args =>
    withNewLocalInstances args 0 do
      let elim (e : Expr) : Expr := e.replaceFVars args vals
      mx elim

/-- Like `subsingletonElim` but uses `FastSubsingleton` to fail fast. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40e4046dbd24cea511bafedd41701959ec9cce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
