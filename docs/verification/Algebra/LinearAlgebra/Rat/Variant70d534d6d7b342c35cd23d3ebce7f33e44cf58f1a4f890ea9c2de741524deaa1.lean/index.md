# Verification target: GRWTSK.Algebra.LinearAlgebra.Rat.Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8819be702853baa5ebb27a9b1c7e3475776169f0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8819be702853baa5ebb27a9b1c7e3475776169f0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.Discriminant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.IsIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/macro-rules--4c92e3cdb3a55d4abcb4d84f.md) | 33 | `declaration-track:4c92e3cdb3a55d4abcb4d84f8abcf2bc0abf9b0b5b2ac8f49300709241697580` |
| 2 | `theorem` | [discr_prime_pow_ne_two'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/discr-prime-pow-ne-two--bca4354dc1e7110bfedc5ecc.md) | 38 | `result-track:bca4354dc1e7110bfedc5ecc3e24e957092c622851c4f3b8af66ccb379f51e88` |
| 3 | `theorem` | [discr_odd_prime'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/discr-odd-prime--1b4c9dbe6c299b45d7159afa.md) | 46 | `result-track:1b4c9dbe6c299b45d7159afa2b7447c8f130f212f034d9e8c24aef31194d2371` |
| 4 | `theorem` | [discr_prime_pow'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/discr-prime-pow--ab9337929b5aef79f0934b3d.md) | 55 | `result-track:ab9337929b5aef79f0934b3dd7e2e371150f0fb9fb72b1d6a3e3d9926ab0752d` |
| 5 | `theorem` | [discr_prime_pow_eq_unit_mul_pow'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/discr-prime-pow-eq-unit-mul-pow--07cafbd3ced53d581e53f1a6.md) | 65 | `result-track:07cafbd3ced53d581e53f1a603e386e5033d7dfd8893fb74295207ba9fa36456` |
| 6 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime_pow](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/isintegralclosure-adjoin-singleton-of-prime-pow--103fca54d27ecb4e2c37341b.md) | 74 | `result-track:103fca54d27ecb4e2c37341b104285def368ef19c73f417ae03877019fdad17d` |
| 7 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/isintegralclosure-adjoin-singleton-of-prime--3fa4fea93c11f517de57ee23.md) | 123 | `result-track:3fa4fea93c11f517de57ee23b171d609b3bd6b775371da32935e3865f57df6d4` |
| 8 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime_pow](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/cyclotomicring-isintegralclosure-of-prime-pow--d8770aecac86fc7376d21d86.md) | 131 | `result-track:d8770aecac86fc7376d21d86bcb04223ad40b6951899a707f5d77abd17316ce7` |
| 9 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/cyclotomicring-isintegralclosure-of-prime--128e48c1bb57f42dc92fb14c.md) | 146 | `result-track:128e48c1bb57f42dc92fb14cfb2b200c77fa6a6639d58e25a55f76912c611f5f` |
| 10 | `def` | [_root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/root-isprimitiveroot-adjoinequivringofintegers--6735127315ba62c61508ae39.md) | 163 | `declaration-track:6735127315ba62c61508ae39853cb6491ba20d67ead21df62685fb8655184c8f` |
| 11 | `instance` | [IsCyclotomicExtension.ringOfIntegers](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/iscyclotomicextension-ringofintegers--27f50fce305616d8fc8f85f7.md) | 171 | `declaration-track:27f50fce305616d8fc8f85f7fd554ce9183d33466ddd2d48b58d0ba5cc640124` |
| 12 | `def` | [integralPowerBasis](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/integralpowerbasis--d697489e994e90b50bb238c8.md) | 179 | `declaration-track:d697489e994e90b50bb238c8a4a7e3983b137a5fe4492245a51133924b4a1078` |
| 13 | `theorem` | [integralPowerBasis_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/integralpowerbasis-gen--6ccecaa3a22d0d852b89c4f6.md) | 186 | `result-track:6ccecaa3a22d0d852b89c4f6421170c9383c866261b095f861c554ee1c8cbce4` |
| 14 | `theorem` | [integralPowerBasis_dim](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/integralpowerbasis-dim--cf081085e5c0c0811bf89d0c.md) | 196 | `result-track:cf081085e5c0c0811bf89d0c4113c238d11413ca022c67a09af746bdaa27dffd` |
| 15 | `def` | [_root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/root-isprimitiveroot-adjoinequivringofintegers--26d6f8d6420dc6a258596732.md) | 204 | `declaration-track:26d6f8d6420dc6a258596732db50024bad06eeaa32d5d437b4633615f7989dec` |
| 16 | `instance` | [_root_.IsCyclotomicExtension.ring_of_integers'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/root-iscyclotomicextension-ring-of-integers--394319890f8aa762fa5603ec.md) | 211 | `declaration-track:394319890f8aa762fa5603ec380a1e233f8c76bc5503d683b77ac02907a1108c` |
| 17 | `def` | [integralPowerBasis'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/integralpowerbasis--701bcf9ffb9788ec5a9474cf.md) | 219 | `declaration-track:701bcf9ffb9788ec5a9474cf5880610d8f010e83c872b3caa73da6a321854935` |
| 18 | `theorem` | [integralPowerBasis'_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/integralpowerbasis-gen--af0e57b53f00d441f949ed87.md) | 225 | `result-track:af0e57b53f00d441f949ed870cbfb3de9045d724a014968da6bdc2fd62d8629b` |
| 19 | `theorem` | [power_basis_int'_dim](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/power-basis-int-dim--e9a729dad165129207bd408c.md) | 231 | `result-track:e9a729dad165129207bd408c5c271472ff776971bc0c46383305f705f5ebd563` |
| 20 | `def` | [subOneIntegralPowerBasis](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/suboneintegralpowerbasis--aa96572c224ad479efa6bdc2.md) | 239 | `declaration-track:aa96572c224ad479efa6bdc2bf7a2c4ccc298731583b30b734a631821da4ccf0` |
| 21 | `theorem` | [subOneIntegralPowerBasis_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/suboneintegralpowerbasis-gen--454fc1261c8e5a05f7e17738.md) | 255 | `result-track:454fc1261c8e5a05f7e177383742a25a9e35c66a00aa2dc70243a482852ada78` |
| 22 | `def` | [subOneIntegralPowerBasis'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/suboneintegralpowerbasis--1a098cc1576f12e87f808006.md) | 264 | `declaration-track:1a098cc1576f12e87f8080062192f3b00dd17865eaf348519805325a4559ab7c` |
| 23 | `theorem` | [subOneIntegralPowerBasis'_gen](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/declarations/suboneintegralpowerbasis-gen--1266ebb65d343966d6790572.md) | 270 | `result-track:1266ebb65d343966d6790572acc3e998554fd079fc07d29736702c559bc196e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
