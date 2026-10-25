# mkCongrInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b060e0c5f5df6503e3c5d20e31d42ca5b57d89beef0ec41e5d7ee1dd2d942cc",
  "kind": "def",
  "lexical_name": "mkCongrInfo",
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
  "slug": "mkcongrinfo--705b2d779fd6769afa2a2740",
  "source": {
    "blob": "48a1a630d5dd5224bdb2a7603f6dba790f0c9d57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:705b2d779fd6769afa2a2740290b58298cabb42062c59c87c1383d20754408ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b060e0c5f5df6503e3c5d20e31d42ca5b57d89beef0ec41e5d7ee1dd2d942cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCongrInfo (f : Expr) : SymM CongrInfo := do
  if (← isProof f) then
    return .none
  let info ← getFunInfo f
  let argKinds ← getCongrSimpKinds f info
  if argKinds.all fun k => match k with | .fixed | .eq => true | _ => false then
    if argKinds.all (· == .fixed) then
      return .none
    else if let some prefixSize := isFixedPrefix? argKinds then
      return .fixedPrefix prefixSize (argKinds.size - prefixSize)
    else
      return .interlaced (argKinds.map (· == .eq))
  else if let .const declName us := f then
    if let some thm ← mkCongrSimpForConst? declName us then
      if thm.argKinds == argKinds then
        return .congrTheorem thm
  let some thm ← mkCongrSimpCore? f info argKinds | return .none
  return .congrTheorem thm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a1a630d5dd5224bdb2a7603f6dba790f0c9d57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
