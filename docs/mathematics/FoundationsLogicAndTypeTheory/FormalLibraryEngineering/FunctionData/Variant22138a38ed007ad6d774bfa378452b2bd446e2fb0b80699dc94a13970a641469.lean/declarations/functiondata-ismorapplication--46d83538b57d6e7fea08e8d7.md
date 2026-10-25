# FunctionData.isMorApplication

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c9f3b35bedde9e64070adb766d11dd89f5520e9a3bc983bc4f5174cba0fa0d8",
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
  "slug": "functiondata-ismorapplication--46d83538b57d6e7fea08e8d7",
  "source": {
    "blob": "9ec269e3d60f47de00f4940f803e13a6bd6abee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46d83538b57d6e7fea08e8d7f526a99241243826b2b3ff26a3f6e8d869032471",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c9f3b35bedde9e64070adb766d11dd89f5520e9a3bc983bc4f5174cba0fa0d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–188.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ec269e3d60f47de00f4940f803e13a6bd6abee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
