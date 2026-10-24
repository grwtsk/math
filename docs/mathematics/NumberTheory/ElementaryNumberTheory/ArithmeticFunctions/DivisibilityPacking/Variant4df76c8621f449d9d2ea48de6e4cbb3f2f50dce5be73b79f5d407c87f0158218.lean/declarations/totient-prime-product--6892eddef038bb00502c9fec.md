# totient_prime_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a349eaa-3d2d-6fad-848b-b72d6fd97aa4",
  "kind": "theorem",
  "lexical_name": "totient_prime_product",
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
  "slug": "totient-prime-product--6892eddef038bb00502c9fec",
  "source": {
    "blob": "582e7cb7ad24517acd7048a2a9450d7ac47ecc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 215,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6892eddef038bb00502c9fec0472b301449334654bf8aa0b4979f337f9767e23",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a349eaa-3d2d-6fad-848b-b72d6fd97aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_prime_product (s : Finset ℕ) (hs : ∀ p ∈ s, Nat.Prime p) :
    Nat.totient (∏ p ∈ s, p) = ∏ p ∈ s, (p - 1) := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert p s hp ih =>
    have hpp := hs p (Finset.mem_insert_self p s)
    have hsp : ∀ q ∈ s, Nat.Prime q := fun q hq => hs q (Finset.mem_insert_of_mem hq)
    have hcop : Nat.Coprime p (∏ q ∈ s, q) := by
      rw [Nat.coprime_prod_right_iff]
      intro q hq
      apply (Nat.coprime_primes hpp (hsp q hq)).mpr
      exact fun he => hp (he.symm ▸ hq)
    simp only [Finset.prod_insert hp, Nat.totient_mul hcop, Nat.totient_prime hpp, ih hsp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `582e7cb7ad24517acd7048a2a9450d7ac47ecc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
