# evalOfScientific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d14dd9237f2bfab9cd226cd49731061f64b0b355080811a70ccd03ce5b944fa",
  "kind": "def",
  "lexical_name": "evalOfScientific",
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
  "slug": "evalofscientific--662c2dbdaa73d536bb7917ef",
  "source": {
    "blob": "5d4e5519e94638747525de9880e82575415814dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant425dc1d544c35732ac402637f6dc5ed07fd59b29e9ebf83b2c9db700a9cb566c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:662c2dbdaa73d536bb7917ef4b0474aa54f83199f76c78644ea0daae7199f86f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant425dc1d544c35732ac402637f6dc5ed07fd59b29e9ebf83b2c9db700a9cb566c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d14dd9237f2bfab9cd226cd49731061f64b0b355080811a70ccd03ce5b944fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num OfScientific.ofScientific _ _ _] def evalOfScientific :
    NormNumExt where eval {u α} e := do
  let .app (.app (.app f (m : Q(ℕ))) (b : Q(Bool))) (exp : Q(ℕ)) ← whnfR e | failure
  let dα ← inferDivisionRing α
  guard <|← withNewMCtxDepth <| isDefEq f q(OfScientific.ofScientific (α := $α))
  assumeInstancesCommute
  haveI' : $e =Q OfScientific.ofScientific $m $b $exp := ⟨⟩
  match b with
  | ~q(true) =>
    let rme ← derive (q(mkRat $m (10 ^ $exp)) : Q($α))
    let some ⟨q, n, d, p⟩ := rme.toRat' dα | failure
    return .isRat' dα q n d q(isRat_ofScientific_of_true $p)
  | ~q(false) =>
    let ⟨nm, pm⟩ ← deriveNat m q(AddCommMonoidWithOne.toAddMonoidWithOne)
    let ⟨ne, pe⟩ ← deriveNat exp q(AddCommMonoidWithOne.toAddMonoidWithOne)
    have pm : Q(IsNat $m $nm) := pm
    have pe : Q(IsNat $exp $ne) := pe
    let m' := nm.natLit!
    let exp' := ne.natLit!
    let n' := Nat.mul m' (Nat.pow (10 : ℕ) exp')
    have n : Q(ℕ) := mkRawNatLit n'
    haveI : $n =Q Nat.mul $nm ((10 : ℕ) ^ $ne) := ⟨⟩
    return .isNat _ n q(isNat_ofScientific_of_false $pm $pe (.refl $n))

end NormNum

end Meta

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant425dc1d544c35732ac402637f6dc5ed07fd59b29e9ebf83b2c9db700a9cb566c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variant425dc1d544c35732ac402637f6dc5ed07fd59b29e9ebf83b2c9db700a9cb566c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4e5519e94638747525de9880e82575415814dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
