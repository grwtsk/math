# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsLimit.Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7201f66bea5d3b443d102155451eef2b5cf6618",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7201f66bea5d3b443d102155451eef2b5cf6618`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.LightProfinite.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [fintypeDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/fintypediagram--ee9eef331c0440e58e880378.md) | 30 | `declaration-track:ee9eef331c0440e58e880378253ff2d7cd183e9f098c89f2abee456779c236f8` |
| 2 | `abbrev` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/diagram--f9c9d7c8169dd1d737a1f6e2.md) | 33 | `declaration-track:f9c9d7c8169dd1d737a1f6e2972757e9215532804bc5f7e8188e76b985dacba1` |
| 3 | `def` | [asLimitConeAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/aslimitconeaux--4cf2cdafee2c3b3e4c211834.md) | 39 | `declaration-track:4cf2cdafee2c3b3e4c2118344f808e55b43056033020fb4cd16e8a9ab177ba41` |
| 4 | `def` | [isoMapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/isomapcone--1fc07057907746454df9df55.md) | 45 | `declaration-track:1fc07057907746454df9df55f4ec28a5f032f03303d01d15192261cd5383cc8f` |
| 5 | `def` | [asLimitAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/aslimitaux--b854f504e8b9e2165cfa8c9d.md) | 54 | `declaration-track:b854f504e8b9e2165cfa8c9dd2d014b7d271a417bdfbf9e43318ff8c5833ee98` |
| 6 | `def` | [asLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/aslimitcone--c8f64410a920ac89cd925563.md) | 60 | `declaration-track:c8f64410a920ac89cd925563b6782fd5d1afb3a2b64a7ecbf79899d41754a6c7` |
| 7 | `def` | [asLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/aslimit--94e6a925740cd77c77b48915.md) | 68 | `declaration-track:94e6a925740cd77c77b48915b3427501148951ab2dcb6a14dbb91a01a9e61bb8` |
| 8 | `def` | [lim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/lim--df08f980c9bfd442bb6a5ea3.md) | 73 | `declaration-track:df08f980c9bfd442bb6a5ea308865f9ee8568eb8d97deee7199280c83b070858` |
| 9 | `abbrev` | [proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/proj--468019ff5ad728593a0cd8df.md) | 76 | `declaration-track:468019ff5ad728593a0cd8df50defc87a2599972d58d91d53c4fcebe66e4ae66` |
| 10 | `lemma` | [lightToProfinite_map_proj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/lighttoprofinite-map-proj-eq--2d07c1d46034d044f04e224c.md) | 78 | `result-track:2d07c1d46034d044f04e224c449ff6452c1194d71facab1985710ef967b2b8cb` |
| 11 | `lemma` | [proj_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/proj-surjective--e0195718effa6dcdb85835b9.md) | 85 | `result-track:e0195718effa6dcdb85835b9b054684a25aab317b2cba86bdbb2fde7a60b24f8` |
| 12 | `abbrev` | [component](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/component--a698828ad3173aa8a9fbed42.md) | 91 | `declaration-track:a698828ad3173aa8a9fbed420778831c83aba5a74919eab3a3bf6b9150d5b472` |
| 13 | `abbrev` | [transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/transitionmap--773015f0b3ec4226c3aef5e2.md) | 94 | `declaration-track:773015f0b3ec4226c3aef5e2bf400c250376e8e9a658e3e468976f430cc91aca` |
| 14 | `abbrev` | [transitionMapLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/transitionmaple--8f40934b64d2b7f40f648cc1.md) | 98 | `declaration-track:8f40934b64d2b7f40f648cc1c7949db78e1ceb35365f4914772f4ece2f6d08de` |
| 15 | `lemma` | [proj_comp_transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/proj-comp-transitionmap--186a051403e4d534397d1c54.md) | 101 | `result-track:186a051403e4d534397d1c54cb6f3209caaccf609e10817759db29fdb421e831` |
| 16 | `lemma` | [proj_comp_transitionMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/proj-comp-transitionmap--c5fe73461e21f4b7c137073c.md) | 105 | `result-track:c5fe73461e21f4b7c137073c3e1f5c2f2b8a73be5ce40c81c821b4687583537c` |
| 17 | `lemma` | [proj_comp_transitionMapLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/proj-comp-transitionmaple--beea53f235162c07f5cb37e6.md) | 109 | `result-track:beea53f235162c07f5cb37e6576cfeb7e1a075367b19e40e85d9b076cdaf1af1` |
| 18 | `lemma` | [proj_comp_transitionMapLE'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/proj-comp-transitionmaple--1b8211aa3614052481c20f6f.md) | 113 | `result-track:1b8211aa3614052481c20f6f94ad073a72d862c4f9cb91a059dd46a9a7d21465` |
| 19 | `lemma` | [surjective_transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/surjective-transitionmap--dabe9eddae5c2b92ba8238ac.md) | 118 | `result-track:dabe9eddae5c2b92ba8238acd46d6fea7d5cc87e9c53730aa5a0aaa8cd1491e6` |
| 20 | `lemma` | [surjective_transitionMapLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant21444ba0a5ee0a675cf8236bfa7959a1859dde71593aafa4387e7be29d409445.lean/declarations/surjective-transitionmaple--3f65654af36b9973e1b40a87.md) | 122 | `result-track:3f65654af36b9973e1b40a8706ab1530bd789373796e71e6d5e4744aba190a36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
