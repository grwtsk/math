# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Partition.Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e498a5d44f6ee8fe8f50756715a6387fd4b3250",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e498a5d44f6ee8fe8f50756715a6387fd4b3250`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Partition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.NatAntidiagonal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Order` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOddGF](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/partialoddgf--c0c9410b94de1156d1fed4f4.md) | 82 | `declaration-track:c0c9410b94de1156d1fed4f40c257d9f2be55db9ef219740c811ddc48e9fadbb` |
| 2 | `def` | [partialDistinctGF](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/partialdistinctgf--a17ea6e9a2d1fd4a68d1013a.md) | 93 | `declaration-track:a17ea6e9a2d1fd4a68d1013ade31752e36c882d7e6dfdabb4d06b1c28766a348` |
| 3 | `def` | [indicatorSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/indicatorseries--2159a505a5b2c770c7bb34f8.md) | 103 | `declaration-track:2159a505a5b2c770c7bb34f8d54b4282350e2cf24f56c0866782b89583968253` |
| 4 | `theorem` | [coeff_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/coeff-indicator--1788141e31cd15ee785c239f.md) | 107 | `result-track:1788141e31cd15ee785c239f9ec1a7e2152ee60a736f45c60291e6173a991632` |
| 5 | `theorem` | [coeff_indicator_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/coeff-indicator-pos--b31ebb43803f10a339256186.md) | 111 | `result-track:b31ebb43803f10a3392561869f22c697cb2a6ea3fa7b2c19e1c44a2061853e9c` |
| 6 | `theorem` | [coeff_indicator_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/coeff-indicator-neg--501c27a10ab04285603a7002.md) | 114 | `result-track:501c27a10ab04285603a7002dff7ad3ba997fb910d6482b07f5c1411bb0191c9` |
| 7 | `theorem` | [constantCoeff_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/constantcoeff-indicator--b0557d98076d06ae305c7b96.md) | 118 | `result-track:b0557d98076d06ae305c7b96905d4bb118eaae3c0cb4a876fe88c9075bae48bc` |
| 8 | `theorem` | [two_series](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/two-series--95c5bca99f19d6cd04ff8025.md) | 122 | `result-track:95c5bca99f19d6cd04ff8025b8bd3696f7f2b24c687231313b757586fde8f17b` |
| 9 | `theorem` | [num_series'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/num-series--ff29a671081127d86c16fd5f.md) | 131 | `result-track:ff29a671081127d86c16fd5fb766aaf7cb1c1bffab3728b167060fc31bacbea1` |
| 10 | `def` | [mkOdd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/mkodd--04014b303524a3dc65b55c78.md) | 171 | `declaration-track:04014b303524a3dc65b55c78a44a4e573296260fa1e4739db91d94f550cbb367` |
| 11 | `theorem` | [partialGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/partialgf-prop--60d8ac0ca4adfe5f547c8243.md) | 176 | `result-track:60d8ac0ca4adfe5f547c824304c484b71e8a5057955974522d574d3de1afdf6c` |
| 12 | `theorem` | [partialOddGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/partialoddgf-prop--05f226df6dea4ef35d764c6e.md) | 262 | `result-track:05f226df6dea4ef35d764c6e02329dee1b483f02bd82817ecd54fb44fe727ef8` |
| 13 | `theorem` | [oddGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/oddgf-prop--3eb38e6ed6823a6b5e9a040f.md) | 285 | `result-track:3eb38e6ed6823a6b5e9a040f221d55a2bf59b6d915b88626312c84ec4a35db1a` |
| 14 | `theorem` | [partialDistinctGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/partialdistinctgf-prop--8404fc88d0a94092256853ba.md) | 306 | `result-track:8404fc88d0a94092256853bac7497571f8bed5656f6e725e15fd1d871ab70fdc` |
| 15 | `theorem` | [distinctGF_prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/distinctgf-prop--e6871248bed3e213041d5107.md) | 327 | `result-track:e6871248bed3e213041d51077c744d8f2682f95745377a1ac51931927ba828f0` |
| 16 | `theorem` | [same_gf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/same-gf--04323a23bcc1f4c29e19e96b.md) | 344 | `result-track:04323a23bcc1f4c29e19e96b0b5b3d2d1926237944f59d0d9136a8d8f7c7106d` |
| 17 | `theorem` | [same_coeffs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/same-coeffs--88ebb44789275268d95f59f6.md) | 381 | `result-track:88ebb44789275268d95f59f636930a5f28e9391463a1a05a32e2b33002114bd7` |
| 18 | `theorem` | [partition_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/declarations/partition-theorem--a6df09cc5919d6c3681262f7.md) | 388 | `result-track:a6df09cc5919d6c3681262f7b7247cd65c34574cad63bb60d3e7a74ff1c47233` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
