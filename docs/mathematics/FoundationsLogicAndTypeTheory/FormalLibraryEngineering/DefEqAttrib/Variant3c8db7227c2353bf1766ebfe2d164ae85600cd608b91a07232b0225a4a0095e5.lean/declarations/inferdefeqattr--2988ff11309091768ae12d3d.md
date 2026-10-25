# inferDefEqAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce6309831165f1ec1c76d8b82b9e693efff48d7c497d1f92bd6ca51e871c8b11",
  "kind": "def",
  "lexical_name": "inferDefEqAttr",
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
  "slug": "inferdefeqattr--2988ff11309091768ae12d3d",
  "source": {
    "blob": "bcf1cd5420f3834e9813fe62d965bf7ba6c70451",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2988ff11309091768ae12d3ddc0f8c1f9cc2fbe0c11a4fe4904fd366969de148",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce6309831165f1ec1c76d8b82b9e693efff48d7c497d1f92bd6ca51e871c8b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inferDefEqAttr (declName : Name) : MetaM Unit := do
  withoutExporting do
    let info ← getConstInfo declName
    let isRfl ←
      if let some value := info.value? (allowOpaque := true) then
        isRflProofCore info.type value
      else
        pure false
    unless isRfl do return
    -- Strict check: defeq at implicit transparency (as used by `dsimp`).
    let strict ← withEqLhsRhs info.type fun lhs rhs =>
      withImplicit (isDefEq lhs rhs)
    -- Sanity-check: is the theorem also defeq at the permissive (`.default`/`.all`)
    -- transparency we use for `@[backward_defeq]`? If not, log the error that the
    -- legacy inference would have emitted — but still proceed to tag
    -- `@[backward_defeq]` unconditionally. The legacy (pre-PR) behavior tagged
    -- `@[defeq]` unconditionally whenever `isRflProofCore` returned true,
    -- regardless of whether the validation check passed, and we want to preserve
    -- exactly that set under `backward_defeq` so that `useBackward=true` reliably
    -- restores the old behavior.
    try
      withExporting (isExporting := !isPrivateName declName) do
        validateDefEqAttr declName
    catch e =>
      unless strict do
        logError m!"Theorem {declName} has a `rfl`-proof but could not be validated \
          as a definitional equality:{indentD e.toMessageData}"
    if strict then
      defeqAttr.setTag declName
    backwardDefeqAttr.setTag declName
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf1cd5420f3834e9813fe62d965bf7ba6c70451` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
