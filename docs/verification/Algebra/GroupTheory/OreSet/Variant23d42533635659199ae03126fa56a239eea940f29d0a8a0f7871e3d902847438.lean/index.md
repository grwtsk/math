# Verification target: GRWTSK.Algebra.GroupTheory.OreSet.Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34a368e39c6ddc721c28143d6c91bcb8ebc17fe5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34a368e39c6ddc721c28143d6c91bcb8ebc17fe5`.

Source path: `GRWTSK/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean.json)

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
| 1 | `class` | [AddOreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/addoreset--f87a660117be2e489c2b15c2.md) | 39 | `declaration-track:f87a660117be2e489c2b15c271b0ea86925d69bcd981252ad84c77a69a29814e` |
| 2 | `class` | [OreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/oreset--90be267c2a9e2df01a7964eb.md) | 60 | `declaration-track:90be267c2a9e2df01a7964eb97c45a7320144d335112ed1912f7a2d51a06432c` |
| 3 | `theorem` | [ore_right_cancel](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/ore-right-cancel--a0bec3e7a846c1737775f13d.md) | 81 | `result-track:a0bec3e7a846c1737775f13d0d6acea26965384d61505f4caae49be6fdb6303c` |
| 4 | `def` | [oreNum](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/orenum--ac02e8b99be1c6e19f69ba74.md) | 86 | `declaration-track:ac02e8b99be1c6e19f69ba7470bcc16f6d51b5df6f70494cfab1dcbe853164b4` |
| 5 | `def` | [oreDenom](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/oredenom--ef92cd65dc8f2552e8a3f5e1.md) | 91 | `declaration-track:ef92cd65dc8f2552e8a3f5e18e6a2b16c858abf4c81a043922264c5e482f065c` |
| 6 | `theorem` | [ore_eq](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/ore-eq--58fc493c6222c9f300b22f88.md) | 97 | `result-track:58fc493c6222c9f300b22f88d01c671d643889a19cf20876281e631d4a50b55c` |
| 7 | `def` | [oreCondition](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/orecondition--7933568adbe9c770c9f3d61f.md) | 105 | `declaration-track:7933568adbe9c770c9f3d61f30c5b29ee22ebdce39efc0909538c920c81013c0` |
| 8 | `instance` | [oreSetBot](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/oresetbot--bf71b120cdaa6b5bc84e5fe7.md) | 110 | `declaration-track:bf71b120cdaa6b5bc84e5fe70e75fcd394fbc0baf8b5dc5df91011f7e48cfa0e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/instance--e3be2f2932f7f7d4a10da86f.md) | 129 | `declaration-track:e3be2f2932f7f7d4a10da86fae684719ba7dfa29a51ec1286cc9c42885a6a2db` |
| 10 | `lemma` | [oreSetComm_oreNum](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/oresetcomm-orenum--b87fb6c34cbaacdabf1ec11d.md) | 136 | `result-track:b87fb6c34cbaacdabf1ec11dab755a6f5e4833f64bec388bf42b9584aabc998a` |
| 11 | `lemma` | [oreSetComm_oreDenom](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant23d42533635659199ae03126fa56a239eea940f29d0a8a0f7871e3d902847438.lean/declarations/oresetcomm-oredenom--26723aa0fc80ae5d2cfeea69.md) | 140 | `result-track:26723aa0fc80ae5d2cfeea69eb3265ca13834f8a7ed5da3baef208c45a347693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
