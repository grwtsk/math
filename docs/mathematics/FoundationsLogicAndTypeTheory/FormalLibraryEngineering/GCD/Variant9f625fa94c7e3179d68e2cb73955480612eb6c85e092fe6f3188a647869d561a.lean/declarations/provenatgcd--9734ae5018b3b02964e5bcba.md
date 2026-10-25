# proveNatGCD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2959c129353651e158b044adc2732f7797940148209b8e75e67f54474202ad43",
  "kind": "def",
  "lexical_name": "proveNatGCD",
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
  "slug": "provenatgcd--9734ae5018b3b02964e5bcba",
  "source": {
    "blob": "ce935675bbea18f305353145099710697adc2795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9734ae5018b3b02964e5bcba650dd64086fe78f4e5be7cca10c1b393a42c9b2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2959c129353651e158b044adc2732f7797940148209b8e75e67f54474202ad43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatGCD (ex ey : Q(ℕ)) : (ed : Q(ℕ)) × Q(Nat.gcd $ex $ey = $ed) :=
  match ex.natLit!, ey.natLit! with
  | 0, _ => show (ed : Q(ℕ)) × Q(Nat.gcd 0 $ey = $ed) from ⟨ey, q(Nat.gcd_zero_left $ey)⟩
  | _, 0 => show (ed : Q(ℕ)) × Q(Nat.gcd $ex 0 = $ed) from ⟨ex, q(Nat.gcd_zero_right $ex)⟩
  | 1, _ => show (ed : Q(ℕ)) × Q(Nat.gcd 1 $ey = $ed) from ⟨mkRawNatLit 1, q(Nat.gcd_one_left $ey)⟩
  | _, 1 => show (ed : Q(ℕ)) × Q(Nat.gcd $ex 1 = $ed) from ⟨mkRawNatLit 1, q(Nat.gcd_one_right $ex)⟩
  | x, y =>
    let (d, a, b) := Nat.xgcdAux x 1 0 y 0 1
    if d = x then
      have pq : Q(Nat.mod $ey $ex = 0) := (q(Eq.refl (nat_lit 0)) : Expr)
      ⟨ex, q(nat_gcd_helper_dvd_left $ex $ey $pq)⟩
    else if d = y then
      have pq : Q(Nat.mod $ex $ey = 0) := (q(Eq.refl (nat_lit 0)) : Expr)
      ⟨ey, q(nat_gcd_helper_dvd_right $ex $ey $pq)⟩
    else
      have ea' : Q(ℕ) := mkRawNatLit a.natAbs
      have eb' : Q(ℕ) := mkRawNatLit b.natAbs
      if d = 1 then
        if a ≥ 0 then
          have pt : Q($ex * $ea' = $ey * $eb' + 1) := (q(Eq.refl ($ex * $ea')) : Expr)
          ⟨mkRawNatLit 1, q(nat_gcd_helper_2' $ex $ey $ea' $eb' $pt)⟩
        else
          have pt : Q($ey * $eb' = $ex * $ea' + 1) := (q(Eq.refl ($ey * $eb')) : Expr)
          ⟨mkRawNatLit 1, q(nat_gcd_helper_1' $ex $ey $ea' $eb' $pt)⟩
      else
        have ed : Q(ℕ) := mkRawNatLit d
        have pu : Q(Nat.mod $ex $ed = 0) := (q(Eq.refl (nat_lit 0)) : Expr)
        have pv : Q(Nat.mod $ey $ed = 0) := (q(Eq.refl (nat_lit 0)) : Expr)
        if a ≥ 0 then
          have pt : Q($ex * $ea' = $ey * $eb' + $ed) := (q(Eq.refl ($ex * $ea')) : Expr)
          ⟨ed, q(nat_gcd_helper_2 $ed $ex $ey $ea' $eb' $pu $pv $pt)⟩
        else
          have pt : Q($ey * $eb' = $ex * $ea' + $ed) := (q(Eq.refl ($ey * $eb')) : Expr)
          ⟨ed, q(nat_gcd_helper_1 $ed $ex $ey $ea' $eb' $pu $pv $pt)⟩

/-- Evaluate the `Nat.gcd` function. -/
@[norm_num Nat.gcd _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce935675bbea18f305353145099710697adc2795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
