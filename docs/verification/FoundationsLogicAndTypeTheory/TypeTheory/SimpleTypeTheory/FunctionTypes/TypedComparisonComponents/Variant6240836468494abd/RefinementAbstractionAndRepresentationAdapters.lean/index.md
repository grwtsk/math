# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.TypedComparisonComponents.Variant6240836468494abd.RefinementAbstractionAndRepresentationAdapters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e4694aa281921c823a89f8fdd736676897144e8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e4694aa281921c823a89f8fdd736676897144e8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Properties` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 22; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 23; external provider; requires a separately pinned dependency.
- `DAF.Causal` — import line 24; external provider; requires a separately pinned dependency.
- `DAF.Refinement` — import line 25; external provider; requires a separately pinned dependency.
- `DAF.Upgrade` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toComparisonSpec](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/declarations/tocomparisonspec--ecc642066fe8961c3e51da20.md) | 86 | `declaration-track:ecc642066fe8961c3e51da20105fcf9af34a187ec8dabde76cc8d8923efa9235` |
| 2 | `theorem` | [toComparisonSpec_apply](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/declarations/tocomparisonspec-apply--0c4f26c2709ef7c0f45c3f73.md) | 91 | `result-track:0c4f26c2709ef7c0f45c3f7321230f6757cc9d9da64c595a47cc96e50bd7d7d3` |
| 3 | `def` | [abstractionComparisonSpec](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/declarations/abstractioncomparisonspec--74ea21df93e18d4c3f2d573b.md) | 101 | `declaration-track:74ea21df93e18d4c3f2d573bcec06d89ca5cbeb99f212ad32a9e2c5036e6b8cd` |
| 4 | `def` | [representationComparisonSpec](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/declarations/representationcomparisonspec--d49c4302b62333e56f08c9a0.md) | 105 | `declaration-track:d49c4302b62333e56f08c9a0b84299f5aac0f9980e385eefbaeaa1652c20252b` |
| 5 | `theorem` | [representationComparison_injective](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/declarations/representationcomparison-injective--f70f23fe2b660dbb7a281983.md) | 109 | `result-track:f70f23fe2b660dbb7a281983a02b0bbdc3ea801b5369e1c73b8a3a59a0e3c23c` |
| 6 | `theorem` | [abstraction_leftInverse_representation](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/TypedComparisonComponents/Variant6240836468494abd/RefinementAbstractionAndRepresentationAdapters.lean/declarations/abstraction-leftinverse-representation--88035461379c10c67953367e.md) | 114 | `result-track:88035461379c10c67953367e4bf3e1076dc554c5c24a973758d917d585cd89fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
