# X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dd47ca6-03c9-b622-71de-43102d5a926c",
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
  "slug": "x-pow-sub-one-mul-cyclotomic-dvd-x-pow-sub-one-of-dvd--912597f46366b0dbe0833cf8",
  "source": {
    "blob": "ed9ef4a7bff968610b03a1b277d439f21544f387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 412,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912597f46366b0dbe0833cf8cdb83057bcba090072667d596ccbf2af01c18c80",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dd47ca6-03c9-b622-71de-43102d5a926c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd (R) [CommRing R] {d n : ℕ}
    (h : d ∈ n.properDivisors) : (X ^ d - 1) * cyclotomic n R ∣ X ^ n - 1 := by
  rw [Nat.mem_properDivisors] at h
  use ∏ x ∈ n.properDivisors \ d.divisors, cyclotomic x R
  rw [← X_pow_sub_one_mul_prod_cyclotomic_eq_X_pow_sub_one_of_dvd R h.1 h.2.ne_bot,
    ← Nat.insert_self_properDivisors, Finset.insert_sdiff_of_notMem,
    Finset.prod_insert, mul_assoc]
  · exact Finset.notMem_sdiff_of_notMem_left Nat.self_notMem_properDivisors
  · exact fun hk => h.2.not_ge <| Nat.divisor_le hk
  · exact h.2.ne_bot

section ArithmeticFunction

open ArithmeticFunction

-- access notation `μ`
open scoped ArithmeticFunction.Moebius

/-- `cyclotomic n R` can be expressed as a product in a fraction field of `R[X]`
  using Möbius inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9ef4a7bff968610b03a1b277d439f21544f387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
