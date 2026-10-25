# derive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bfb8d9ad8d1e74c34ae45ccbf2253c28dff742cd40eac838fdc19094b3424b7",
  "kind": "def",
  "lexical_name": "derive",
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
  "slug": "derive--3efb8d2521d8f99657b5d0ac",
  "source": {
    "blob": "c7659707cfb462aee4fe5cfb00901ad061ddb9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3efb8d2521d8f99657b5d0aceb67f4e82e459e9fa318d5292d01b65896b30537",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bfb8d9ad8d1e74c34ae45ccbf2253c28dff742cd40eac838fdc19094b3424b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derive {α : Q(Type u)} (e : Q($α)) (post := false) : MetaM (Result e) := do
  if e.isRawNatLit then
    let lit : Q(ℕ) := e
    return .isNat (q(instAddMonoidWithOneNat) : Q(AddMonoidWithOne ℕ))
      lit (q(IsNat.raw_refl $lit) : Expr)
  profileitM Exception "norm_num" (← getOptions) do
    let s ← saveState
    let normNums := normNumExt.getState (← getEnv)
    let arr ← normNums.tree.getMatch e
    for ext in arr do
      if (bif post then ext.post else ext.pre) && ! normNums.erased.contains ext.name then
        try
          let new ← withReducibleAndInstances <| ext.eval e
          trace[Tactic.norm_num] "{ext.name}:\n{e} ==> {new}"
          return new
        catch err =>
          trace[Tactic.norm_num] "{ext.name} failed {e}: {err.toMessageData}"
          s.restore
    throwError "{e}: no norm_nums apply"

/-- Run each registered `norm_num` extension on a typed expression `e : α`,
returning a typed expression `lit : ℕ`, and a proof of `isNat e lit`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdad5faa35ea1c2805baef8a74980494f07bc69e64b5b12ee3337f63161bd0d7c.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7659707cfb462aee4fe5cfb00901ad061ddb9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
