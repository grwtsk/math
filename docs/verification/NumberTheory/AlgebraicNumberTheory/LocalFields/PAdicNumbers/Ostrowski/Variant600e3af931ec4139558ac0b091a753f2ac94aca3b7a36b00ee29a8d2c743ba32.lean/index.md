# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Ostrowski.Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac74f5817575d5ab839eb460e5284b309bad584",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac74f5817575d5ab839eb460e5284b309bad584`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.AbsoluteValue.Equivalence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_const_rpow_inv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/tendsto-const-rpow-inv--aa18887e2fc980bcb190e1c2.md) | 44 | `result-track:aa18887e2fc980bcb190e1c2e5264996d0bf47ac527635aa856ad40935ba8fcb` |
| 2 | `lemma` | [tendsto_nat_rpow_inv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/tendsto-nat-rpow-inv--9152507d0020e426d7bd3233.md) | 50 | `result-track:9152507d0020e426d7bd32332a3ed6297e62cab3407b36928482b195b572ee1b` |
| 3 | `lemma` | [list_mul_sum](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/list-mul-sum--cc3e23bd1cf4dbe15b7f1e31.md) | 56 | `result-track:cc3e23bd1cf4dbe15b7f1e31a54415b84e0c6e3f717a48a6319193ed6018f4b7` |
| 4 | `lemma` | [list_geom](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/list-geom--82ec7bb19c6f2b30a58db74a.md) | 63 | `result-track:82ec7bb19c6f2b30a58db74a955df6936b4a8caf5239b7ea84402e1a111fc329` |
| 5 | `lemma` | [eq_on_nat_iff_eq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/eq-on-nat-iff-eq--4a1f72ed992e390260c7672b.md) | 85 | `result-track:4a1f72ed992e390260c7672bb781bae1545d51a9763583b02d661264919f5e5a` |
| 6 | `lemma` | [equiv_on_nat_iff_equiv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/equiv-on-nat-iff-equiv--d441dffca1cb6786a03f956d.md) | 92 | `result-track:d441dffca1cb6786a03f956d1cecd8e3e3ba57d02d35af79c4aa192fd773ce1b` |
| 7 | `def` | [padic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/padic--f2b22875beda318f91cf0aa4.md) | 107 | `declaration-track:f2b22875beda318f91cf0aa4ba45679bd5e7365e255fec2b676f58470a93a8e6` |
| 8 | `lemma` | [padic_eq_padicNorm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/padic-eq-padicnorm--d34d14712285662499024010.md) | 116 | `result-track:d34d14712285662499024010e01c310eff40e78d97706c255065e4a033a30235` |
| 9 | `lemma` | [padic_le_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/padic-le-one--51361e17cadde622ac26d97e.md) | 119 | `result-track:51361e17cadde622ac26d97ec6da991b526b9af7c6064309ce74ed7033578fd1` |
| 10 | `lemma` | [exists_minimal_nat_zero_lt_and_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/exists-minimal-nat-zero-lt-and-lt-one--d05e64a1e46ffc3a84cb0613.md) | 129 | `result-track:d05e64a1e46ffc3a84cb0613e11cb400c2184743d3b72b9104d0c61bf670f845` |
| 11 | `lemma` | [is_prime_of_minimal_nat_zero_lt_and_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/is-prime-of-minimal-nat-zero-lt-and-lt-one--bcf023fa7dbf587f51307db8.md) | 149 | `result-track:bcf023fa7dbf587f51307db8b17b1d78f644b0cdf832adb264e7b1921be2056c` |
| 12 | `lemma` | [eq_one_of_not_dvd](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/eq-one-of-not-dvd--d49af1843201609bacb5b071.md) | 177 | `result-track:d49af1843201609bacb5b071885bab64022a57287f370beffc27a596c0ca5ee4` |
| 13 | `lemma` | [exists_pos_eq_pow_neg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/exists-pos-eq-pow-neg--99c4c1410a678a65a54433bb.md) | 218 | `result-track:99c4c1410a678a65a54433bb8f007d07a958243c7151de374ef636d9c2c33a83` |
| 14 | `theorem` | [equiv_padic_of_bounded](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/equiv-padic-of-bounded--da74b0aad60832598dc112d6.md) | 228 | `result-track:da74b0aad60832598dc112d67f91a78b145c023cbf51e7502bf4731ec52f6ad1` |
| 15 | `def` | [real](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/real--f551db4a94aaef759684c049.md) | 268 | `declaration-track:f551db4a94aaef759684c04900d9648adabb0bf886b1da99933afc8e32a5520a` |
| 16 | `lemma` | [real_eq_abs](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/real-eq-abs--1686d42806ac21e8f4dfa5d5.md) | 275 | `result-track:1686d42806ac21e8f4dfa5d507f671240fe3615c07a2b2ec672f093caec74cab` |
| 17 | `lemma` | [apply_le_sum_digits](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/apply-le-sum-digits--c41e03f00f5accc7f46338cc.md) | 283 | `result-track:c41e03f00f5accc7f46338cc208f3406d52de1b61967ea939603338e91e1afcd` |
| 18 | `lemma` | [one_lt_of_not_bounded](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/one-lt-of-not-bounded--58a54b96a8a8aee348379619.md) | 308 | `result-track:58a54b96a8a8aee34837961943d5869af5d25b94e5eca5535e9f8f2bf43c4113` |
| 19 | `lemma` | [expr_pos](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/expr-pos--86fff16e01a84d3b6340405b.md) | 361 | `result-track:86fff16e01a84d3b6340405b8196d31b196c01934c7d05b6d04bc681d3e9b002` |
| 20 | `lemma` | [param_upperbound](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/param-upperbound--5e2c2c827763eb61cb39b7eb.md) | 367 | `result-track:5e2c2c827763eb61cb39b7eb1af51621022ca327aa45ad65477ba48ee7e9d525` |
| 21 | `lemma` | [le_pow_log](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/le-pow-log--484851f253252408c3fef193.md) | 401 | `result-track:484851f253252408c3fef19333d57b882042a6ab0ffa434444f1b1a664245367` |
| 22 | `lemma` | [le_of_eq_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/le-of-eq-pow--d9232b728d1b76276122ae06.md) | 411 | `result-track:d9232b728d1b76276122ae06ff6878225a6b431d59804c35ae303971317ce7e3` |
| 23 | `lemma` | [eq_of_eq_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/eq-of-eq-pow--c3d61369343a0b0bc727f945.md) | 418 | `result-track:c3d61369343a0b0bc727f9453b7e1ce9d4c175b258e7d39fc2627286dfc90521` |
| 24 | `theorem` | [equiv_real_of_unbounded](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/equiv-real-of-unbounded--2ab1064164ea56e4c386517f.md) | 426 | `result-track:2ab1064164ea56e4c386517f765f46793caeb8151553e4ded47ad4b238884a33` |
| 25 | `theorem` | [equiv_real_or_padic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/equiv-real-or-padic--dc1de55269df7f483ce82d2e.md) | 464 | `result-track:dc1de55269df7f483ce82d2e92c618a66c311a5ffcd35cc218a90a0c564fa73e` |
| 26 | `lemma` | [not_real_equiv_padic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant600e3af931ec4139558ac0b091a753f2ac94aca3b7a36b00ee29a8d2c743ba32.lean/declarations/not-real-equiv-padic--878bddfc2e9e9af6865752b0.md) | 471 | `result-track:878bddfc2e9e9af6865752b013a311a18a9ec96df0bdc22f8667f084e4b0a751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
