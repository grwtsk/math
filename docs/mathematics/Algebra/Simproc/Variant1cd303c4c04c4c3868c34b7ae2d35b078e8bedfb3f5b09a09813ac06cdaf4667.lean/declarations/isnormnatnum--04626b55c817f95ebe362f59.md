# isNormNatNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:957177e238b699946fa039323a92b3a068de5e73680bc5d227b40e73ec7f8d62",
  "kind": "def",
  "lexical_name": "isNormNatNum",
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
  "slug": "isnormnatnum--04626b55c817f95ebe362f59",
  "source": {
    "blob": "a640dafd35ec5a29a7ce1c30ff92c78e7dd68da9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 132,
    "path": "GRWTSK/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04626b55c817f95ebe362f59ae92eeae5e9257beb6513cd5d04caaf23b7bee6f",
  "verification": {
    "reference": "docs/verification/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:957177e238b699946fa039323a92b3a068de5e73680bc5d227b40e73ec7f8d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isNormNatNum (α n inst : Expr) : Bool := Id.run do
  unless α.isConstOf ``Nat do return false
  let .lit (.natVal _) := n | return false
  unless inst.isAppOfArity ``instOfNatNat 1 do return false
  return inst.appArg! == n

builtin_dsimproc_decl normNatOfNatInst ((OfNat.ofNat _: Nat)) := fun e => do
  let_expr OfNat.ofNat α n inst := e | return .continue
  if isNormNatNum α n inst then
    return .done e
  let some n ← getNatValue? e | return .continue
  return .done (mkNatLit n)

builtin_dsimproc_decl normIntNegInst ((- _ : Int)) := normInst 1 Int.mkInstNeg
builtin_dsimproc_decl normIntAddInst ((_ + _ : Int)) := normInst 3 Int.mkInstHAdd
builtin_dsimproc_decl normIntMulInst ((_ * _ : Int)) := normInst 3 Int.mkInstHMul
builtin_dsimproc_decl normIntSubInst ((_ - _ : Int)) := normInst 3 Int.mkInstHSub
builtin_dsimproc_decl normIntDivInst ((_ / _ : Int)) := normInst 3 Int.mkInstHDiv
builtin_dsimproc_decl normIntModInst ((_ % _ : Int)) := normInst 3 Int.mkInstMod
builtin_dsimproc_decl normIntPowInst ((_ ^ _ : Int)) := normInst 3 Int.mkInstHPow
builtin_dsimproc_decl normNatCastInst ((NatCast.natCast _ : Int)) := normInst 1 Int.mkInstNatCast

/--
Returns `true`, if `@OfNat.ofNat α n inst` is the standard way we represent `Int` numerals in Lean.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a640dafd35ec5a29a7ce1c30ff92c78e7dd68da9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
