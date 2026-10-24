# toInteger_sub_one_not_dvd_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:119201a8-72af-c1f2-435d-047040f2a8a5",
  "kind": "lemma",
  "lexical_name": "toInteger_sub_one_not_dvd_two",
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
  "slug": "tointeger-sub-one-not-dvd-two--7df31b879c03502dbc9a5168",
  "source": {
    "blob": "2bfbc50ddf81b8eb63cc4180199762b7548d7efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 550,
    "path": "GRWTSK/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7df31b879c03502dbc9a5168101d5f1b81ce241045b59ebda408d9677b132539",
  "verification": {
    "reference": "docs/verification/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:119201a8-72af-c1f2-435d-047040f2a8a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toInteger_sub_one_not_dvd_two [IsCyclotomicExtension {p ^ (k + 1)} ℚ K]
    (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1))) (hodd : p ≠ 2) : ¬ hζ.toInteger - 1 ∣ 2 := fun h ↦ by
  have : NumberField K := IsCyclotomicExtension.numberField {p ^ (k + 1)} ℚ K
  replace h : hζ.toInteger - 1 ∣ ↑(2 : ℤ) := by simp [h]
  rw [← Ideal.norm_dvd_iff, hζ.norm_toInteger_sub_one_of_prime_ne_two hodd] at h
  · refine hodd <| PNat.coe_inj.1 <| (prime_dvd_prime_iff_eq ?_ ?_).1 ?_
    · exact Nat.prime_iff.1 hp.1
    · exact Nat.prime_iff.1 Nat.prime_two
    · exact Int.ofNat_dvd.mp h
  · rw [hζ.norm_toInteger_sub_one_of_prime_ne_two hodd]
    exact Nat.prime_iff_prime_int.1 hp.1

end IsPrimitiveRoot

section absdiscr

namespace IsCyclotomicExtension.Rat

open nonZeroDivisors IsPrimitiveRoot

variable (K p k)
variable [CharZero K]

/-- We compute the absolute discriminant of a `p ^ k`-th cyclotomic field.
  Beware that in the cases `p ^ k = 1` and `p ^ k = 2` the formula uses `1 / 2 = 0` and `0 - 1 = 0`.
  See also the results below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bfbc50ddf81b8eb63cc4180199762b7548d7efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
