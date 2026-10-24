# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConnectedComponents.Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621d099ce54f5288f476cfccf558e56bae1e4295",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621d099ce54f5288f476cfccf558e56bae1e4295`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sigma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConnectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents--e1da41a7ed75233a6f150e12.md) | 36 | `declaration-track:e1da41a7ed75233a6f150e127e1b698dc1d6dd469b97b1a9fc080a124d64de54` |
| 2 | `def` | [Functor.mapConnectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/functor-mapconnectedcomponents--5fc9940c76b896caf19c4ac7.md) | 40 | `declaration-track:5fc9940c76b896caf19c4ac71ccd8fa934dd6beff8f590fc344c72cc3e0ca509` |
| 3 | `lemma` | [Functor.mapConnectedComponents_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/functor-mapconnectedcomponents-mk--eb0afdce83f7aca3af2994ea.md) | 46 | `result-track:eb0afdce83f7aca3af2994ea857a10023467f36c112af224f0da9b20cd9bbdc8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--d7ea4bec1f20b5bf4bab6b10.md) | 49 | `declaration-track:d7ea4bec1f20b5bf4bab6b10ba0cac68e5850ad0e1bb990613d9509a60efc90a` |
| 5 | `def` | [ConnectedComponents.functorToDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents-functortodiscrete--36c96991f2bc5cfa8d7dd32b.md) | 53 | `declaration-track:36c96991f2bc5cfa8d7dd32bc123418355137112a3340d54d503e30224cf7cef` |
| 6 | `def` | [ConnectedComponents.liftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents-liftfunctor--a056a92200f14860b1c4cb5f.md) | 59 | `declaration-track:a056a92200f14860b1c4cb5fbd0933fdbb8be4ea5dc6623d5b51eb52a123b4f7` |
| 7 | `def` | [ConnectedComponents.typeToCatHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents-typetocathomequiv--b590af0a7c3c07f85ee40047.md) | 65 | `declaration-track:b590af0a7c3c07f85ee40047bd0ea6db64f915482c0869257343dbbddcd8653c` |
| 8 | `def` | [ConnectedComponents.objectProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents-objectproperty--053016c9c181d5d39a3bcc96.md) | 80 | `declaration-track:053016c9c181d5d39a3bcc9698ee4ecfd930604cf9207a09af1ba24f95247532` |
| 9 | `abbrev` | [ConnectedComponents.Component](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents-component--d11d866f963e8c59a264647c.md) | 84 | `declaration-track:d11d866f963e8c59a264647c47b7082f3fb088c886262562aad9c2768aa4188b` |
| 10 | `abbrev` | [ConnectedComponents.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents--b22069819838c4dc081914fc.md) | 88 | `declaration-track:b22069819838c4dc081914fc78569de46d9b5a25d41b358d68505344086fa352` |
| 11 | `abbrev` | [ConnectedComponents.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/connectedcomponents-mk--7f13e9a10f16e71a7f26145b.md) | 91 | `declaration-track:7f13e9a10f16e71a7f26145b2f24bfc1d15c529e76398d43971f528f33814982` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--c3aa1acfa23810990551e3b4.md) | 98 | `declaration-track:c3aa1acfa23810990551e3b4ab9e982e4945ab4eb208fa2fe2e487d759e50428` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--b97401ebc69202bcafcb7430.md) | 102 | `declaration-track:b97401ebc69202bcafcb743082c3316d1ee7fb0e10da07978b7f4a3d05d4e2ba` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--5ceb4fb90d5db6fce43ee3e4.md) | 106 | `declaration-track:5ceb4fb90d5db6fce43ee3e4731026c826112f1f38ba4c67ab1df8a0cf1c2473` |
| 15 | `abbrev` | [Decomposed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/decomposed--ed045c83c6fb8be0bf48bfa2.md) | 138 | `declaration-track:ed045c83c6fb8be0bf48bfa2a0a7b712c046aea354cd7147f96564be700ab9e3` |
| 16 | `abbrev` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/inclusion--c6a9e914425c9b3f1be93a6d.md) | 146 | `declaration-track:c6a9e914425c9b3f1be93a6d854470bbe439236ffa56afdc3c2ba339ae1c1aae` |
| 17 | `def` | [decomposedTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/decomposedto--4dabf9051ca7326f3ebb9dcb.md) | 151 | `declaration-track:4dabf9051ca7326f3ebb9dcbdb55591d0edcd087696636af088299b748de310a` |
| 18 | `theorem` | [inclusion_comp_decomposedTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/inclusion-comp-decomposedto--0b853ff80989fa54ef92afe8.md) | 155 | `result-track:0b853ff80989fa54ef92afe8f6c63332ca28f87f2effd4208945bbc84e3df644` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--4c3274d6001d5b752817a525.md) | 159 | `declaration-track:4c3274d6001d5b752817a525d0337bced7bb1f2cfe5796170e670a05b229e394` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--ec8dc5ff56be8eceb10c627e.md) | 169 | `declaration-track:ec8dc5ff56be8eceb10c627e088153121ad0d745c038a1d38cf17b761f8b6bf4` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--5d725a574eafbc09d50fb8f7.md) | 174 | `declaration-track:5d725a574eafbc09d50fb8f7cf3e7b28d99bfbd40703853be878816cb7200b28` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/instance--8670454e21cae603c512e73b.md) | 176 | `declaration-track:8670454e21cae603c512e73bbd9ae5d94420b1191fcf93a0872058160a9ba8ef` |
| 23 | `def` | [decomposedEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/declarations/decomposedequiv--4a18bb1d0763ad76028bb320.md) | 180 | `declaration-track:4a18bb1d0763ad76028bb3203211717e25c0bdd7b1ae869f00f827da64bdc960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
