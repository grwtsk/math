# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.A46c35ae50eaf6f47.Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba71a94100c331132f6a9a61294598f43743119d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba71a94100c331132f6a9a61294598f43743119d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Discovery.Index` — import line 1; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Model` — import line 2; external provider; requires a separately pinned dependency.
- `MathDiscovery.Concept.Assignment` — import line 3; external provider; requires a separately pinned dependency.
- `MathDiscovery.Concept.AssignmentAtoms.A_7dd7e72d995de478` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CandidateAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/declarations/candidateauthority--41fd6218452d028feccdc3fb.md) | 18 | `declaration-track:41fd6218452d028feccdc3fbf03d42b77839858a489325073eff33c137ebbee7` |
| 2 | `structure` | [KernelCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/declarations/kernelcandidate--6ff47804a945e43dd3a121b4.md) | 23 | `declaration-track:6ff47804a945e43dd3a121b4bdd567030b5125bac79675c803cdc02defeb3c55` |
| 3 | `structure` | [ReviewedCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/declarations/reviewedcandidate--822ceec95697a607a8aeb671.md) | 35 | `declaration-track:822ceec95697a607a8aeb6711625dd139af69f835a0a518f13e766fb8b79432c` |
| 4 | `def` | [ReviewedCandidate.toOwnedAssignment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/declarations/reviewedcandidate-toownedassignment--dd592cc5d99185782238fbb8.md) | 46 | `declaration-track:dd592cc5d99185782238fbb8a743c3ecaf5ae808b487f1b3d7276a4bb089d583` |
| 5 | `theorem` | [candidate_authority_is_navigation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variantc657c6fa8803a12447f4bff0dc665a127000f70a6f28efedaa117205777e047b.lean/declarations/candidate-authority-is-navigation--e2661dd12a9aaa3c3b586c3b.md) | 58 | `result-track:e2661dd12a9aaa3c3b586c3b6f1aad1b8f8acde7de1c9dd01363a5d3e777bfdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
