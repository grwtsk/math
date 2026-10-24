# X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85c79681ce75e89a6c58a85c2a2f5279474c82f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39edc8d4-bf35-eabc-31e3-f9942a754d82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:636c9e8a-fcb0-a8f8-d9fc-5af783ca2424",
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
  "slug": "x-pow-sub-one-mul-cyclotomic-dvd-x-pow-sub-one-of-dvd--5fd345a6f6a5a9b7bb3fe92c",
  "source": {
    "blob": "d85c79681ce75e89a6c58a85c2a2f5279474c82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 442,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fd345a6f6a5a9b7bb3fe92cc84333ce772941cb8544cce94427bc44be69a04e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:636c9e8a-fcb0-a8f8-d9fc-5af783ca2424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd (R) [CommRing R] {d n : ℕ}
    (h : d ∈ n.properDivisors) : (X ^ d - 1) * cyclotomic n R ∣ X ^ n - 1 := by
  have hdn := (Nat.mem_properDivisors.mp h).2
  use ∏ x in n.properDivisors \ d.divisors, cyclotomic x R
  symm
  convert X_pow_sub_one_mul_prod_cyclotomic_eq_X_pow_sub_one_of_dvd R h using 1
  rw [mul_assoc]
  congr 1
  rw [← Nat.insert_self_properDivisors hdn.ne_bot, insert_sdiff_of_not_mem, prod_insert]
  · exact Finset.not_mem_sdiff_of_not_mem_left Nat.properDivisors.not_self_mem
  · exact fun hk => hdn.not_le <| Nat.divisor_le hk
set_option linter.uppercaseLean3 false in
#align polynomial.X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd Polynomial.X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd

section ArithmeticFunction

open Nat.ArithmeticFunction

open scoped Nat.ArithmeticFunction

/-- `cyclotomic n R` can be expressed as a product in a fraction field of `R[X]`
  using Möbius inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85c79681ce75e89a6c58a85c2a2f5279474c82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
