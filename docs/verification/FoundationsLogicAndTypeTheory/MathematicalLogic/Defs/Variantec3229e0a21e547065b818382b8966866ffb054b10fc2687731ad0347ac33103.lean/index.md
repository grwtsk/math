# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13b91a4ebc8c6fbbb69c00f08d526f8f5dead122",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13b91a4ebc8c6fbbb69c00f08d526f8f5dead122`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.CoeSort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/inductive--5c0193792fd652ec31786d71.md) | 98 | `declaration-track:5c0193792fd652ec31786d71311307f92b45ba1eef04c5863f57769d95b9a819` |
| 2 | `theorem` | [finite_iff_exists_equiv_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-iff-exists-equiv-fin--e98155c465623be3d3aaf3d8.md) | 101 | `result-track:e98155c465623be3d3aaf3d86aaf0f1486244106a159c4801f3220965635c576` |
| 3 | `theorem` | [Finite.exists_equiv_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-exists-equiv-fin--1bfdcf0d1e1c40601f9d5244.md) | 104 | `result-track:1bfdcf0d1e1c40601f9d5244ab2876545ec51197876b8337e0cd1268407b9214` |
| 4 | `theorem` | [Finite.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-of-equiv--8f3e39d4749dfd30f3f866e9.md) | 107 | `result-track:8f3e39d4749dfd30f3f866e9db70c1c33e6314e6cb9f4d64066a5643c1cab8ce` |
| 5 | `theorem` | [Equiv.finite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/equiv-finite-iff--836056db6e426264b53d9f76.md) | 110 | `result-track:836056db6e426264b53d9f766bb128102c91337f85e737b78a015ccf4bdd50c6` |
| 6 | `theorem` | [Function.Bijective.finite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/function-bijective-finite-iff--e9231ecda1a9bf1516967ef5.md) | 113 | `result-track:e9231ecda1a9bf1516967ef55f3ed2cd08dfc84fc5696328dcad2881204421a6` |
| 7 | `theorem` | [Finite.ofBijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-ofbijective--d500f93a43290f71f9cc2948.md) | 116 | `result-track:d500f93a43290f71f9cc2948a78050b07406db31b76991e3a7d51a0c8a649471` |
| 8 | `theorem` | [Finite.nonempty_decidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-nonempty-decidableeq--187cd7f0a8bb9990e54358cb.md) | 120 | `result-track:187cd7f0a8bb9990e54358cb4aef2d2e8ea8ac0414ad142f4fb4c95e108092c1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/instance--b685058869ee1f8e65778cd8.md) | 123 | `declaration-track:b685058869ee1f8e65778cd83786d16364aa62163678787177ea02e7fb84f84c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/instance--d421eb7b2ce49acfa391939e.md) | 126 | `declaration-track:d421eb7b2ce49acfa391939ea1af4eee3f464de3d3d35f1895899565d91fbfb7` |
| 11 | `class` | [Infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/infinite--6528c31c8fa52d81273d56c6.md) | 131 | `declaration-track:6528c31c8fa52d81273d56c627632547a8e650248df5ec5be03c430ae2d85587` |
| 12 | `theorem` | [not_finite_iff_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/not-finite-iff-infinite--b8212efae6ad416841a2c0b2.md) | 136 | `result-track:b8212efae6ad416841a2c0b2e2f66cfd0073a3dd1bc913bdb957976c4df8b7de` |
| 13 | `theorem` | [not_infinite_iff_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/not-infinite-iff-finite--e199cd8d724b30f773c08714.md) | 140 | `result-track:e199cd8d724b30f773c08714d0f201f6f740e6ba670bba795656d312ac7eee76` |
| 14 | `theorem` | [Equiv.infinite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/equiv-infinite-iff--35a218c343d6fb423de95b75.md) | 143 | `result-track:35a218c343d6fb423de95b75c243217a00d5a203172db92c47cca05a81c3462d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/instance--0184eb98514618b36fab0ec6.md) | 146 | `declaration-track:0184eb98514618b36fab0ec60f48d80d43ee91d5dd465f98e41ef1a815cab797` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/instance--74aec1f234b83022e6ed8bc2.md) | 149 | `declaration-track:74aec1f234b83022e6ed8bc2e8379b7d024cd74ce5b025324635def35a0b74d0` |
| 17 | `theorem` | [finite_or_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-or-infinite--b697817194546a1b45ae22f9.md) | 152 | `result-track:b697817194546a1b45ae22f90ce4f1ba2d4029cd2666f55345c01021e1b49b0e` |
| 18 | `theorem` | [not_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/not-finite--c4f0e2c2bfa6b1aca7193984.md) | 156 | `result-track:c4f0e2c2bfa6b1aca71939840a60127df67e30772825ab9c5a18eea602c12715` |
| 19 | `theorem` | [Finite.false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-false--13715130038481696dc2ba99.md) | 159 | `result-track:13715130038481696dc2ba99e2e19279132420291c988f6e3b6278cda31c7bcd` |
| 20 | `theorem` | [Infinite.false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/infinite-false--53512a0b4ca1aa470b5cb18f.md) | 162 | `result-track:53512a0b4ca1aa470b5cb18fa59cb30907f8c7013bf3d41a9005d5d845439ac6` |
| 21 | `instance` | [Bool.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/bool-instfinite--13752ef94abcc5e08b9840a5.md) | 167 | `declaration-track:13752ef94abcc5e08b9840a5906208f3961304329cef9dbad03e8fc10173c4e5` |
| 22 | `instance` | [Prop.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/prop-instfinite--08d48790aae568dcdb102945.md) | 168 | `declaration-track:08d48790aae568dcdb10294599f385bc774355623bdff0d91d97df5dc1aef196` |
| 23 | `def` | [Finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite--7940a45f5e25540b7a2197da.md) | 184 | `declaration-track:7940a45f5e25540b7a2197da7538082e9e1c426e72f6415bb7241879adaa747e` |
| 24 | `theorem` | [finite_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-coe-iff--eefd966af93916938b8cb168.md) | 191 | `result-track:eefd966af93916938b8cb16810cc512a037b290ecc1612f89e759c1a6a231fa1` |
| 25 | `theorem` | [toFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/tofinite--7f8c30d18471e85f727a3f15.md) | 194 | `result-track:7f8c30d18471e85f727a3f158dae8a70767ceab440b0b9d1d80e9bed19438998` |
| 26 | `theorem` | [Finite.to_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-to-subtype--45ba3f277532cb87fe8885fe.md) | 199 | `result-track:45ba3f277532cb87fe8885feed4abea82356d76d2a9d1fadfc010dae635b01fb` |
| 27 | `def` | [Infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/infinite--66cfde66a42d7d6d7740fa7c.md) | 204 | `declaration-track:66cfde66a42d7d6d7740fa7ce2b88a4deb905f44a64c7a05814eacab7e7ff332` |
| 28 | `theorem` | [not_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/not-infinite--82ca0bb20e6b0ca096184bbc.md) | 208 | `result-track:82ca0bb20e6b0ca096184bbc9ed50c159d78b13efe750b40d98143144c711df8` |
| 29 | `theorem` | [finite_or_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/finite-or-infinite--7fe7cb2bc896bd07cfbe1305.md) | 216 | `result-track:7fe7cb2bc896bd07cfbe13053fe371aeba288bd50b63601e9c3f7b08a5d2e905` |
| 30 | `theorem` | [infinite_or_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/infinite-or-finite--53482fb15edd5b9b69f64d3e.md) | 219 | `result-track:53482fb15edd5b9b69f64d3e4fa7bdb5109f01b3231e5a0dd3ab4cf22d45f3ac` |
| 31 | `theorem` | [Equiv.set_finite_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/equiv-set-finite-iff--de1b6c7e415921f1e4945be9.md) | 224 | `result-track:de1b6c7e415921f1e4945be9381d9b883026a2ecf2d96ea03694077f32f8a74c` |
| 32 | `theorem` | [infinite_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantec3229e0a21e547065b818382b8966866ffb054b10fc2687731ad0347ac33103.lean/declarations/infinite-coe-iff--b2d3d3106c0e6fc1fd8ce59d.md) | 233 | `result-track:b2d3d3106c0e6fc1fd8ce59d5297ddd15063c5b03bfc952976dc65d0d6d37bec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
