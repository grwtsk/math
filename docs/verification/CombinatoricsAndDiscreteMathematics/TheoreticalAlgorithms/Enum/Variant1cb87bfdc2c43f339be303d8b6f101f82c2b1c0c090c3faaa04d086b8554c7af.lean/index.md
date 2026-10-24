# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enum.Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05b25f9cc5fad9661ebbe91aa3249a1f16961dd7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05b25f9cc5fad9661ebbe91aa3249a1f16961dd7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean/declarations/forall-mem-zipidx--c3f067f5d17b6b760495dcf7.md) | 32 | `result-track:c3f067f5d17b6b760495dcf7b9ceeac63914537444394c08da03ea56a735e17a` |
| 2 | `theorem` | [forall_mem_zipIdx'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean/declarations/forall-mem-zipidx--0f6d413c107e10fbb35a7cfe.md) | 37 | `result-track:0f6d413c107e10fbb35a7cfeb5f92220c8a312c9cedc78627ddf6f076d3bdd9e` |
| 3 | `theorem` | [exists_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean/declarations/exists-mem-zipidx--25da6bce0053d677fa3c18ea.md) | 41 | `result-track:25da6bce0053d677fa3c18eaefd0e7eb441be00ad9df94708bcd1ab27ca046ce` |
| 4 | `theorem` | [exists_mem_zipIdx'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variant1cb87bfdc2c43f339be303d8b6f101f82c2b1c0c090c3faaa04d086b8554c7af.lean/declarations/exists-mem-zipidx--0b1e72b61824debd8e310710.md) | 46 | `result-track:0b1e72b61824debd8e3107105e5a7d140e2caa4753faeab11ca7d0e8d73aa185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
