# rationalRealization_natPrimeExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1854a48b-b21a-6325-6cea-4f44804e2002",
  "kind": "theorem",
  "lexical_name": "rationalRealization_natPrimeExponent",
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
  "slug": "rationalrealization-natprimeexponent--a684652b2051dcbcad7862a7",
  "source": {
    "blob": "74d56ea401b2c7d48b4d9eb467d28fca909e75c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 245,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a684652b2051dcbcad7862a72b1fe59da256070bed584339faff5764732b9e11",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1854a48b-b21a-6325-6cea-4f44804e2002`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalRealization_natPrimeExponent {n : ℕ} (hn : n ≠ 0) :
    rationalRealization (natPrimeExponent n) = n := by
  classical
  let v := n.factorization.mapRange Int.ofNat (by simp)
  let e : PrimeIndex ↪ ℕ := ⟨Subtype.val, Subtype.val_injective⟩
  have hs : (v.support : Set ℕ) ⊆ Set.range e := by
    intro p hp
    have hpf : p ∈ n.factorization.support := (Finsupp.support_mapRange).trans (by rfl) hp
    have hprime : Nat.Prime p := Nat.prime_of_mem_primeFactors
      (by simpa only [Nat.support_factorization] using hpf)
    exact ⟨⟨p, hprime⟩, rfl⟩
  have he : (natPrimeExponent n).embDomain e = v :=
    Finsupp.embDomain_comapDomain hs
  calc
    rationalRealization (natPrimeExponent n) = v.prod (fun p k => (p : ℚ) ^ k) := by
      rw [← he, Finsupp.prod_embDomain]
      rfl
    _ = n.factorization.prod (fun p k => (p : ℚ) ^ (k : ℤ)) :=
      Finsupp.prod_mapRange_index (fun _ => zpow_zero _)
    _ = n := by
      simpa only [Finsupp.prod, Nat.cast_prod, Nat.cast_pow, zpow_natCast] using
        congrArg (fun a : ℕ => (a : ℚ)) (Nat.prod_factorization_pow_eq_self hn)

/-- The exact exponent vector of a positive rational, obtained by subtracting
the denominator factorization from the numerator factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d56ea401b2c7d48b4d9eb467d28fca909e75c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
