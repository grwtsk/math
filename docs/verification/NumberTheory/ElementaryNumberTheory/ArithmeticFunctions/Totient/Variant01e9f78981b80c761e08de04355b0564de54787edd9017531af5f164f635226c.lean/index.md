# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c94929f1903663ff9019ab796e45d205c1d83093`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Two` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Periodic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient--4897022df1aa02e7190d6002.md) | 32 | `declaration-track:4897022df1aa02e7190d6002b41b34012a75b8c31f71eef772c07229bf4f4724` |
| 2 | `theorem` | [totient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-zero--ac58eb201c4389b7d4f91fcc.md) | 40 | `result-track:ac58eb201c4389b7d4f91fccb413bd8a99be27b662db36515c98e46a42de253b` |
| 3 | `theorem` | [totient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-one--38fc896dc531316470a40f83.md) | 45 | `result-track:38fc896dc531316470a40f83206696295ca0d7aa5e491a9e49c2d60c9e3c7d49` |
| 4 | `theorem` | [totient_eq_card_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-card-coprime--9329f507354ac117026e94a8.md) | 48 | `result-track:9329f507354ac117026e94a8f2a6ad6cbdf370638d37e5dfc2341e9519867f5a` |
| 5 | `theorem` | [totient_eq_card_lt_and_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-card-lt-and-coprime--d60483771ea5bd51d3aae5df.md) | 53 | `result-track:d60483771ea5bd51d3aae5df0f60628da2b180e77a26b2ec2b100b5ea04d93af` |
| 6 | `theorem` | [totient_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-le--cd1aa6621827a6c471bcaae4.md) | 62 | `result-track:cd1aa6621827a6c471bcaae404a40c75fe3b2145f100698b620247b9b59846b6` |
| 7 | `theorem` | [totient_lt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-lt--14892e8546245a254a5fec39.md) | 66 | `result-track:14892e8546245a254a5fec3904e16683a9b84a2d607a17b652f6ad276c8a4129` |
| 8 | `theorem` | [totient_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-pos--8e35e5d43178ebca16c5762d.md) | 70 | `result-track:8e35e5d43178ebca16c5762df27fc9d7a9e62a067a43192034f2725701d7e296` |
| 9 | `theorem` | [filter_coprime_Ico_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/filter-coprime-ico-eq-totient--b5a6275f1b3b9bf9356299bc.md) | 76 | `result-track:b5a6275f1b3b9bf9356299bc974c9f72f197ce57d7e0f52120d28845bf5d84fb` |
| 10 | `theorem` | [Ico_filter_coprime_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/ico-filter-coprime-le--208bfbfab71e77f0961c87da.md) | 82 | `result-track:208bfbfab71e77f0961c87dab3c751edd831f5b8414f29945d8fa828670d57fb` |
| 11 | `theorem` | [_root_.ZMod.card_units_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/root-zmod-card-units-eq-totient--82985ce3e880a8aacc745b02.md) | 115 | `result-track:82985ce3e880a8aacc745b0262be123d05b37da181bcf3ded1cd0d215664c4ec` |
| 12 | `theorem` | [totient_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-even--ee6c7b45465d2a6afc068571.md) | 127 | `result-track:ee6c7b45465d2a6afc0685716035fdcce0c33d6ceeacb48e481a7d048223570f` |
| 13 | `theorem` | [totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-mul--1dc0741b179490de79583680.md) | 136 | `result-track:1dc0741b179490de795836806d7c6b56808bd00a0edf579fa68cd7651e347aa7` |
| 14 | `theorem` | [totient_div_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-div-of-dvd--19886b42b383f1ece25c78d3.md) | 150 | `result-track:19886b42b383f1ece25c78d306dcfdbee0763ac22d333da80f29238b18f3e58a` |
| 15 | `theorem` | [sum_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/sum-totient--66cee842f240e5194f143162.md) | 170 | `result-track:66cee842f240e5194f1431623e9a594ac066d064f1f95435fb50364fe8e2ed32` |
| 16 | `theorem` | [sum_totient'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/sum-totient--9ab8509b44ec13b37c61faea.md) | 182 | `result-track:9ab8509b44ec13b37c61faead05ab613321d313f4751788aba69639fb9347e9b` |
| 17 | `theorem` | [totient_prime_pow_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-prime-pow-succ--739086a301daa35d4b169249.md) | 189 | `result-track:739086a301daa35d4b169249a81952bf576a0abfca8f1dad21842ff3a18b3df4` |
| 18 | `theorem` | [totient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-prime-pow--cd2a0767a2c0772b25e8f87e.md) | 219 | `result-track:cd2a0767a2c0772b25e8f87e37f733f9ed6c06ca588023c80d5d91483856e261` |
| 19 | `theorem` | [totient_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-prime--f5e7e7c99066e63d723260aa.md) | 225 | `result-track:f5e7e7c99066e63d723260aaeb427f59dbeff92fd58cb695e3bad166b1941b24` |
| 20 | `theorem` | [totient_eq_iff_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-iff-prime--ad71b1a132e571c493e9ea29.md) | 229 | `result-track:ad71b1a132e571c493e9ea2914c63076ddd5890a5ad598ed31edfb574396221f` |
| 21 | `theorem` | [card_units_zmod_lt_sub_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/card-units-zmod-lt-sub-one--66c18cffea6d07155e4a772d.md) | 244 | `result-track:66c18cffea6d07155e4a772d9fb90c184aea0f8516e23b7f91a1165154666d4d` |
| 22 | `theorem` | [prime_iff_card_units](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/prime-iff-card-units--ca13f637a508aa158935299c.md) | 251 | `result-track:ca13f637a508aa158935299c7572ee754e8edb9ef6de5eb51bdaf6ba1a7d52a4` |
| 23 | `theorem` | [totient_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-two--bca509b6ba8b19768b3bec16.md) | 263 | `result-track:bca509b6ba8b19768b3bec1610113f85b31d0dc99ca9e0351e4f58a3b7ebcfa3` |
| 24 | `theorem` | [totient_eq_one_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-one-iff--766de03aad4f88293c06edb4.md) | 267 | `result-track:766de03aad4f88293c06edb4b1e063b33f51e14ee39bce1470595e71a34c92c8` |
| 25 | `theorem` | [totient_eq_prod_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-prod-factorization--3ff0741d9e33946c80cd326d.md) | 283 | `result-track:3ff0741d9e33946c80cd326db1058f1c07d19740ed0f169661c0f178d0df0ba8` |
| 26 | `theorem` | [totient_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-mul-prod-factors--7e328b89f260b74381ea42b9.md) | 293 | `result-track:7e328b89f260b74381ea42b97cd26c56d9e14c8f6a97c963754bdf618ca45163` |
| 27 | `theorem` | [totient_eq_div_factors_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-div-factors-mul--1a0f7ef76cde6861fc197004.md) | 305 | `result-track:1a0f7ef76cde6861fc1970043e2e561dce5d32ef7e287f20e54b616e8b430bb8` |
| 28 | `theorem` | [totient_eq_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-eq-mul-prod-factors--ac8b4e42e8fbdac1dbc6803a.md) | 314 | `result-track:ac8b4e42e8fbdac1dbc6803a989356ac7f76b1f3620c48ee4ada8af6cf4e1470` |
| 29 | `theorem` | [totient_gcd_mul_totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-gcd-mul-totient-mul--3a88d895f9fabf77ee39901a.md) | 330 | `result-track:3a88d895f9fabf77ee39901acd9c4006bafbc6a661bdd274eb2bec697343af9d` |
| 30 | `theorem` | [totient_super_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-super-multiplicative--657bd978da523a1ad2abb461.md) | 349 | `result-track:657bd978da523a1ad2abb461d27f49b53947ec3ff326541c8376988070e53a6e` |
| 31 | `theorem` | [totient_dvd_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-dvd-of-dvd--4f997bbe749a8dee2263bc92.md) | 359 | `result-track:4f997bbe749a8dee2263bc92a9d2e21582733691a1ed48de7b7a061ef303da59` |
| 32 | `theorem` | [totient_mul_of_prime_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-mul-of-prime-of-dvd--4ed659f5a9851a21751ca67b.md) | 373 | `result-track:4ed659f5a9851a21751ca67bc507cbabe4b9d052fb11bc9904a13f545d227907` |
| 33 | `theorem` | [totient_mul_of_prime_of_not_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/declarations/totient-mul-of-prime-of-not-dvd--b9593ab25f85de19e3813d21.md) | 380 | `result-track:b9593ab25f85de19e3813d21cb44c99de51d58e45b4aefc0586f5ef8e533eea6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
