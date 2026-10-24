# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e61718877f249916f564f2318b0d75e22306abcb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e61718877f249916f564f2318b0d75e22306abcb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean.json)

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
| 1 | `abbrev` | [domainCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/domaincartesianlift--d4067b14c194885bdbddc480.md) | 47 | `declaration-track:d4067b14c194885bdbddc480504d59787fedd99c2eb90559bdcbc9dd194384f9` |
| 2 | `abbrev` | [cartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/cartesianlift--b2d0b474ed07e8d714bc128c.md) | 50 | `declaration-track:b2d0b474ed07e8d714bc128c23c36972c0253096a4a1fe3668c81f1fdd203d04` |
| 3 | `instance` | [isHomLift_cartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/ishomlift-cartesianlift--f1a7d02e439cc57b8ac2bcb9.md) | 52 | `declaration-track:f1a7d02e439cc57b8ac2bcb9271191703b96d4264174fe4552a582fcd1865de5` |
| 4 | `abbrev` | [homCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/homcartesianlift--6c4887ace5d401b1c12183e5.md) | 60 | `declaration-track:6c4887ace5d401b1c12183e5b5725836cc2f52877248a2ad6860eeaa42563238` |
| 5 | `instance` | [isHomLift_homCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/ishomlift-homcartesianlift--b5c50062c8ad8e822257465d.md) | 67 | `declaration-track:b5c50062c8ad8e822257465d81531127320241d845545816c7503a0deb960147` |
| 6 | `lemma` | [isStronglyCartesian_homCartesianLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/isstronglycartesian-homcartesianlift--6854cb2b020a3be54efcf0d5.md) | 73 | `result-track:6854cb2b020a3be54efcf0d59d168c18286d7555a73478e023781ee51cf83097` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/instance--68c5508461e965ba724e2ba2.md) | 86 | `declaration-track:68c5508461e965ba724e2ba20fc3e775014d0c8fc42f5ebbb5e52195a377d3e2` |
| 8 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/anonymous--cfa52a7a6e2f2bff7d252684.md) | 96 | `declaration-track:cfa52a7a6e2f2bff7d2526848e95b489db8778ff42a16848feece52fcb28b42a` |
| 9 | `def` | [compIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/compiso--5ef7b0a22bffccd0ad82c66c.md) | 110 | `declaration-track:5ef7b0a22bffccd0ad82c66c249a93a370e6b0dc3da0556cbb32a54c7f584324` |
| 10 | `lemma` | [comp_const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/comp-const--dd8bb79c477f1985d41a2a78.md) | 113 | `result-track:dd8bb79c477f1985d41a2a787f68c4c9f9eb2702ea934dc01dcdf23d347f2218` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/instance--0ed7f58d7168618ab992a437.md) | 118 | `declaration-track:0ed7f58d7168618ab992a437ed7bbf5576eaacae7966d4723dbd7734b2f0b799` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/instance--c61b6eec73338045bf293a47.md) | 127 | `declaration-track:c61b6eec73338045bf293a479c7add7d331482a83c05cc3d943111d73c582539` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/instance--eaf4341e779c518bfafd5235.md) | 135 | `declaration-track:eaf4341e779c518bfafd5235a312c5fd00bddb83ab659bdb646f0565f2971acb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/instance--c4da688299d8c7f8ae5726b0.md) | 143 | `declaration-track:c4da688299d8c7f8ae5726b09196ddf559421ded312dedac65ac384af8f064cf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant6d9d87bbeec51799c0d9ff866417dc7e10c55adec21aadeafc5e4a012dbd0d85.lean/declarations/instance--a2020d262062e5b7361724b0.md) | 146 | `declaration-track:a2020d262062e5b7361724b0607007bdcf392a533fe6341f6fccd44121d64c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
