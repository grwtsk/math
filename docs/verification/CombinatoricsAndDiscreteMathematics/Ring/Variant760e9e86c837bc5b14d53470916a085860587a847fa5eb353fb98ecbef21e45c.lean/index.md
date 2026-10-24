# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ring.Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c24f80595cc7c65073979d41f97a76ae9922d14",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c24f80595cc7c65073979d41f97a76ae9922d14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_pow_eq_pow_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-pow-eq-pow-sum--05dbc5df4571a952a2e91bc8.md) | 45 | `result-track:05dbc5df4571a952a2e91bc821e872e42754d06dcf0cd5353cfc8ae6fcc5e27e` |
| 2 | `theorem` | [sum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-mul--0ce07c0937e8b82dbbcfefbd.md) | 59 | `result-track:0ce07c0937e8b82dbbcfefbdf64de241c3f044cda89f51974ce0740d7da74245` |
| 3 | `theorem` | [mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/mul-sum--51a240065aa024c97a482515.md) | 63 | `result-track:51a240065aa024c97a482515549b5628f39e6e0ec839b761044fddb1e0e77986` |
| 4 | `theorem` | [sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-mul-sum--d40bf7a8448992a0f9204d64.md) | 67 | `result-track:d40bf7a8448992a0f9204d6424b43237f5767683d34cdc492a7c2df167b989db` |
| 5 | `theorem` | [sum_mul_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-mul-boole--2c5e6901eb9e976c5959a415.md) | 81 | `result-track:2c5e6901eb9e976c5959a41540bf4e4c059b15d946717858f779a02034cc1b0b` |
| 6 | `theorem` | [sum_boole_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-boole-mul--9bed3751c3f4e69bbb72446b.md) | 85 | `result-track:9bed3751c3f4e69bbb72446bf2a1aa08e2a4cbe3f6a4722ed99e5b18244185e3` |
| 7 | `theorem` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-div--907ae18545cdf9526d46aedf.md) | 91 | `result-track:907ae18545cdf9526d46aedff0c09ff4f9b8cc5b594cf28ba402532ff26403a3` |
| 8 | `theorem` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-sum--6132c5ccd28d2e5ea8174f5a.md) | 101 | `result-track:6132c5ccd28d2e5ea8174f5ac4251d4815a11796789fdda06ff10e24917d46f2` |
| 9 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-add--6db15976659339140b63b78c.md) | 135 | `result-track:6db15976659339140b63b78cc87c185a34f2f27632267e63a48284d95d3ce31c` |
| 10 | `theorem` | [prod_add_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-add-ordered--d85949981a2d29a4edc7b21f.md) | 167 | `result-track:d85949981a2d29a4edc7b21f1e112c98de9c632a0371698c7c47220fdf602cb5` |
| 11 | `theorem` | [prod_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-sub-ordered--327aa6355536823f4bf0333a.md) | 192 | `result-track:327aa6355536823f4bf0333a52f10cb6f0d4c31b87b122cc4695d2715940a674` |
| 12 | `theorem` | [prod_one_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-one-sub-ordered--acd63dcd21c464878fbe1c89.md) | 204 | `result-track:acd63dcd21c464878fbe1c896d766e6979ecedd3804f54192587e7f23c30258f` |
| 13 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-pow-mul-eq-add-pow--3e0e3829d32b768b063d22d8.md) | 212 | `result-track:3e0e3829d32b768b063d22d8de419dd395f682cdb1978677a59dd0b9c2630f73` |
| 14 | `theorem` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/dvd-sum--cb52b24314f512f46c6f27d3.md) | 220 | `result-track:cb52b24314f512f46c6f27d347e30fdcbc202fe2a896cefd99a2d627aee73393` |
| 15 | `theorem` | [prod_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-natcast--cd7c4165ba5ba842a082334e.md) | 225 | `result-track:cd7c4165ba5ba842a082334ecf185ee90a65357b250afcad504af0c161f29fd0` |
| 16 | `theorem` | [prod_range_cast_nat_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-range-cast-nat-sub--97ced17609c88bb7c9604ce0.md) | 235 | `result-track:97ced17609c88bb7c9604ce0c7d0421014b71e095977a3c8a51c0e4906be7df2` |
| 17 | `theorem` | [prod_powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-powerset-insert--3cb2d682603531481193d706.md) | 251 | `result-track:3cb2d682603531481193d706bd832cf156d78048ec21d01134ba51dfffea25b1` |
| 18 | `theorem` | [prod_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/prod-powerset--834ad159b547151a245b3afc.md) | 272 | `result-track:834ad159b547151a245b3afc2ea93c7ba745d5479cabf30c672e956ace34caf7` |
| 19 | `theorem` | [sum_range_succ_mul_sum_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant760e9e86c837bc5b14d53470916a085860587a847fa5eb353fb98ecbef21e45c.lean/declarations/sum-range-succ-mul-sum-range-succ--4ba2ae312e905de3583ad722.md) | 278 | `result-track:4ba2ae312e905de3583ad722a829053a35190fad0a72bc8cc5a56e86b2b6f5e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
