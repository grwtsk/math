# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "241c72ed3f7fa57bb40b3427a6b27c771497500d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `241c72ed3f7fa57bb40b3427a6b27c771497500d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Init.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/declarations/pmap--357f38ac95e1446086a2a572.md) | 14 | `declaration-track:357f38ac95e1446086a2a5722a8be164d6f6b56d50e76e6e5289dd95db74801e` |
| 2 | `def` | [attachImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/declarations/attachimpl--38a5a8318669be8bdf948bb1.md) | 23 | `declaration-track:38a5a8318669be8bdf948bb164910dd3fa23f30b3f34ab2846a3da207714fa8e` |
| 3 | `def` | [attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/declarations/attach--f5306f73bbc0ede537f9424c.md) | 27 | `declaration-track:f5306f73bbc0ede537f9424c79f2bcb7e47bc2a730cc616cd6983fd417c89341` |
| 4 | `def` | [pmapImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/declarations/pmapimpl--b431dad8732ceb413a9bf1a7.md) | 31 | `declaration-track:b431dad8732ceb413a9bf1a72d87825ce973d2799e728b7558c4e37de9a2ccb5` |
| 5 | `theorem` | [pmap_eq_pmapImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant4ad38f927b5d3fbda8ad71fbbbc6d89f00d7408e8ff89a5e91e847ab57480258.lean/declarations/pmap-eq-pmapimpl--170b5e2223476f7a84e85567.md) | 34 | `result-track:170b5e2223476f7a84e85567694ead76dd948b416f035ee6779d98f37db34c71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
