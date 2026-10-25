# evalInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13c2e787b778b00dd09c78b26f88232c14aa19c2fb0c12054a37d108fb1c2b8e",
  "kind": "def",
  "lexical_name": "evalInv",
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
  "slug": "evalinv--8b0cd7fca6a69ca962f0e59a",
  "source": {
    "blob": "9df32422d8e5cac17c8397d87a432ca7391034db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b0cd7fca6a69ca962f0e59aab5e511f3048d5eff272e6b5c339e38c1e98680b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13c2e787b778b00dd09c78b26f88232c14aa19c2fb0c12054a37d108fb1c2b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num _⁻¹] def evalInv : NormNumExt where eval {u α} e := do
  let .app f (a : Q($α)) ← whnfR e | failure
  let ra ← derive a
  let dα ← inferDivisionRing α
  let i ← inferCharZeroOfDivisionRing? dα
  guard <|← withNewMCtxDepth <| isDefEq f q(Inv.inv (α := $α))
  haveI' : $e =Q $a⁻¹ := ⟨⟩
  assumeInstancesCommute
  let rec
  /-- Main part of `evalInv`. -/
  core : Option (Result e) := do
    let ⟨qa, na, da, pa⟩ ← ra.toRat' dα
    let qb := qa⁻¹
    if qa > 0 then
      if let some i := i then
        have lit : Q(ℕ) := na.appArg!
        haveI : $na =Q Int.ofNat $lit := ⟨⟩
        have lit2 : Q(ℕ) := mkRawNatLit (lit.natLit! - 1)
        haveI : $lit =Q ($lit2).succ := ⟨⟩
        return .isRat' dα qb q(.ofNat $da) lit q(isRat_inv_pos $pa)
      else
        guard (qa = 1)
        let .isNat inst n pa := ra | failure
        haveI' : $n =Q nat_lit 1 := ⟨⟩
        assumeInstancesCommute
        return .isNat inst n q(isRat_inv_one $pa)
    else if qa < 0 then
      if let some i := i then
        have lit : Q(ℕ) := na.appArg!
        haveI : $na =Q Int.negOfNat $lit := ⟨⟩
        have lit2 : Q(ℕ) := mkRawNatLit (lit.natLit! - 1)
        haveI : $lit =Q ($lit2).succ := ⟨⟩
        return .isRat' dα qb q(.negOfNat $da) lit q(isRat_inv_neg $pa)
      else
        guard (qa = -1)
        let .isNegNat inst n pa := ra | failure
        haveI' : $n =Q nat_lit 1 := ⟨⟩
        assumeInstancesCommute
        return .isNegNat inst n q(isRat_inv_neg_one $pa)
    else
      let .isNat inst n pa := ra | failure
      haveI' : $n =Q nat_lit 0 := ⟨⟩
      assumeInstancesCommute
      return .isNat inst n q(isRat_inv_zero $pa)
  core

end Mathlib.Meta.NormNum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df32422d8e5cac17c8397d87a432ca7391034db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
