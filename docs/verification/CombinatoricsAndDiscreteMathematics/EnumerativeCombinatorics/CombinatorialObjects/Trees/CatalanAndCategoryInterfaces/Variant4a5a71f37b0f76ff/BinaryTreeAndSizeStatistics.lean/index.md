# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Trees.CatalanAndCategoryInterfaces.Variant4a5a71f37b0f76ff.BinaryTreeAndSizeStatistics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b40e20e8689de79348ce943344985f1dc7fd37d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b40e20e8689de79348ce943344985f1dc7fd37d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CTree](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/declarations/ctree--7c599b60afec6377e331cc6c.md) | 39 | `declaration-track:7c599b60afec6377e331cc6c578ed27e6284f1107aca34cfe37ea0a8c512fde7` |
| 2 | `def` | [internal](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/declarations/internal--b64b987316e34f3bc8b8aac3.md) | 46 | `declaration-track:b64b987316e34f3bc8b8aac3b4732d8de7c9d3e4b29a634a463f2f8bc03fcd8f` |
| 3 | `def` | [leaves](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/declarations/leaves--dd21ed84c9ef0f6028ef0320.md) | 50 | `declaration-track:dd21ed84c9ef0f6028ef0320d52708e491cbde08715412069ef533ee511c135c` |
| 4 | `def` | [depth](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/declarations/depth--fde5844545b356a28957ad9d.md) | 54 | `declaration-track:fde5844545b356a28957ad9dfaee7315755e5942c7844dc156a2f1fa4637770a` |
| 5 | `theorem` | [leaves_eq_internal_add_one](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Trees/CatalanAndCategoryInterfaces/Variant4a5a71f37b0f76ff/BinaryTreeAndSizeStatistics.lean/declarations/leaves-eq-internal-add-one--da72e911d985f79ddd93e145.md) | 59 | `result-track:da72e911d985f79ddd93e145827b51a0663867d3fc677837b5bb7961870f2815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
