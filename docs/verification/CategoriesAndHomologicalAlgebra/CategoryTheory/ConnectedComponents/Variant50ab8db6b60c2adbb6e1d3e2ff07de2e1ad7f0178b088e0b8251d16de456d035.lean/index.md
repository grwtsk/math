# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConnectedComponents.Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86942ce12d9e17cc8ea0498879db8367a7d2b75d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86942ce12d9e17cc8ea0498879db8367a7d2b75d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConnectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents--7c80a3dd285726a663eff17a.md) | 44 | `declaration-track:7c80a3dd285726a663eff17a490d5cdffd06b773eaac99ec9601f5f6a63d7508` |
| 2 | `def` | [Functor.mapConnectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/functor-mapconnectedcomponents--7a6bd36c8a74eb3dafee5e31.md) | 48 | `declaration-track:7a6bd36c8a74eb3dafee5e3155a21abd696eab78bf586f9beaf1d2b183f8412d` |
| 3 | `lemma` | [Functor.mapConnectedComponents_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/functor-mapconnectedcomponents-mk--bc4724493999fb271c61c556.md) | 54 | `result-track:bc4724493999fb271c61c556af3b2657fd2cedea0e50006212062ad69022cea4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--93476e1b2eafa5ba70070b2b.md) | 57 | `declaration-track:93476e1b2eafa5ba70070b2befcd7b2ebdfc2e2b78afdb18eeb41d2e1300608b` |
| 5 | `def` | [ConnectedComponents.functorToDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents-functortodiscrete--89291fb0e8be3474862b36f8.md) | 61 | `declaration-track:89291fb0e8be3474862b36f85616aef2a23351b1a669f52b53b415e844a1d941` |
| 6 | `def` | [ConnectedComponents.liftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents-liftfunctor--15f7f066284b58f7003cb70a.md) | 67 | `declaration-track:15f7f066284b58f7003cb70ad0e1b30b6180a56b70dbed041082c9b4f4306975` |
| 7 | `def` | [ConnectedComponents.typeToCatHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents-typetocathomequiv--fc5946cdba1b483bfc34a9f0.md) | 73 | `declaration-track:fc5946cdba1b483bfc34a9f099b3ae2bbb58be1dd1b5e9f0133d814582f0fed3` |
| 8 | `def` | [ConnectedComponents.objectProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents-objectproperty--6f7401583dfeef49c66a6ce7.md) | 88 | `declaration-track:6f7401583dfeef49c66a6ce77f796c13274aa4811fbedc7d2cc99c9df2b23c06` |
| 9 | `abbrev` | [ConnectedComponents.Component](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents-component--e4513b52a555285e944e2238.md) | 92 | `declaration-track:e4513b52a555285e944e22380db9f16138692b553ec0687e4a9fbf2e6103f763` |
| 10 | `abbrev` | [ConnectedComponents.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents--ae5022b185462323ab4922e8.md) | 96 | `declaration-track:ae5022b185462323ab4922e84cae47bf0fc56b1fcd3b9750bd51f69005bf42a6` |
| 11 | `abbrev` | [ConnectedComponents.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/connectedcomponents-mk--86f64e305d7173f62d6f3ec7.md) | 99 | `declaration-track:86f64e305d7173f62d6f3ec72b46cd9b271a5e04fe6005a8b14d0f4096382bfb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--181ca768ffbf7f219d90e3f3.md) | 106 | `declaration-track:181ca768ffbf7f219d90e3f362594e86320d36e187464498aa2aa8e33fa3f456` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--6a8395f3faa7fef8f095ec0a.md) | 110 | `declaration-track:6a8395f3faa7fef8f095ec0ab9c1619acf8153bdb8f5e9ed7d1126d86f0335d3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--44a5a6c81b9dac4d0511cd05.md) | 114 | `declaration-track:44a5a6c81b9dac4d0511cd052031cd9585a499e94c8851f38b2f2237f0c82755` |
| 15 | `abbrev` | [Decomposed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/decomposed--0d11990804bf9ebe5cf201c2.md) | 146 | `declaration-track:0d11990804bf9ebe5cf201c2f6259ffc98c0fe1592f50e240bd910828327a5ca` |
| 16 | `abbrev` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/inclusion--4e8f2d17100680bd861a477c.md) | 154 | `declaration-track:4e8f2d17100680bd861a477c40d1c9e048792cbd6c652cc145e5e58aaf0f816a` |
| 17 | `def` | [decomposedTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/decomposedto--6a7cdcb70d950166508e48b0.md) | 159 | `declaration-track:6a7cdcb70d950166508e48b09f609e3a201732031cef9a7850019d0471db8fa0` |
| 18 | `theorem` | [inclusion_comp_decomposedTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/inclusion-comp-decomposedto--0127420ad132454803cb375e.md) | 163 | `result-track:0127420ad132454803cb375e7b8649dd711bd19396a49e02ecc084271d2c59c0` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--ab558338e2d0bb25a340c178.md) | 167 | `declaration-track:ab558338e2d0bb25a340c178fa561e665bc85d434662eeb493f836987a57abfc` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--9fcdc32a6f293cfe38acf93f.md) | 177 | `declaration-track:9fcdc32a6f293cfe38acf93ff9274ba92e05582a1f17cc80ddfcea17ac7f3a79` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--e468a80e6144498eef5064b3.md) | 182 | `declaration-track:e468a80e6144498eef5064b31e1254d404d2223fecf3d9fb3618bf5b4bb127e1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/instance--5e59c1368b3a6c3e7db2d61c.md) | 184 | `declaration-track:5e59c1368b3a6c3e7db2d61c0293366f0a5000eb76bcf78507724612466f2d63` |
| 23 | `def` | [decomposedEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant50ab8db6b60c2adbb6e1d3e2ff07de2e1ad7f0178b088e0b8251d16de456d035.lean/declarations/decomposedequiv--ab55ddc5bc8adb7921dfe92d.md) | 188 | `declaration-track:ab55ddc5bc8adb7921dfe92d74d0995f62c750768ed198628d805d872bd163d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
