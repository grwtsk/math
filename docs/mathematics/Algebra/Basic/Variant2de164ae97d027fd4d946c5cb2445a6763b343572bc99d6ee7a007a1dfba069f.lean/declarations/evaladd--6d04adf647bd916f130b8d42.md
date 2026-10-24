# evalAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c33a24e80d220065c5c6e5513c27c5dc773dd514f2ef0691a419d8fd9d4e4ea6",
  "kind": "def",
  "lexical_name": "evalAdd",
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
  "slug": "evaladd--6d04adf647bd916f130b8d42",
  "source": {
    "blob": "ac43b3823515235d149df4e8a6f15e95d76c627d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 207,
    "path": "GRWTSK/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d04adf647bd916f130b8d423ff9b260530fc36f594ae761d04576c296d633e0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c33a24e80d220065c5c6e5513c27c5dc773dd514f2ef0691a419d8fd9d4e4ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num _ + _] def evalAdd : NormNumExt where eval {u α} e := do
  let .app (.app (f : Q($α → $α → $α)) (a : Q($α))) (b : Q($α)) ← whnfR e | failure
  let ra ← derive a; let rb ← derive b
  match ra, rb with
  | .isBool .., _ | _, .isBool .. => failure
  | .isNat _ .., .isNat _ .. | .isNat _ .., .isNegNat _ .. | .isNat _ .., .isRat _ ..
  | .isNegNat _ .., .isNat _ .. | .isNegNat _ .., .isNegNat _ .. | .isNegNat _ .., .isRat _ ..
  | .isRat _ .., .isNat _ .. | .isRat _ .., .isNegNat _ .. | .isRat _ .., .isRat _ .. =>
    guard <|← withNewMCtxDepth <| isDefEq f q(HAdd.hAdd (α := $α))
  let rec
  /-- Main part of `evalAdd`. -/
  core : Option (Result e) := do
    let rec intArm (rα : Q(Ring $α)) := do
      haveI' : $e =Q $a + $b := ⟨⟩
      let ⟨za, na, pa⟩ ← ra.toInt _; let ⟨zb, nb, pb⟩ ← rb.toInt _
      haveI' : $f =Q HAdd.hAdd := ⟨⟩
      let zc := za + zb
      have c := mkRawIntLit zc
      haveI' : Int.add $na $nb =Q $c := ⟨⟩
      return .isInt rα c zc q(isInt_add (f := $f) (.refl $f) $pa $pb (.refl $c))
    let rec ratArm (dα : Q(DivisionRing $α)) : Option (Result _) := do
      haveI' : $e =Q $a + $b := ⟨⟩
      haveI' : $f =Q HAdd.hAdd := ⟨⟩
      let ⟨qa, na, da, pa⟩ ← ra.toRat' dα; let ⟨qb, nb, db, pb⟩ ← rb.toRat' dα
      let qc := qa + qb
      let dd := qa.den * qb.den
      let k := dd / qc.den
      have t1 : Q(ℤ) := mkRawIntLit (k * qc.num)
      have t2 : Q(ℕ) := mkRawNatLit dd
      have nc : Q(ℤ) := mkRawIntLit qc.num
      have dc : Q(ℕ) := mkRawNatLit qc.den
      have k : Q(ℕ) := mkRawNatLit k
      let r1 : Q(Int.add (Int.mul $na $db) (Int.mul $nb $da) = Int.mul $k $nc) :=
        (q(Eq.refl $t1) : Expr)
      let r2 : Q(Nat.mul $da $db = Nat.mul $k $dc) := (q(Eq.refl $t2) : Expr)
      return .isRat' dα qc nc dc q(isRat_add (f := $f) (.refl $f) $pa $pb $r1 $r2)
    match ra, rb with
    | .isBool .., _ | _, .isBool .. => failure
    | .isRat dα .., _ | _, .isRat dα .. => ratArm dα
    | .isNegNat rα .., _ | _, .isNegNat rα .. => intArm rα
    | .isNat _ na pa, .isNat sα nb pb =>
      haveI' : $e =Q $a + $b := ⟨⟩
      haveI' : $f =Q HAdd.hAdd := ⟨⟩
      assumeInstancesCommute
      have c : Q(ℕ) := mkRawNatLit (na.natLit! + nb.natLit!)
      haveI' : Nat.add $na $nb =Q $c := ⟨⟩
      return .isNat sα c q(isNat_add (f := $f) (.refl $f) $pa $pb (.refl $c))
  core

-- see note [norm_num lemma function equality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac43b3823515235d149df4e8a6f15e95d76c627d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
