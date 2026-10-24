# Verification target: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.SelectedPermutationClassifications.Variant23b3a78f5f4b3762.PreimageClassification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd872b1c00debf060c1022b4a0cb64d1177f0c0c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd872b1c00debf060c1022b4a0cb64d1177f0c0c`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Subgroups.SelectedPermutationFamilies.Variant23b3a78f5f4b3762.SelectedTwists`](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/Subgroups/SelectedPermutationFamilies/Variant23b3a78f5f4b3762/SelectedTwists.lean/index.md) — import line 20; pinned internal source present.
- `Folder.Monodromy.Representation` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.Research.TorsionShellComparison` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Faithful](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/declarations/faithful--f99cf94b65de76dca01b1c9d.md) | 42 | `declaration-track:f99cf94b65de76dca01b1c9dfd1e295f49df22b0e17be8f90f87dc93506d4c38` |
| 2 | `def` | [SurjectiveOn](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/declarations/surjectiveon--370ffdf5e78ae68bdde84cb6.md) | 49 | `declaration-track:370ffdf5e78ae68bdde84cb658ffdf7bcea381e16ee4beac11a9f61e93a679bb` |
| 3 | `structure` | [ClassifiesSelectedTwists](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/declarations/classifiesselectedtwists--aa8dacd36da34a54fe6cbeee.md) | 57 | `declaration-track:aa8dacd36da34a54fe6cbeee787794c1b55902894d4486173dbce2e360b8242f` |
| 4 | `theorem` | [every_selected_twist_has_preimage](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/declarations/every-selected-twist-has-preimage--c8af697b8dd9536c9e0f61a3.md) | 66 | `result-track:c8af697b8dd9536c9e0f61a3faf83191d65e7ab28ccf0ff08d40fe4bf8ae88fe` |
| 5 | `theorem` | [selected_twist_preimage_unique_of_faithful](../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/SelectedPermutationClassifications/Variant23b3a78f5f4b3762/PreimageClassification.lean/declarations/selected-twist-preimage-unique-of-faithful--9eb5240316252cce139f13a6.md) | 78 | `result-track:9eb5240316252cce139f13a683e81538156d4ce03858e613d6ad67a9d95c0741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
