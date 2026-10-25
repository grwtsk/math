# Code.coalesceRC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:069ef8a6241dd0e1214b15b8e3a33dfb60e39e805574ce516bff5e2941f1d16a",
  "kind": "def",
  "lexical_name": "Code.coalesceRC",
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
  "slug": "code-coalescerc--fa35399b723b3cf3ec08d896",
  "source": {
    "blob": "480fb4ea45a86af011b6470f4e8adb72ef1cf9f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa35399b723b3cf3ec08d896ea4b285a88a0770283921d88c3d8dc7f56daa803",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:069ef8a6241dd0e1214b15b8e3a33dfb60e39e805574ce516bff5e2941f1d16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.coalesceRC (code : Code .impure) : CompilerM (Code .impure) := do
  go code |>.run' {}
where
  go (code : Code .impure) : M (Code .impure) := do
    match code with
    | .inc fvarId n check persistent k _ =>
      modify fun s => { s with incTotal := s.incTotal.alter fvarId (fun v? => some ((v?.getD 0) + n)) }
      let k ← go k
      modify fun s => { s with incAccum := s.incAccum.alter fvarId (fun v? => some ((v?.getD 0) + n)) }
      let s ← get
      if s.incAccum[fvarId]! == s.incTotal[fvarId]! then
        return .inc fvarId s.incTotal[fvarId]! check persistent k
      else
        return k
    | .dec fvarId n check persistent objs? k _ =>
      modify fun s => { s with decTotal := s.decTotal.alter fvarId (fun v? => some ((v?.getD 0) + n)) }
      let k ← go k
      let s ← get
      if !s.decPlaced.contains fvarId then
        modify fun s => { s with decPlaced := s.decPlaced.insert fvarId }
        return .dec fvarId s.decTotal[fvarId]! check persistent objs? k
      else
        return k
    | .let _ k =>
      let k ← go k
      return code.updateCont! k
    | .jp decl k =>
      let value ← decl.value.coalesceRC
      let decl ← decl.updateValue value
      let k ← go k
      return code.updateFun! decl k
    | .cases c =>
      let alts ← c.alts.mapMonoM (·.mapCodeM (·.coalesceRC))
      return code.updateAlts! alts
    | .del _ k _ =>
      let k ← go k
      return code.updateCont! k
    | .oset (k := k) .. | .uset (k := k) .. | .sset (k := k) .. | .setTag (k := k) .. =>
      let k ← go k
      return code.updateCont! k
    | .return .. | .jmp .. | .unreach .. => return code

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480fb4ea45a86af011b6470f4e8adb72ef1cf9f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
