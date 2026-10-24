# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergSieve.Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0ffa4d2b7ed763496737bc3100d210365d038a3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0ffa4d2b7ed763496737bc3100d210365d038a3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BoundingSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/boundingsieve--38271cb639c5e93d82d19754.md) | 59 | `declaration-track:38271cb639c5e93d82d19754a0f6743d62e68139e3953e26a09ac4704db53fc2` |
| 2 | `class` | [SelbergSieve](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/selbergsieve--f2061bfcb99c1dac213187f5.md) | 83 | `declaration-track:f2061bfcb99c1dac213187f58cd671be2412c637f5c8c596e88ece996c50d796` |
| 3 | `def` | [evalBoundingSieveWeights](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/evalboundingsieveweights--7e5734869fb1c7f85559bd5f.md) | 98 | `declaration-track:7e5734869fb1c7f85559bd5f670e437ae91fc8636cf6bf3a5673c8cdf1ec780e` |
| 4 | `theorem` | [one_le_y](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/one-le-y--476434bd13494f4c7983f2a0.md) | 125 | `result-track:476434bd13494f4c7983f2a0d0ebfaf228eba5718a323de0ab19497b805408d5` |
| 5 | `theorem` | [prodPrimes_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/prodprimes-ne-zero--fa2cddc75bd6bddfdf06bb0b.md) | 135 | `result-track:fa2cddc75bd6bddfdf06bb0bd8a168d4c38b8aeecf7b0136a37edd6d02a53b4d` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/squarefree-of-dvd-prodprimes--dec24bd286e63166debddd69.md) | 138 | `result-track:dec24bd286e63166debddd692801fba72462335625e2155063662c25af10d65a` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/squarefree-of-mem-divisors-prodprimes--406eaa05687475c32ce8b432.md) | 141 | `result-track:406eaa05687475c32ce8b43217597d91e4091dd3bcfe33eeb9043265cb0f1f5e` |
| 8 | `theorem` | [prod_primeFactors_nu](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/prod-primefactors-nu--e04fcef1a113d1bf4399b9c6.md) | 147 | `result-track:e04fcef1a113d1bf4399b9c660818007d4103ab3c60271f49d5e44b5a7a6b3a0` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/nu-pos-of-dvd-prodprimes--868815f11931fe978f19133d.md) | 151 | `result-track:868815f11931fe978f19133d36770656d1807da77af8937757600d7d22f6fb5b` |
| 10 | `theorem` | [nu_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/nu-ne-zero--82710adf592a452aa96fb0b3.md) | 161 | `result-track:82710adf592a452aa96fb0b379c03fd379ef998d9018fd0e152efb170c4f6d38` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/nu-lt-one-of-dvd-prodprimes--0d56070e36c823033abf15f4.md) | 165 | `result-track:0d56070e36c823033abf15f48bd5b605fb31e0b102c47652445a95990068b81f` |
| 12 | `def` | [multSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/multsum--8be1561a1bdf03521f395f79.md) | 183 | `declaration-track:8be1561a1bdf03521f395f796229c17fc9198edebc0800dd7a7b0e63d122f9fa` |
| 13 | `def` | [rem](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/rem--3e3c7fd5bf937bb1e2b63927.md) | 191 | `declaration-track:3e3c7fd5bf937bb1e2b6392713a43cf7ed0ec64293786b4c5fe15b758363a4b2` |
| 14 | `def` | [siftedSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/siftedsum--d98b70dea8d16f529c00798a.md) | 197 | `declaration-track:d98b70dea8d16f529c00798a4e82b2ebe284b1d3f62198ab4541769498a85ef2` |
| 15 | `def` | [mainSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/mainsum--a9ef3607e81eb194f96a820b.md) | 200 | `declaration-track:a9ef3607e81eb194f96a820b7c71b43e05a23b2bb2733c71c02a357911a244d4` |
| 16 | `def` | [errSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/errsum--feee36bcf718124deefc2e49.md) | 203 | `declaration-track:feee36bcf718124deefc2e496f6b204dec344b71a032ff9198719dc808a190b4` |
| 17 | `theorem` | [multSum_eq_main_err](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/multsum-eq-main-err--029760bc3e7afb4e4a564a40.md) | 205 | `result-track:029760bc3e7afb4e4a564a40de18d85dfc4a218010723b5e5f34ab0e0a1b8931` |
| 18 | `theorem` | [siftedsum_eq_sum_support_mul_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/siftedsum-eq-sum-support-mul-ite--0612a39a38c68f63d4c8d96e.md) | 209 | `result-track:0612a39a38c68f63d4c8d96e4578ae46a9777deed02921277a3d1a0d16b47c44` |
| 19 | `def` | [IsUpperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/isuppermoebius--95804c7bfd4942574252e550.md) | 217 | `declaration-track:95804c7bfd4942574252e5503b42310198bf4aec778a2c4be34105359d2a045a` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/siftedsum-le-sum-of-uppermoebius--f117422326da9390921a5e68.md) | 220 | `result-track:f117422326da9390921a5e688a70a38647b28f07e9618265f8f94d4567043fb1` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/declarations/siftedsum-le-mainsum-errsum-of-uppermoebius--530ca934cb0ca96a3377e2b8.md) | 241 | `result-track:530ca934cb0ca96a3377e2b8b88aea04e018b552a86f99ebf349ba174a164c47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
