# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae3e793512082c14e78f3977207880a0433311c2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae3e793512082c14e78f3977207880a0433311c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.LocallyFinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rangeSingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/rangesingleton--7585d65618eff07907b8076e.md) | 52 | `declaration-track:7585d65618eff07907b8076ee185894b43b8988a4b8c01b7ba5621b69306c30a` |
| 2 | `theorem` | [mem_rangeSingleton_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/mem-rangesingleton-apply-iff--97c4512c185591ce31700b97.md) | 60 | `result-track:97c4512c185591ce31700b973aac68b7ac0149fb9fc1e52d6910b89df53d144e` |
| 3 | `def` | [rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/rangeicc--32c571c5f6ed650caf3f1de6.md) | 72 | `declaration-track:32c571c5f6ed650caf3f1de6bb6eebb5e9f1e957a88e4722ced2c6c5ecfec560` |
| 4 | `lemma` | [coe_rangeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/coe-rangeicc--b30a2a001e291bd0b9b57267.md) | 84 | `result-track:b30a2a001e291bd0b9b572677bc67b81a3d5ad3ac03c3ca1e0e046ba8604ef8a` |
| 5 | `theorem` | [rangeIcc_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/rangeicc-support--cbfb945fef4b96ffb6fdf238.md) | 87 | `result-track:cbfb945fef4b96ffb6fdf2382b26b9bfcd4f06d8cb27e2ec95d4a36666d80083` |
| 6 | `theorem` | [mem_rangeIcc_apply_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/mem-rangeicc-apply-iff--25c63c3085d065f4e2cdb2f2.md) | 91 | `result-track:25c63c3085d065f4e2cdb2f28a5133e0510063a2c43d3cb563fab05452d7cca5` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/instance--8c85d1a34e3c0cd853a020ff.md) | 100 | `declaration-track:8c85d1a34e3c0cd853a020ffcc94fb0dcb45e573fc8b7e39862d5cdc739ff297` |
| 8 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/icc-eq--2d438a1b8a5276d034650c6d.md) | 111 | `result-track:2d438a1b8a5276d034650c6d02eaa5a1b1eaf579bdbda05e71215768cbf64316` |
| 9 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-icc--bf52ca7b7d569dc887651037.md) | 115 | `result-track:bf52ca7b7d569dc887651037b327989d5885c63ff4bf97de87422b279cf9e338` |
| 10 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-ico--458eaec5b62110a70368e03d.md) | 120 | `result-track:458eaec5b62110a70368e03da10c823c64e71be6aca3f38e1b9eb6e6836aee01` |
| 11 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-ioc--d19832e905b458415860291f.md) | 125 | `result-track:d19832e905b458415860291ffc7100c18c7e1b3c3fa1b28e2b466e264ec1ee1b` |
| 12 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-ioo--1d5307ea307f01766d3f5102.md) | 130 | `result-track:1d5307ea307f01766d3f510248010014847f6d6288db1eb38b95c75e4dfb67a1` |
| 13 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-uicc--77d04fa7e3e410be0d9ec2fb.md) | 140 | `result-track:77d04fa7e3e410be0d9ec2fb1ca2eafa2915de9ae58a3e1be9dd4c2050d9a193` |
| 14 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-iic--e19d2fb32192102e2435a263.md) | 153 | `result-track:e19d2fb32192102e2435a263be9d7daf5ead187934ac9da2d21a33ef74c46257` |
| 15 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/declarations/card-iio--7f2e089e305f33dd0c4acd29.md) | 158 | `result-track:7f2e089e305f33dd0c4acd29856843ae071ca0b82bf382e4a350075282d5d138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
