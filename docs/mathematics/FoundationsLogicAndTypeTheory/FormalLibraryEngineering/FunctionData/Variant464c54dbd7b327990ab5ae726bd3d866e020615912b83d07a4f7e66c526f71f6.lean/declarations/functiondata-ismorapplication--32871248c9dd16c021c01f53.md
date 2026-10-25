# FunctionData.isMorApplication

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99fed00097de18ee24878f4d5141336d1a2d7c465a6baebb0631afa6efc54da8",
  "kind": "def",
  "lexical_name": "FunctionData.isMorApplication",
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
  "slug": "functiondata-ismorapplication--32871248c9dd16c021c01f53",
  "source": {
    "blob": "08160f299eb5f6dfb40c3482c082cd69eaa6912e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32871248c9dd16c021c01f53f9a5c86622f7b7b395de89e3fd8599bf2d1e0291",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99fed00097de18ee24878f4d5141336d1a2d7c465a6baebb0631afa6efc54da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FunctionData.isMorApplication (f : FunctionData) : MetaM MorApplication := do
  if let .some name := f.fn.constName? then
    if ← Mor.isCoeFunName name then
      let info ← getConstInfo name
      let arity := info.type.getNumHeadForalls
      match compare arity f.args.size with
      | .eq => return .exact
      | .lt => return .overApplied
      | .gt => return .underApplied
  match h : f.args.size with
  | 0 => return .none
  | n + 1 =>
    if f.args[n].coe.isSome then
      return .exact
    else if f.args.any (fun a => a.coe.isSome) then
      return .overApplied
    else
      return .none


/-- Decomposes `fun x => f y₁ ... yₙ` into `(fun g => g yₙ) ∘ (fun x y => f y₁ ... yₙ₋₁ y)`

Returns none if:
  - `n=0`
  - `yₙ` contains `x`
  - `n=1` and `(fun x y => f y)` is identity function i.e. `x=f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08160f299eb5f6dfb40c3482c082cd69eaa6912e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
