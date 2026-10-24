# X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bfaf3c1-eaa2-985c-6fa7-e746a0215a5b",
  "kind": "theorem",
  "lexical_name": "X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd",
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
  "slug": "x-pow-sub-one-mul-cyclotomic-dvd-x-pow-sub-one-of-dvd--a24cbed5ed71d23447f168aa",
  "source": {
    "blob": "e3bdd2889925bc517ebf7bef3d6ab45a15b27a2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 401,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf4fbec027b428bc7b403a8b1a5bd7132900dbee9ab3e8ef55a82bde6fa8ffe8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24cbed5ed71d23447f168aac5265fe0d51eb6f1771ad774a4598c0e08359011",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantf4fbec027b428bc7b403a8b1a5bd7132900dbee9ab3e8ef55a82bde6fa8ffe8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bfaf3c1-eaa2-985c-6fa7-e746a0215a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd (R) [CommRing R] {d n : ℕ}
    (h : d ∈ n.properDivisors) : (X ^ d - 1) * cyclotomic n R ∣ X ^ n - 1 := by
  have hdn := (Nat.mem_properDivisors.mp h).2
  use ∏ x ∈ n.properDivisors \ d.divisors, cyclotomic x R
  symm
  convert X_pow_sub_one_mul_prod_cyclotomic_eq_X_pow_sub_one_of_dvd R h using 1
  rw [mul_assoc]
  congr 1
  rw [← Nat.insert_self_properDivisors hdn.ne_bot, insert_sdiff_of_notMem, prod_insert]
  · exact Finset.notMem_sdiff_of_notMem_left Nat.self_notMem_properDivisors
  · exact fun hk => hdn.not_le <| Nat.divisor_le hk

section ArithmeticFunction

open ArithmeticFunction

open scoped ArithmeticFunction

/-- `cyclotomic n R` can be expressed as a product in a fraction field of `R[X]`
  using Möbius inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantf4fbec027b428bc7b403a8b1a5bd7132900dbee9ab3e8ef55a82bde6fa8ffe8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf4fbec027b428bc7b403a8b1a5bd7132900dbee9ab3e8ef55a82bde6fa8ffe8b.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bdd2889925bc517ebf7bef3d6ab45a15b27a2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
