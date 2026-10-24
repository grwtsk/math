# proveJacobiSymNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9eab278dba22420fa0e19d28782f4a4e73a34d0b69a28cddb86dee3971bb8da0",
  "kind": "def",
  "lexical_name": "proveJacobiSymNat",
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
  "slug": "provejacobisymnat--2ed73dd5c668576a9022be9f",
  "source": {
    "blob": "db5269773b3c2132e84a6f94d450d01d5ec61dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 326,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed73dd5c668576a9022be9f162f77f14a8ff92f9f0024a960b21203eadaab1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9eab278dba22420fa0e19d28782f4a4e73a34d0b69a28cddb86dee3971bb8da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def proveJacobiSymNat (ea eb : Q(ℕ)) : (er : Q(ℤ)) × Q(jacobiSymNat $ea $eb = $er) :=
  match eb.natLit! with
  | 0 =>
    haveI : $eb =Q 0 := ⟨⟩
    ⟨mkRawIntLit 1, q(jacobiSymNat.zero_right $ea)⟩
  | 1 =>
    haveI : $eb =Q 1 := ⟨⟩
    ⟨mkRawIntLit 1, q(jacobiSymNat.one_right $ea)⟩
  | b =>
    match b % 2 with
    | 0 =>
      match ea.natLit! with
      | 0 =>
        have hb : Q(Nat.beq ($eb / 2) 0 = false) := (q(Eq.refl false) : Expr)
        show (er : Q(ℤ)) × Q(jacobiSymNat 0 $eb = $er) from
          ⟨mkRawIntLit 0, q(jacobiSymNat.zero_left $eb $hb)⟩
      | 1 =>
        show (er : Q(ℤ)) × Q(jacobiSymNat 1 $eb = $er) from
          ⟨mkRawIntLit 1, q(jacobiSymNat.one_left $eb)⟩
      | a =>
        match a % 2 with
        | 0 =>
          have hb₀ : Q(Nat.beq ($eb / 2) 0 = false) := (q(Eq.refl false) : Expr)
          have ha : Q(Nat.mod $ea 2 = 0) := (q(Eq.refl 0) : Expr)
          have hb₁ : Q(Nat.mod $eb 2 = 0) := (q(Eq.refl 0) : Expr)
          ⟨mkRawIntLit 0, q(jacobiSymNat.even_even $ea $eb $hb₀ $ha $hb₁)⟩
        | _ =>
          have ha : Q(Nat.mod $ea 2 = 1) := (q(Eq.refl 1) : Expr)
          have hb : Q(Nat.mod $eb 2 = 0) := (q(Eq.refl 0) : Expr)
          have ec : Q(ℕ) := mkRawNatLit (b / 2)
          have hc : Q(Nat.div $eb 2 = $ec) := (q(Eq.refl $ec) : Expr)
          have ⟨er, p⟩ := proveJacobiSymOdd ea ec
          ⟨er, q(jacobiSymNat.odd_even $ea $eb $ec $er $ha $hb $hc $p)⟩
    | _ =>
      have a := ea.natLit!
      if b ≤ a then
        have eab : Q(ℕ) := mkRawNatLit (a % b)
        have hab : Q(Nat.mod $ea $eb = $eab) := (q(Eq.refl $eab) : Expr)
        have ⟨er, p⟩ := proveJacobiSymOdd eab eb
        ⟨er, q(jacobiSymNat.mod_left $ea $eb $eab $er $hab $p)⟩
      else
        proveJacobiSymOdd ea eb
#align norm_num.prove_jacobi_sym_nat Mathlib.Meta.NormNum.proveJacobiSymNat

/-- This evaluates `r := jacobiSym a b` and produces a proof term for the equality.
This is done by reducing to `r := jacobiSymNat (a % b) b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db5269773b3c2132e84a6f94d450d01d5ec61dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
