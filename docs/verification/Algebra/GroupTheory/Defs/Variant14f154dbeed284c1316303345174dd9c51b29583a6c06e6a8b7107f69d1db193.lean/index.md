# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "107b96a7d91c4c953d5eb649cc6319116bed3010",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `107b96a7d91c4c953d5eb649cc6319116bed3010`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean.json)

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
| 1 | `instance` | [instMulOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instmuloneclass--1e302981a5e268634234377c.md) | 26 | `declaration-track:1e302981a5e268634234377c4504df86654afe1b171286e044823141888ad5f6` |
| 2 | `instance` | [instAddCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instaddcancelcommmonoid--f6edeed72e314f554e8a2ef1.md) | 30 | `declaration-track:f6edeed72e314f554e8a2ef190d6b99f31eeb24bcde66191539f181588ead0cc` |
| 3 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instcommmonoid--f4e149d9d8696b874ad0ac92.md) | 42 | `declaration-track:f4e149d9d8696b874ad0ac92cf33bb59cfc12b27d464ea187ab2032b0e34f016` |
| 4 | `instance` | [instIsMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instismultorsionfree--9d3b7fab22bba9c570a3aaa5.md) | 57 | `declaration-track:9d3b7fab22bba9c570a3aaa51cf6fda6be5fcae3845afb5af99c81657f497291` |
| 5 | `instance` | [instIsAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instisaddtorsionfree--98b936428e32af03696623f2.md) | 60 | `declaration-track:98b936428e32af03696623f20ae8d10b97af748ebc4d01392ce0a419a59a7593` |
| 6 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instaddcommmonoid--6ea8e2d2e943217af45cee24.md) | 71 | `declaration-track:6ea8e2d2e943217af45cee241fb0932a5cec1f4f6d90646f3629372f9568105c` |
| 7 | `instance` | [instAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instaddmonoid--1650ab8b18dea2d568b1188d.md) | 72 | `declaration-track:1650ab8b18dea2d568b1188de0501c85d1efbfe1c58f1554da846d0533d0e5e6` |
| 8 | `instance` | [instMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instmonoid--cabcbe0cc8bb1e755ff26d94.md) | 73 | `declaration-track:cabcbe0cc8bb1e755ff26d94d5e22316905d9353cb222dea8df501a3ad733bc4` |
| 9 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instcommsemigroup--730498edfd366bd29d296f4a.md) | 74 | `declaration-track:730498edfd366bd29d296f4ad748e8a28824c8a632008ab0ee1da8c5758387ab` |
| 10 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instsemigroup--ea261243ed0b3afe9e546746.md) | 75 | `declaration-track:ea261243ed0b3afe9e546746682a33836d1cc2bb323370ad2f130a585c462a21` |
| 11 | `instance` | [instAddCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instaddcommsemigroup--1974cd492f4756915884593b.md) | 76 | `declaration-track:1974cd492f4756915884593ba52872bd8443146208c960fff98ff288d1432179` |
| 12 | `instance` | [instAddSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instaddsemigroup--3084f59e4578b391b9ad89b4.md) | 77 | `declaration-track:3084f59e4578b391b9ad89b430159fc3d4d8b5ac4b5087415ad7e110a2c6a8a0` |
| 13 | `instance` | [instOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/instone--bd543d92b5a2cf60ea77fb07.md) | 78 | `declaration-track:bd543d92b5a2cf60ea77fb07261320e2158bf75ff3f927bcf1796a8d217518cc` |
| 14 | `lemma` | [nsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant14f154dbeed284c1316303345174dd9c51b29583a6c06e6a8b7107f69d1db193.lean/declarations/nsmul-eq-mul--c0998f58d1b1ca8adca5ead5.md) | 85 | `result-track:c0998f58d1b1ca8adca5ead5a8cd4891d4ad00ec7e553f0c3486e959d51cd8cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
