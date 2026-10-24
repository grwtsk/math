# Verification target: GRWTSK.Algebra.UniversalAlgebra.GradedMulAction.Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "476c35fec6f84dc73779a7d1de93964a1f5a56eb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `476c35fec6f84dc73779a7d1de93964a1f5a56eb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/gsmul--d0ef08a7fb921c7021e2e84e.md) | 61 | `declaration-track:d0ef08a7fb921c7021e2e84e66e1699259bd90da6094b49dbe2c81aee68270f3` |
| 2 | `instance` | [GMul.toGSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/gmul-togsmul--1504816366c6dbe30c76f609.md) | 66 | `declaration-track:1504816366c6dbe30c76f60928569d95d32f80c3c94c2e6c0fc266989f89d51e` |
| 3 | `instance` | [GSMul.toSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/gsmul-tosmul--8d42a158863c042666b072b8.md) | 68 | `declaration-track:8d42a158863c042666b072b817966ca58d751314aad41952a59c2d882abbd3e7` |
| 4 | `theorem` | [mk_smul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/mk-smul-mk--3f661a4dec149665db36e1fc.md) | 71 | `result-track:3f661a4dec149665db36e1fc1bdaa457c61a42bb3073c2ec5714f90ca411946f` |
| 5 | `class` | [GMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/gmulaction--140284fbd3ecfc570806b611.md) | 76 | `declaration-track:140284fbd3ecfc570806b61108ea3706b177d6dc83f4824d47616eae72ec0635` |
| 6 | `instance` | [GMonoid.toGMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/gmonoid-togmulaction--5daf58f1eaa9d82054528526.md) | 83 | `declaration-track:5daf58f1eaa9d82054528526549ead86545da63a06a020fc84d04c1fffe5aed5` |
| 7 | `instance` | [GMulAction.toMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/gmulaction-tomulaction--a67cc4b7a32a102f45b042eb.md) | 88 | `declaration-track:a67cc4b7a32a102f45b042eb128c9cbd65d32f07f2820b27a1d7dfcc3218f3ff` |
| 8 | `class` | [SetLike.GradedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/setlike-gradedsmul--5dc6fcc7e9aa4ecddeb5e90c.md) | 105 | `declaration-track:5dc6fcc7e9aa4ecddeb5e90c968be244306bcf4ee61aaa4d08256326c1d5cb7d` |
| 9 | `instance` | [SetLike.toGSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/setlike-togsmul--7042c363b0c1f5de78a9eca4.md) | 110 | `declaration-track:7042c363b0c1f5de78a9eca43106a60ebad466bf805c442c9f83c1d03edca115` |
| 10 | `theorem` | [SetLike.coe_GSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/setlike-coe-gsmul--b0350df4d184781d1aeeec37.md) | 116 | `result-track:b0350df4d184781d1aeeec37b63487cb733fd7b1253604977b59aaf3e349e9e9` |
| 11 | `instance` | [SetLike.GradedMul.toGradedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/setlike-gradedmul-togradedsmul--7a97703e8e3c7ea64e939f44.md) | 122 | `declaration-track:7a97703e8e3c7ea64e939f4498beb354964b7d669f976e030c3f20c93618c41e` |
| 12 | `theorem` | [SetLike.IsHomogeneousElem.graded_smul](../../../../../mathematics/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/declarations/setlike-ishomogeneouselem-graded-smul--fc9e9f526d2c23771f7327e7.md) | 132 | `result-track:fc9e9f526d2c23771f7327e7e7c3d2512371bdbb039a829cdc2d04c7fdc86398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
