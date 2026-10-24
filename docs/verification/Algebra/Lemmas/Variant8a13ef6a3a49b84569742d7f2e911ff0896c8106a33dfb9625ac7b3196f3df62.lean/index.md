# Verification target: GRWTSK.Algebra.Lemmas.Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e6d6bd968e49d6ec1a02a8f4bc8121d8310ab1a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e6d6bd968e49d6ec1a02a8f4bc8121d8310ab1a`.

Source path: `GRWTSK/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dvd_smul_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/dvd-smul-of-dvd--5766b9c643caca72b9061f8e.md) | 23 | `result-track:5766b9c643caca72b9061f8ef7e7078976d5f3d2647581276fb1be186502b2c2` |
| 2 | `lemma` | [dvd_nsmul_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/dvd-nsmul-of-dvd--3c6dfe800caafc5b8500b463.md) | 27 | `result-track:3c6dfe800caafc5b8500b463ba9cec7a0c1c86aff1e8ac5810c68042ec4cde1d` |
| 3 | `lemma` | [dvd_zsmul_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/dvd-zsmul-of-dvd--cd5fbb37e83e9c165dbc68bc.md) | 30 | `result-track:cd5fbb37e83e9c165dbc68bcb59fb96d62131d1c9432c2c0446ec8bc38a81a5e` |
| 4 | `lemma` | [pow_dvd_add_pow_of_pow_eq_zero_right](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/pow-dvd-add-pow-of-pow-eq-zero-right--4223076c6c018399ab36cb98.md) | 41 | `result-track:4223076c6c018399ab36cb98e79d77336693260b1f65276da04cf48cf61c5ad1` |
| 5 | `lemma` | [pow_dvd_add_pow_of_pow_eq_zero_left](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/pow-dvd-add-pow-of-pow-eq-zero-left--8a79dc3e2ab45c3ada7df6d1.md) | 51 | `result-track:8a79dc3e2ab45c3ada7df6d1b21456b12fe4a87044d5e96b7d9529f6ea7b60b6` |
| 6 | `lemma` | [pow_dvd_pow_of_sub_pow_eq_zero](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/pow-dvd-pow-of-sub-pow-eq-zero--d98adccddb0f9b82297a15a5.md) | 61 | `result-track:d98adccddb0f9b82297a15a56866ce544b9c0ac28301da3b810d1ae0e75bdbf6` |
| 7 | `lemma` | [pow_dvd_pow_of_add_pow_eq_zero](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/pow-dvd-pow-of-add-pow-eq-zero--97daca7051a6c85b939843cc.md) | 67 | `result-track:97daca7051a6c85b939843cc9f3ca810b5915bafb1ccdb67f23220d08a2926ff` |
| 8 | `lemma` | [pow_dvd_sub_pow_of_pow_eq_zero_right](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/pow-dvd-sub-pow-of-pow-eq-zero-right--1f07b8395fdc2a06f46926b1.md) | 74 | `result-track:1f07b8395fdc2a06f46926b13a9ec7ccaffdf595b1788dbd83e585f37e6f19e6` |
| 9 | `lemma` | [pow_dvd_sub_pow_of_pow_eq_zero_left](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/pow-dvd-sub-pow-of-pow-eq-zero-left--0ae6fa665bf01ce354b7bc1c.md) | 78 | `result-track:0ae6fa665bf01ce354b7bc1c5ee7d990a11c7478b7313aeeafecccb14b075514` |
| 10 | `lemma` | [add_pow_dvd_pow_of_pow_eq_zero_right](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/add-pow-dvd-pow-of-pow-eq-zero-right--1907ad82234bb4b5becf9f08.md) | 84 | `result-track:1907ad82234bb4b5becf9f086954f52830af18c270edf00b338361cf54aae843` |
| 11 | `lemma` | [add_pow_dvd_pow_of_pow_eq_zero_left](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/add-pow-dvd-pow-of-pow-eq-zero-left--947a602d91314bce4c44eaf6.md) | 88 | `result-track:947a602d91314bce4c44eaf6ad0f721d37c4cc1945bf5480501ef01cc7ec034b` |
| 12 | `lemma` | [dvd_mul_sub_mul_mul_left_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/dvd-mul-sub-mul-mul-left-of-dvd--caad3ffb1b2c8da9586153d9.md) | 99 | `result-track:caad3ffb1b2c8da9586153d9e42d63be57a162eb7758e8bad300bfffed1849f6` |
| 13 | `lemma` | [dvd_mul_sub_mul_mul_right_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/dvd-mul-sub-mul-mul-right-of-dvd--a790e0c9958f85db3d90f7bb.md) | 108 | `result-track:a790e0c9958f85db3d90f7bb6dd1d844c34cfab35849b5d899c164bc037f550e` |
| 14 | `lemma` | [dvd_mul_sub_mul_mul_gcd_of_dvd](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/dvd-mul-sub-mul-mul-gcd-of-dvd--d8499a7bde1fc7e8d0fd7e52.md) | 113 | `result-track:d8499a7bde1fc7e8d0fd7e52f2b85a927842fa8aa1bf478e41980bc7276d2ef8` |
| 15 | `theorem` | [associated_abs_left_iff](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/associated-abs-left-iff--bd1b514fe679ce237a55b62b.md) | 126 | `result-track:bd1b514fe679ce237a55b62bc91d7154a93a20aad5d01b612edd44d6a068b855` |
| 16 | `theorem` | [associated_abs_right_iff](../../../../mathematics/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/declarations/associated-abs-right-iff--004c851a62a7cb1afe4b73eb.md) | 132 | `result-track:004c851a62a7cb1afe4b73ebbb0fa58a09d456c92638c51f21ffd6072dc21585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
