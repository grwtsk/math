# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "757864f2728360289feee699f75c94bc36bb95c2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `757864f2728360289feee699f75c94bc36bb95c2`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_eq_one_iff_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/gcd-eq-one-iff-coprime--e5d8d26fe28b70906a020624.md) | 34 | `result-track:e5d8d26fe28b70906a02062412d35b44f6e72ad112fda6b4a428a52d47648fbe` |
| 2 | `theorem` | [isCoprime_iff_nat_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/iscoprime-iff-nat-coprime--171dc88c5e3df23c10f8d99e.md) | 38 | `result-track:171dc88c5e3df23c10f8d99ebfd7b0520cbc88d373f8b98a8e68a90a10b46b2d` |
| 3 | `theorem` | [gcd_ne_one_iff_gcd_mul_right_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/gcd-ne-one-iff-gcd-mul-right-ne-one--75952cdab07e053bed30dcd7.md) | 44 | `result-track:75952cdab07e053bed30dcd73d5c5358d219f97ef35d8ea38e1008a93ee3f7de` |
| 4 | `theorem` | [sq_of_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/sq-of-gcd-eq-one--5863f3c893edb1c0692aa005.md) | 48 | `result-track:5863f3c893edb1c0692aa005b113517bb9df07440ede1238a27b982ae27f480d` |
| 5 | `theorem` | [sq_of_isCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/sq-of-iscoprime--0604076bdcdf958fda704bca.md) | 60 | `result-track:0604076bdcdf958fda704bca723ee9afe6ff1c78e1ca60111f483b7c87038d0b` |
| 6 | `theorem` | [natAbs_euclideanDomain_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/natabs-euclideandomain-gcd--992e5c19d6bc6000e3dc6d86.md) | 66 | `result-track:992e5c19d6bc6000e3dc6d8642fbb7dbd04a6fe0072637dd3b277f7fbb31a112` |
| 7 | `theorem` | [Int.Prime.dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/int-prime-dvd-mul--0753252c96621a962b4d8bdc.md) | 76 | `result-track:0753252c96621a962b4d8bdca8ea41963505c1f00525ebb5089627bac874e1d8` |
| 8 | `theorem` | [Int.Prime.dvd_mul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/int-prime-dvd-mul--3ecd158b2a7cb97d371d86a9.md) | 80 | `result-track:3ecd158b2a7cb97d371d86a9c8f6729fa9f42271fb3e508036d0fc9f98409df8` |
| 9 | `theorem` | [Int.Prime.dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/int-prime-dvd-pow--74154494f9f0cec1f659be67.md) | 85 | `result-track:74154494f9f0cec1f659be6765fe56fc60a0104bf49e158817f463151083b8a1` |
| 10 | `theorem` | [Int.Prime.dvd_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/int-prime-dvd-pow--347ed9cce049ef980bb9171f.md) | 90 | `result-track:347ed9cce049ef980bb9171f8bdbdb0d5c37420954bab96e3336425d98e95c2f` |
| 11 | `theorem` | [prime_two_or_dvd_of_dvd_two_mul_pow_self_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/prime-two-or-dvd-of-dvd-two-mul-pow-self-two--ec00fe9e3d1fd804e9413b95.md) | 95 | `result-track:ec00fe9e3d1fd804e9413b95ad5f1a51bd2ba9744d7776223b96082e4ee0beb6` |
| 12 | `theorem` | [Int.exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/int-exists-prime-and-dvd--f470f63e5a8132aeaa66be48.md) | 104 | `result-track:f470f63e5a8132aeaa66be481189c3ad654bebb60f615a790c8d0b35e4b6a2ea` |
| 13 | `theorem` | [Int.prime_iff_natAbs_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/int-prime-iff-natabs-prime--c4a0be43d371622b72e41d20.md) | 109 | `result-track:c4a0be43d371622b72e41d20bcaf4704f4be84e3e635e6b0d0a0bafe713aedfb` |
| 14 | `theorem` | [span_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/span-natabs--99c15ae78b19cd70626502d5.md) | 114 | `result-track:99c15ae78b19cd70626502d54d31976dc2144d736d3c77935b495c2ef96ca257` |
| 15 | `theorem` | [eq_pow_of_mul_eq_pow_odd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/eq-pow-of-mul-eq-pow-odd-left--fe8865307fd2077bb8311c8c.md) | 118 | `result-track:fe8865307fd2077bb8311c8ce6359d0fb9c357372e2f5e8c24dbb00ca2819467` |
| 16 | `theorem` | [eq_pow_of_mul_eq_pow_odd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/eq-pow-of-mul-eq-pow-odd-right--ebd0dfac7d572a6cc3733c7f.md) | 125 | `result-track:ebd0dfac7d572a6cc3733c7f08f0fddf69988d00aa6d377f727e2172fb871cfe` |
| 17 | `theorem` | [eq_pow_of_mul_eq_pow_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantc2e9a5eb207de220f8a57b4f36a1f2e29c17d0ad4facb308724f4556dae01874.lean/declarations/eq-pow-of-mul-eq-pow-odd--79fb750e5e387609c0e55190.md) | 129 | `result-track:79fb750e5e387609c0e5519030d3165a23b958eb9a343038a58380e9aec50a93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
