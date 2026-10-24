# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6df9cdfc471a81e8f3664dd65f29dbabc1eb34de",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6df9cdfc471a81e8f3664dd65f29dbabc1eb34de`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_eq_one_iff_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/gcd-eq-one-iff-coprime--853979a62ad4d52f0ee6822f.md) | 42 | `result-track:853979a62ad4d52f0ee6822f1c504d62cc9d7eef7bad833653550b7b2bed4f5c` |
| 2 | `theorem` | [isCoprime_iff_nat_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/iscoprime-iff-nat-coprime--0d65518e2d488765f4da2655.md) | 46 | `result-track:0d65518e2d488765f4da265563f8fc732bc3b8ca8e66e45954c316d2c8f01307` |
| 3 | `theorem` | [gcd_ne_one_iff_gcd_mul_right_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/gcd-ne-one-iff-gcd-mul-right-ne-one--47950fca2b19cb2100ac9fdf.md) | 52 | `result-track:47950fca2b19cb2100ac9fdf4251cf18eecaf77ca7bc42ecc3ab5d4d3febc290` |
| 4 | `theorem` | [sq_of_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/sq-of-gcd-eq-one--feb37ba7c81db1f88429ba36.md) | 56 | `result-track:feb37ba7c81db1f88429ba36d9182ad385a1dada587ead4ddb37e5c52fe704ac` |
| 5 | `theorem` | [sq_of_isCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/sq-of-iscoprime--90e41862950a3646a5fc80e4.md) | 68 | `result-track:90e41862950a3646a5fc80e477022f0004eb4f65e2f8c9af2d457ae382e4bf6a` |
| 6 | `theorem` | [natAbs_euclideanDomain_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/natabs-euclideandomain-gcd--4262af95cb5708522dfce7b3.md) | 74 | `result-track:4262af95cb5708522dfce7b306d84a64e672689078cca806b965f634ef84a253` |
| 7 | `theorem` | [Int.Prime.dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/int-prime-dvd-mul--0aa6d3abb51ac7501079e567.md) | 84 | `result-track:0aa6d3abb51ac7501079e567c2557568bb6d1f4da5ceecfde3c4a0f2f48c0037` |
| 8 | `theorem` | [Int.Prime.dvd_mul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/int-prime-dvd-mul--d4405808934e384edae2ce26.md) | 88 | `result-track:d4405808934e384edae2ce26472aed013e012bf1b8bbe83b14338d78f9d92821` |
| 9 | `theorem` | [Int.Prime.dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/int-prime-dvd-pow--ec8f53f73d47f66988be1847.md) | 93 | `result-track:ec8f53f73d47f66988be1847b476c362e4e508aa50462029a0ea64c7f6d87604` |
| 10 | `theorem` | [Int.Prime.dvd_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/int-prime-dvd-pow--dfc3d7b5e105220d1fab960d.md) | 98 | `result-track:dfc3d7b5e105220d1fab960d4a3a32dcc38b324c3a00cb9168f8f42ac35640ff` |
| 11 | `theorem` | [prime_two_or_dvd_of_dvd_two_mul_pow_self_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/prime-two-or-dvd-of-dvd-two-mul-pow-self-two--848227b8f01787eaef0f924f.md) | 103 | `result-track:848227b8f01787eaef0f924fbecf4be00e1ba2a64ff2934de852927ca5007cb6` |
| 12 | `theorem` | [Int.exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/int-exists-prime-and-dvd--7d0f03f971d89e6ba72b75cd.md) | 112 | `result-track:7d0f03f971d89e6ba72b75cd2ca27ddb7d593170ad969d2dab605415c081a3d2` |
| 13 | `theorem` | [Int.prime_iff_natAbs_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/int-prime-iff-natabs-prime--edd274bd252cbca95b23e74d.md) | 117 | `result-track:edd274bd252cbca95b23e74d7480a19089c8230727404a74295d36e0d5e08f32` |
| 14 | `theorem` | [span_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/span-natabs--6069f3e9ec60bc8cbd9e5972.md) | 122 | `result-track:6069f3e9ec60bc8cbd9e59723d1ba86c401c6a99c3c21d7f5472273a2cdca3a8` |
| 15 | `theorem` | [eq_pow_of_mul_eq_pow_odd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/eq-pow-of-mul-eq-pow-odd-left--93a3e81e21fbee1abe06be61.md) | 126 | `result-track:93a3e81e21fbee1abe06be611fe3d91ca1d9652d0ced5199554e95c7ff1ceef1` |
| 16 | `theorem` | [eq_pow_of_mul_eq_pow_odd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/eq-pow-of-mul-eq-pow-odd-right--30e7eb3496f49d00176ecfb8.md) | 133 | `result-track:30e7eb3496f49d00176ecfb8ea94a396b0755947beec64a4ccdc6c4d0f29547b` |
| 17 | `theorem` | [eq_pow_of_mul_eq_pow_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/declarations/eq-pow-of-mul-eq-pow-odd--5ab4917117e0294a066f0093.md) | 137 | `result-track:5ab4917117e0294a066f009317fb87ca153d4b47217eda54316511e0666541e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
