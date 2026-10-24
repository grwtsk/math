# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72761c0b31b2ea501ddda29cc2422f4da5b09622",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72761c0b31b2ea501ddda29cc2422f4da5b09622`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/truncaux--bfb5c00ce43d458eb0877064.md) | 49 | `declaration-track:bfb5c00ce43d458eb0877064839763a6e6267865d3fbefe89f13c986cee6710e` |
| 2 | `theorem` | [coeff_truncAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/coeff-truncaux--0c99d6fb5cb49b96889f26c3.md) | 52 | `result-track:0c99d6fb5cb49b96889f26c3e79c3e2d678a6bac3fb8887e0bad28552a9c87a6` |
| 3 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc--942a2897a99bb8ce6c8c89ef.md) | 59 | `declaration-track:942a2897a99bb8ce6c8c89ef1615909b47bd2c378c7386dec1be7d2dc72b8de0` |
| 4 | `lemma` | [trunc_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-apply--44ea10ca35d30afeb969a82f.md) | 68 | `result-track:44ea10ca35d30afeb969a82f8e7b61bba2fbdc50ff1ea24c768d6e5fb12010cd` |
| 5 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/coeff-trunc--a03b167d74431123804043cb.md) | 71 | `result-track:a03b167d74431123804043cb851837bdda8b3ec1178c65bc879f007f41ca89cc` |
| 6 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-one--87f29d10cb174c43f196b5e4.md) | 76 | `result-track:87f29d10cb174c43f196b5e4162db5933434f9905dc2faa1351b06e3ea72d6eb` |
| 7 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-c--87df4926f21bf70d66918548.md) | 81 | `result-track:87df4926f21bf70d66918548b49c0fcd177160cc9ac5bc79a5e6284bf4b12199` |
| 8 | `theorem` | [trunc_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-succ--b29f76ad43ce7ad8981cdef0.md) | 86 | `result-track:b29f76ad43ce7ad8981cdef0a42c00ac4b05816fcf408f217582998acbf5cb90` |
| 9 | `theorem` | [natDegree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/natdegree-trunc-lt--656ba393f7957905f1c9f9e5.md) | 90 | `result-track:656ba393f7957905f1c9f9e5d5d783ec7c671a4bd597016b8f36ff98f680b684` |
| 10 | `lemma` | [trunc_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-zero--faf1c26c13ecfd809aa38c9f.md) | 93 | `result-track:faf1c26c13ecfd809aa38c9f6a58ba559cca6d367ef4dabd2f6414962fff2141` |
| 11 | `theorem` | [degree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/degree-trunc-lt--14c5206605a6cd194d62b475.md) | 95 | `result-track:14c5206605a6cd194d62b475add03fc19c74337f80279a2332ec2c620aebf7fa` |
| 12 | `theorem` | [eval₂_trunc_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/eval-trunc-eq-sum-range--86243321c45bc636bfdba820.md) | 98 | `result-track:86243321c45bc636bfdba820377109ed94549ed4f2b4212f8837e10b6955213f` |
| 13 | `theorem` | [trunc_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-x--c6fa5d2c0396931e1d6f8aea.md) | 112 | `result-track:c6fa5d2c0396931e1d6f8aea23b583ec6ff285084f8521a57d6e6821ae5828ac` |
| 14 | `lemma` | [trunc_X_of](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-x-of--eaf6ccc6c4d0d357f00994dd.md) | 124 | `result-track:eaf6ccc6c4d0d357f00994dd88478e9a94dc234e5d84cb9290ed27e76c1677ca` |
| 15 | `lemma` | [trunc_one_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-one-left--af586e60e99f469c882f3377.md) | 129 | `result-track:af586e60e99f469c882f3377b37195de501bbee4803a61d94fe6fd0bd02bf666` |
| 16 | `lemma` | [trunc_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-one-x--01387e4c14fa32863cde22c2.md) | 132 | `result-track:01387e4c14fa32863cde22c2c50ee68ca3c6049387bd98f825991e24d758f228` |
| 17 | `lemma` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-c-mul--be9266acfa12d5c0b06f1dc8.md) | 135 | `result-track:be9266acfa12d5c0b06f1dc84465da73792729275296c77b7a1619f4b30ccae3` |
| 18 | `lemma` | [trunc_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-mul-c--58c279c71591d1d574655c16.md) | 139 | `result-track:58c279c71591d1d574655c16e56edec1e35c493b99e2769cc05e5aa109c2da96` |
| 19 | `lemma` | [eq_shift_mul_X_pow_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/eq-shift-mul-x-pow-add-trunc--f859b5b2b3bf5cac65321ea1.md) | 143 | `result-track:f859b5b2b3bf5cac65321ea194f9db3f4e631f66abd23bb476bba73e7db229d6` |
| 20 | `lemma` | [eq_X_pow_mul_shift_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/eq-x-pow-mul-shift-add-trunc--0357ef7e2dc5acb530a5a8bc.md) | 151 | `result-track:0357ef7e2dc5acb530a5a8bc893f2def75eed846a6a18a064cd705cea97e181e` |
| 21 | `lemma` | [monomial_eq_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/monomial-eq-c-mul-x-pow--f7a119f8e09e773188387b8f.md) | 155 | `result-track:f7a119f8e09e773188387b8f361e0fa2a43d155caf9d572175375dc737699d0e` |
| 22 | `lemma` | [trunc_X_pow_self_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-x-pow-self-mul--b86e4bdc0c67b085dcaf5c09.md) | 159 | `result-track:b86e4bdc0c67b085dcaf5c098f35d2bd2ea2f511a26b26235f9cfa0725555563` |
| 23 | `theorem` | [trunc_trunc_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-trunc-of-le--c0691618515bd5b3348823b2.md) | 174 | `result-track:c0691618515bd5b3348823b25d8ba26541b754a01387864574601f1ac4090164` |
| 24 | `theorem` | [trunc_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-trunc--edf7d1ad1412d2067aa110fc.md) | 182 | `result-track:edf7d1ad1412d2067aa110fc372f9a6f26bf6d5e0ae9b620db730fdce3719294` |
| 25 | `theorem` | [trunc_trunc_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-trunc-mul--ab1f1c5b73f534732c5a96be.md) | 185 | `result-track:ab1f1c5b73f534732c5a96be1aac2f7a78c87bc5b8a158e24a92b647ca74327b` |
| 26 | `theorem` | [trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-mul-trunc--e9ad933129263e5bed1092ce.md) | 196 | `result-track:e9ad933129263e5bed1092ce426bf0f5e2aadca177cc28fc13f06415beb219b1` |
| 27 | `theorem` | [trunc_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-trunc-mul-trunc--f6514e4c1b5d8dd12fa7d99e.md) | 200 | `result-track:f6514e4c1b5d8dd12fa7d99e5d8a9da1154c58738f6d8ffeab82151c829c9a7f` |
| 28 | `theorem` | [trunc_trunc_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-trunc-pow--7371d83ea789abc9f0c5ae27.md) | 204 | `result-track:7371d83ea789abc9f0c5ae27ae51f83c5306b16da52a37d1d053c05794154fae` |
| 29 | `theorem` | [trunc_coe_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-coe-eq-self--f0937c4378586c0f886b2c35.md) | 213 | `result-track:f0937c4378586c0f886b2c35908f6856f9ab1e36afc53f8d1ed12aa5153ec88f` |
| 30 | `theorem` | [coeff_coe_trunc_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/coeff-coe-trunc-of-lt--d5c4295109083437998930b5.md) | 226 | `result-track:d5c4295109083437998930b50cd9767af4fba3278b0ee98b034d15e728c20894` |
| 31 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--ebe4abd3ced3a721f6bed07b.md) | 232 | `result-track:ebe4abd3ced3a721f6bed07b7c67edcacb611d53d135a491f0a7892e0aeb2f77` |
| 32 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--fa27861fa8afb20460951d27.md) | 238 | `result-track:fa27861fa8afb20460951d27a9fb98fb3672d8fec38a2b4d6f18537b5dd917bf` |
| 33 | `lemma` | [trunc_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-sub--f54c67f2554b043005063abd.md) | 249 | `result-track:f54c67f2554b043005063abd257867063fd45996a94d67906f6e567ccb0b70dd` |
| 34 | `lemma` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/declarations/trunc-map--bbd2d86e525f907983d4e400.md) | 258 | `result-track:bbd2d86e525f907983d4e4007c1b229c2a644fc449f8644e2fd2a3f89aa8a820` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
