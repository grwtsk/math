# evalPrimeFactorsList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21f1ad95b2ab0036e23f6a4af3509269883ec36e7054f7df917466ea539402ad",
  "kind": "def",
  "lexical_name": "evalPrimeFactorsList",
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
  "slug": "evalprimefactorslist--6f249afa001e28c2e13f62b7",
  "source": {
    "blob": "04758fde3d9bb84470ffd1fbbbd67355e6fd43b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variantba2c214cc18fdcbe26b7fe02bdfbb414986467c8fd42ba5e478287ed8e2b96f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f249afa001e28c2e13f62b70b3d45c15117f7507bed4d3d17ecc0379f4710d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variantba2c214cc18fdcbe26b7fe02bdfbb414986467c8fd42ba5e478287ed8e2b96f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21f1ad95b2ab0036e23f6a4af3509269883ec36e7054f7df917466ea539402ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalPrimeFactorsList
    {en enl : Q(ℕ)} (hn : Q(IsNat $en $enl)) :
    MetaM ((l : Q(List ℕ)) × Q(Nat.primeFactorsList $en = $l)) := do
  match enl.natLit! with
  | 0 =>
    have _ : $enl =Q nat_lit 0 := ⟨⟩
    have hen : Q($en = 0) := q($(hn).out)
    return ⟨_, q($hen ▸ Nat.primeFactorsList_zero)⟩
  | 1 =>
    let _ : $enl =Q nat_lit 1 := ⟨⟩
    have hen : Q($en = 1) := q($(hn).out)
    return ⟨_, q($hen ▸ Nat.primeFactorsList_one)⟩
  | _ => do
    have h2 : Q(IsNat 2 (nat_lit 2)) := q(⟨Eq.refl (nat_lit 2)⟩)
    let ⟨l, p⟩ ← evalPrimeFactorsListAux hn h2
    return ⟨l, q(($p).primeFactorsList_eq)⟩

end Mathlib.Meta.Simproc

open Qq Mathlib.Meta.Simproc Mathlib.Meta.NormNum

/-- A simproc for terms of the form `Nat.primeFactorsList (OfNat.ofNat n)`. -/
simproc Nat.primeFactorsList_ofNat (Nat.primeFactorsList _) := .ofQ fun u α e => do
  match u, α, e with
  | 1, ~q(List ℕ), ~q(Nat.primeFactorsList (OfNat.ofNat $n)) =>
    let hn : Q(IsNat (OfNat.ofNat $n) $n) := q(⟨rfl⟩)
    let ⟨l, p⟩ ← evalPrimeFactorsList hn
    return .done <| .mk q($l) <| some q($p)
  | _ =>
    return .continue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variantba2c214cc18fdcbe26b7fe02bdfbb414986467c8fd42ba5e478287ed8e2b96f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variantba2c214cc18fdcbe26b7fe02bdfbb414986467c8fd42ba5e478287ed8e2b96f6.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04758fde3d9bb84470ffd1fbbbd67355e6fd43b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
