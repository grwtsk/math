# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandSafePrefix.Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c216af2a9807331606d0306ae6f9868abb6b41d3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c216af2a9807331606d0306ae6f9868abb6b41d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Exception` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SafeExpansionM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/safeexpansionm-state--f084717714daf6d3315913ea.md) | 21 | `declaration-track:f084717714daf6d3315913ea65842b2d4005be1b6627804d4b16b69c59958d88` |
| 2 | `abbrev` | [SafeExpansionM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/safeexpansionm--9fa2569ac9a2ad42db7e47a9.md) | 24 | `declaration-track:9fa2569ac9a2ad42db7e47a900861680fc0f059a008971dace2970e4b766c80b` |
| 3 | `def` | [Goal.isSafeExpanded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/goal-issafeexpanded--8a5abb1ce4d3e478983eff4f.md) | 28 | `declaration-track:8a5abb1ce4d3e478983eff4f1f9dbe0a8761c6105243966bcd8972e4137233dc` |
| 4 | `def` | [liftSearchM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/liftsearchm--898e38e1287d5c7f30e268bf.md) | 33 | `declaration-track:898e38e1287d5c7f30e268bf05ad87a5639b085bc7aaf7f7e75547f9568be9dc` |
| 5 | `def` | [expandSafePrefixGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/expandsafeprefixgoal--221df1582dee58fac13c4c23.md) | 37 | `declaration-track:221df1582dee58fac13c4c237f8bf574f0eb6d60c4702def38d14f08efb6e371` |
| 6 | `def` | [expandFirstPrefixRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/expandfirstprefixrapp--b381c9fd1ed37c8425828622.md) | 65 | `declaration-track:b381c9fd1ed37c8425828622624ac92347ca2a0a23db0ec187a186f67cebcfcc` |
| 7 | `def` | [expandSafePrefixMVarCluster](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/expandsafeprefixmvarcluster--cefc6523d19353025d14e172.md) | 69 | `declaration-track:cefc6523d19353025d14e17284eac04e11a87f706466eec6fe376d5f05a39caa` |
| 8 | `def` | [expandSafePrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant63c84297e8e22340506d96700667325c8d197afcbaebeedd4db787e57c3ce07d.lean/declarations/expandsafeprefix--69e7447d4ace4b4584c0bfdc.md) | 74 | `declaration-track:69e7447d4ace4b4584c0bfdc02ac62bdee13bd3c547c6d185176401e9b1d599c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
