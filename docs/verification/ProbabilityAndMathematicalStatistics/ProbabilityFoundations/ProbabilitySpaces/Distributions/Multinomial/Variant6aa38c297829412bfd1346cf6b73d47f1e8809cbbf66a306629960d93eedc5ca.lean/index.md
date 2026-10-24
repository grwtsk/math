# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Multinomial.Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e36fa5b43e1c24ee6b3ebdf1e367dde48174e865",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e36fa5b43e1c24ee6b3ebdf1e367dde48174e865`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multinomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial--c3f92e8716ee00d9abf1d11a.md) | 44 | `declaration-track:c3f92e8716ee00d9abf1d11ab475bb3f2b3dab951323bef41e3f01a8b8cf6734` |
| 2 | `theorem` | [multinomial_pos](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-pos--78186bfb48abfcb047b48a63.md) | 48 | `result-track:78186bfb48abfcb047b48a63dac26ff362d5b8f3d0caa4b171715e0948b994da` |
| 3 | `theorem` | [multinomial_spec](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-spec--b293a48c884ef7bb5233dad0.md) | 53 | `result-track:b293a48c884ef7bb5233dad0c53e708df5f73b8ebf9ac6fc0dfd39d20428321f` |
| 4 | `theorem` | [multinomial_nil](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-nil--b79f52a8faa881d3c9cab338.md) | 58 | `result-track:b79f52a8faa881d3c9cab338652d5c5d38e01c17bbd6c1c3f3169ba8f17fc007` |
| 5 | `theorem` | [multinomial_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-singleton--b89360a35bae2ca47f649ae1.md) | 64 | `result-track:b89360a35bae2ca47f649ae191d00c4502b9f1fd19d157ae1573e3d93f44781d` |
| 6 | `theorem` | [multinomial_insert_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-insert-one--1350f36228fca6cd14a54637.md) | 69 | `result-track:1350f36228fca6cd14a5463750cd9f37a35992fc1bdfc2aa5107798861a10c76` |
| 7 | `theorem` | [multinomial_insert](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-insert--448258973768a6364560025f.md) | 77 | `result-track:448258973768a6364560025f22f7f89d31eb0d3577527bbe5f2ca78a21df952c` |
| 8 | `theorem` | [multinomial_congr](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-congr--8add1d33debb8aa02069ed24.md) | 88 | `result-track:8add1d33debb8aa02069ed2417dc3696eebdf576c868c3126298f44105d3ce50` |
| 9 | `theorem` | [binomial_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/binomial-eq--549dd63085c4c1be108b93be.md) | 103 | `result-track:549dd63085c4c1be108b93be89e7823ca5af658d74c9120b19fbddd009bd4661` |
| 10 | `theorem` | [binomial_eq_choose](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/binomial-eq-choose--303f2c9d5bb87dca2fd92200.md) | 108 | `result-track:303f2c9d5bb87dca2fd922000784de4fa495eae05cf7494ad2718943f037ae44` |
| 11 | `theorem` | [binomial_spec](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/binomial-spec--f74cf40c1c542964c7e04e9a.md) | 113 | `result-track:f74cf40c1c542964c7e04e9ab350b5ba5a55e688b69bec4ec71a497598637e63` |
| 12 | `theorem` | [binomial_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/binomial-one--5d8c6c9a1e2d39e9eb1b37c6.md) | 119 | `result-track:5d8c6c9a1e2d39e9eb1b37c6c5572dae6f2c595d672d39c9727bf099ae4cc20f` |
| 13 | `theorem` | [binomial_succ_succ](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/binomial-succ-succ--2e8e54671a1c5d972dadfefe.md) | 124 | `result-track:2e8e54671a1c5d972dadfefe76ce7798d61aab0730106aef478a22fe16487a0d` |
| 14 | `theorem` | [succ_mul_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/succ-mul-binomial--8fcf3bcdb071552d6ba52e66.md) | 135 | `result-track:8fcf3bcdb071552d6ba52e66e0892376294355cfc96f72f0d67a757fe05e5ff4` |
| 15 | `theorem` | [multinomial_univ_two](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-univ-two--c48c95f2e24b26bf668cb240.md) | 146 | `result-track:c48c95f2e24b26bf668cb2406004d6bef2bfab1f08707527ce1beef8e3a1662c` |
| 16 | `theorem` | [multinomial_univ_three](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-univ-three--c37b9f455f766d704926db1d.md) | 152 | `result-track:c37b9f455f766d704926db1dd940cac0df00e0022b7bc601457a8d5366d847a5` |
| 17 | `def` | [multinomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial--7fb6aaa5ffc107ed244c8c5a.md) | 170 | `declaration-track:7fb6aaa5ffc107ed244c8c5a44a01c08ae0218c47c5b8b9a20072532a36016c1` |
| 18 | `theorem` | [multinomial_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-eq--3ee3aaee8a7a75157f4adc5a.md) | 174 | `result-track:3ee3aaee8a7a75157f4adc5a69be84828b87e388cd77aa800308fb1e57397046` |
| 19 | `theorem` | [multinomial_update](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-update--e1739138c76b705c517a0343.md) | 178 | `result-track:e1739138c76b705c517a034389e154f584274e22cee35df4f58c3c867986a697` |
| 20 | `def` | [multinomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial--c3deeea7469fc7e4b8a133fd.md) | 201 | `declaration-track:c3deeea7469fc7e4b8a133fd26d4966ea1d73a4d4457d21fb9feefad961f0c84` |
| 21 | `theorem` | [multinomial_filter_ne](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/multinomial-filter-ne--1b17080059afcec5b44fd554.md) | 205 | `result-track:1b17080059afcec5b44fd55480a44affa409481c79ff026254de0ced2dcf817d` |
| 22 | `theorem` | [sum_pow_of_commute](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/sum-pow-of-commute--aa1963b9492e424d9fc2bc5f.md) | 229 | `result-track:aa1963b9492e424d9fc2bc5f36ef5315b9746bc0ad6715a7489b7efbac79ca5c` |
| 23 | `theorem` | [sum_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant6aa38c297829412bfd1346cf6b73d47f1e8809cbbf66a306629960d93eedc5ca.lean/declarations/sum-pow--4d41f69515a31815b92abb8d.md) | 269 | `result-track:4d41f69515a31815b92abb8dcd9aa4c6065097a0ff1df9599818d292220e6df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
