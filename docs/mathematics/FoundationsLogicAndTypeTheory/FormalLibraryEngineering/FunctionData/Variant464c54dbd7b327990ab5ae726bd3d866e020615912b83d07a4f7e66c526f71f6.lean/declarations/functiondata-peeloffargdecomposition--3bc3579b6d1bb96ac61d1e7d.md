# FunctionData.peeloffArgDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a8582ef38feea2530c14077a0c2d8b466a8b4b373228b15ae94d58f6215ac7d",
  "kind": "def",
  "lexical_name": "FunctionData.peeloffArgDecomposition",
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
  "slug": "functiondata-peeloffargdecomposition--3bc3579b6d1bb96ac61d1e7d",
  "source": {
    "blob": "08160f299eb5f6dfb40c3482c082cd69eaa6912e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc3579b6d1bb96ac61d1e7d600a27d3284b72950bb3b21fe810b11212c31942",
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

Occurrence: `declaration:1a8582ef38feea2530c14077a0c2d8b466a8b4b373228b15ae94d58f6215ac7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FunctionData.peeloffArgDecomposition (fData : FunctionData) : MetaM (Option (Expr × Expr)) := do
  unless fData.args.size > 0 do return none
  withLCtx fData.lctx fData.insts do
    let n := fData.args.size
    let x := fData.mainVar
    let yₙ := fData.args[n-1]!

    if yₙ.expr.containsFVar x.fvarId! then
      return none

    if fData.args.size = 1 &&
       fData.mainVar == fData.fn then
      return none

    let gBody' := Mor.mkAppN fData.fn fData.args[:n-1]
    let gBody' := if let .some coe := yₙ.coe then coe.app gBody' else gBody'
    let g' ← mkLambdaFVars #[x] gBody'
    let f' := Expr.lam `f (← inferType gBody') (.app (.bvar 0) (yₙ.expr)) default
    return (f',g')


/-- Decompose function `f = (← fData.toExpr)` into composition of two functions.

Returns none if the decomposition would produce composition with identity function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08160f299eb5f6dfb40c3482c082cd69eaa6912e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
