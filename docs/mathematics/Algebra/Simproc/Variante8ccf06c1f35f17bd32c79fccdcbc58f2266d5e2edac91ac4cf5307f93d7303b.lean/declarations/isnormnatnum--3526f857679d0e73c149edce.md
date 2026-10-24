# isNormNatNum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc32406514f8c09ab65e256d821680a0fc7593b5603c13aaee1b7ca7c04f1078",
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
  "slug": "isnormnatnum--3526f857679d0e73c149edce",
  "source": {
    "blob": "7c6b53635b26cecb72d0b153878f916511a5ad6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 124,
    "path": "GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3526f857679d0e73c149edcee18ea3cf34fcbb24ff2c0f522caa493519e4c4e2",
  "verification": {
    "reference": "docs/verification/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc32406514f8c09ab65e256d821680a0fc7593b5603c13aaee1b7ca7c04f1078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–148.

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

[Verification target and public status](../../../../../verification/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6b53635b26cecb72d0b153878f916511a5ad6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
