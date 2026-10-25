# evalFinsetIccInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1984cf284674d2b259626fb64a249b3d2787aa767717a9434e446a0136c05b41",
  "kind": "def",
  "lexical_name": "evalFinsetIccInt",
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
  "slug": "evalfinseticcint--f16d29566310152245f18e0f",
  "source": {
    "blob": "a9688819c94a1f9b32906e9846e4dc3116733786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variantcb0910f92771fa1c88ab4a09d454ed817b82f7e0069f1f15327d7690e645dbcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f16d29566310152245f18e0fd08d931a259d10768fdd2b1497c1698f3af68aa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variantcb0910f92771fa1c88ab4a09d454ed817b82f7e0069f1f15327d7690e645dbcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1984cf284674d2b259626fb64a249b3d2787aa767717a9434e446a0136c05b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalFinsetIccInt (m n : ℤ) (em en : Q(ℤ)) :
    MetaM ((s : Q(Finset ℤ)) × Q(.Icc $em $en = $s)) := do
  -- If `m = n`, then `Icc m n = {m}`. We handle this case separately because `insert m ∅` is
  -- not syntactically `{m}`.
  if m = n then
    have : $em =Q $en := ⟨⟩
    return ⟨q({$em}), q(Icc_self _)⟩
  -- If `m < n`, then `Icc m n = insert m (Icc m n)`.
  else if m < n then
    let hmn ← mkDecideProofQ q($em ≤ $en)
    have em' : Q(ℤ) := mkIntLitQ (m + 1)
    have : $em' =Q $em + 1 := ⟨⟩
    let ⟨s, hs⟩ ← evalFinsetIccInt (m + 1) n em' en
    return ⟨q(insert $em $s), q(Int.Icc_eq_insert_of_Icc_succ_eq $hmn $hs)⟩
  -- Else `n < m` and `Icc m n = ∅`.
  else
    let hnm ← mkDecideProofQ q($en < $em)
    return ⟨q(∅), q(Icc_eq_empty_of_lt $hnm)⟩

end Mathlib.Tactic.Simp

open Mathlib.Tactic.Simp

/-!
Note that these simprocs are not made simp to avoid simp blowing up on goals containing things of
the form `Iic (2 ^ 1024)`.
-/
namespace Finset

/-- Simproc to compute `Finset.Icc a b` where `a` and `b` are numerals.

**Warnings**:
* With the standard depth recursion limit, this simproc can compute intervals of size 250 at most.
* Make sure to exclude `Finset.insert_eq_of_mem` from your simp call when using this simproc. This
  avoids a quadratic time performance hit. -/
simproc_decl Icc_ofNat_ofNat (Icc _ _) := .ofQ fun u α e ↦ do
  match u, α, e with
  | 1, ~q(Finset ℕ), ~q(Icc $em $en) =>
    let some m := em.nat? | return .continue
    let some n := en.nat? | return .continue
    let ⟨es, p⟩ ← evalFinsetIccNat m n em en
    return .done <| .mk es <| .some p
  | 1, ~q(Finset ℤ), ~q(Icc $em $en) =>
    let some m := em.int? | return .continue
    let some n := en.int? | return .continue
    let ⟨es, p⟩ ← evalFinsetIccInt m n em en
    return .done <| .mk es <| .some p
  | _, _, _ => return .continue

/-- Simproc to compute `Finset.Ico a b` where `a` and `b` are numerals.

**Warnings**:
* With the standard depth recursion limit, this simproc can compute intervals of size 250 at most.
* Make sure to exclude `Finset.insert_eq_of_mem` from your simp call when using this simproc. This
  avoids a quadratic time performance hit. -/
simproc_decl Ico_ofNat_ofNat (Ico _ _) := .ofQ fun u α e ↦ do
  match u, α, e with
  | 1, ~q(Finset ℕ), ~q(Ico $em $en) =>
    let some m := em.nat? | return .continue
    let some n := en.nat? | return .continue
    match n with
    | 0 =>
      have : $en =Q 0 := ⟨⟩
      return .done <| .mk q(∅) <| .some q(Nat.Ico_zero $em)
    | n + 1 =>
      have en' := mkNatLitQ n
      have : $en =Q $en' + 1 := ⟨⟩
      let ⟨es, p⟩ ← evalFinsetIccNat m n em en'
      return .done { expr := es, proof? := q(Nat.Ico_succ_eq_of_Icc_eq $p) }
  | 1, ~q(Finset ℤ), ~q(Ico $em $en) =>
    let some m := em.int? | return .continue
    let some n := en.int? | return .continue
    have en' := mkIntLitQ (n - 1)
    have : $en' =Q $en - 1 := ⟨⟩
    let ⟨es, p⟩ ← evalFinsetIccInt m (n - 1) em en'
    return .done { expr := es, proof? := q(Int.Ico_eq_of_Icc_pred_eq $p) }
  | _, _, _ => return .continue

/-- Simproc to compute `Finset.Ioc a b` where `a` and `b` are numerals.

**Warnings**:
* With the standard depth recursion limit, this simproc can compute intervals of size 250 at most.
* Make sure to exclude `Finset.insert_eq_of_mem` from your simp call when using this simproc. This
  avoids a quadratic time performance hit. -/
simproc_decl Ioc_ofNat_ofNat (Ioc _ _) := .ofQ fun u α e ↦ do
  match u, α, e with
  | 1, ~q(Finset ℕ), ~q(Ioc $em $en) =>
    let some m := em.nat? | return .continue
    let some n := en.nat? | return .continue
    have em' := mkNatLitQ (m + 1)
    have : $em' =Q $em + 1 := ⟨⟩
    let ⟨es, p⟩ ← evalFinsetIccNat (m + 1) n em' en
    return .done <| .mk es <| .some q(Nat.Ioc_eq_of_Icc_succ_eq $p)
  | 1, ~q(Finset ℤ), ~q(Ioc $em $en) =>
    let some m := em.int? | return .continue
    let some n := en.int? | return .continue
    have em' := mkIntLitQ (m + 1)
    have : $em' =Q $em + 1 := ⟨⟩
    let ⟨es, p⟩ ← evalFinsetIccInt (m + 1) n em' en
    return .done { expr := es, proof? := q(Int.Ioc_eq_of_Icc_succ_eq $p) }
  | _, _, _ => return .continue

/-- Simproc to compute `Finset.Ioo a b` where `a` and `b` are numerals.

**Warnings**:
* With the standard depth recursion limit, this simproc can compute intervals of size 250 at most.
* Make sure to exclude `Finset.insert_eq_of_mem` from your simp call when using this simproc. This
  avoids a quadratic time performance hit. -/
simproc_decl Ioo_ofNat_ofNat (Ioo _ _) := .ofQ fun u α e ↦ do
  match u, α, e with
  | 1, ~q(Finset ℕ), ~q(Ioo $em $en) =>
    let some m := em.nat? | return .continue
    let some n := en.nat? | return .continue
    let ⟨es, p⟩ ← evalFinsetIccNat (m + 1) (n - 1) q($em + 1) q($en - 1)
    return .done <| .mk es <| .some q(Nat.Ioo_eq_of_Icc_succ_pred_eq $p)
  | 1, ~q(Finset ℤ), ~q(Ioo $em $en) =>
    let some m := em.int? | return .continue
    let some n := en.int? | return .continue
    have em' := mkIntLitQ (m + 1)
    have : $em' =Q $em + 1 := ⟨⟩
    have en' := mkIntLitQ (n - 1)
    have : $en' =Q $en - 1 := ⟨⟩
    let ⟨es, p⟩ ← evalFinsetIccInt (m + 1) (n - 1) em' en'
    return .done { expr := es, proof? := q(Int.Ioo_eq_of_Icc_succ_pred_eq $p) }
  | _, _, _ => return .continue

/-- Simproc to compute `Finset.Iic b` where `b` is a numeral.

**Warnings**:
* With the standard depth recursion limit, this simproc can compute intervals of size 250 at most.
* Make sure to exclude `Finset.insert_eq_of_mem` from your simp call when using this simproc. This
  avoids a quadratic time performance hit. -/
simproc_decl Iic_ofNat (Iic _) := .ofQ fun u α e ↦ do
  match u, α, e with
  | 1, ~q(Finset ℕ), ~q(Iic $en) =>
    let some n := en.nat? | return .continue
    let ⟨es, p⟩ ← evalFinsetIccNat 0 n q(0) en
    return .done <| .mk es <| .some q(Nat.Iic_eq_of_Icc_zero_eq $p)
  | _, _, _ => return .continue

/-- Simproc to compute `Finset.Iio b` where `b` is a numeral.

**Warnings**:
* With the standard depth recursion limit, this simproc can compute intervals of size 250 at most.
* Make sure to exclude `Finset.insert_eq_of_mem` from your simp call when using this simproc. This
  avoids a quadratic time performance hit. -/
simproc_decl Iio_ofNat (Iio _) := .ofQ fun u α e ↦ do
  match u, α, e with
  | 1, ~q(Finset ℕ), ~q(Iio $en) =>
    let some n := en.nat? | return .continue
    match n with
    | 0 =>
      have : $en =Q 0 := ⟨⟩
      return .done <| .mk q(∅) <| .some q(Nat.Iio_zero)
    | n + 1 =>
      have en' := mkNatLitQ n
      have : $en =Q $en' + 1 := ⟨⟩
      let ⟨es, p⟩ ← evalFinsetIccNat 0 n q(0) q($en')
      return .done  <| .mk es <| some q(Nat.Iio_succ_eq_of_Icc_zero_eq $p)
  | _, _, _ => return .continue

attribute [nolint unusedHavesSuffices]
  Iio_ofNat Ico_ofNat_ofNat Ioc_ofNat_ofNat Ioo_ofNat_ofNat

/-! ### `ℕ` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variantcb0910f92771fa1c88ab4a09d454ed817b82f7e0069f1f15327d7690e645dbcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinsetInterval/Variantcb0910f92771fa1c88ab4a09d454ed817b82f7e0069f1f15327d7690e645dbcc.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9688819c94a1f9b32906e9846e4dc3116733786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
