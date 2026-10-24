# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grpd.Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a68415762a5fa882d56bd665e4f49bdbf421ddc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a68415762a5fa882d56bd665e4f49bdbf421ddc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SingleObj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IsLimit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Grpd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/grpd--9c5d009ee909c01133e1f1d4.md) | 37 | `declaration-track:9c5d009ee909c01133e1f1d464b7e44372d4b8b5ad616cf10d2b808a4db6ccbd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/instance--669f9ad76c78d22b3b2ad108.md) | 44 | `declaration-track:669f9ad76c78d22b3b2ad1086d502bbcf313f631c0ff0503c799d3c435349c0f` |
| 3 | `instance` | [str'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/str--50e96b57d26e79fca52a853b.md) | 48 | `declaration-track:50e96b57d26e79fca52a853b0ad1f6577fff3d1584bcc486667ca8f55fcd9e62` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/instance--30dbaff11e9d80f3ae943460.md) | 53 | `declaration-track:30dbaff11e9d80f3ae943460b1e454ad4b9236c5e5609d37222e58d161c141b8` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/of--b6f81775e8aa73307d35623e.md) | 57 | `declaration-track:b6f81775e8aa73307d35623e93c3b6638d665a337642a6d60a490c0e058ad9f7` |
| 6 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/coe-of--bb37bbbf72a07bd343369c13.md) | 63 | `result-track:bb37bbbf72a07bd343369c13f3e6192d0699465849f131c2e8dd96b50af74e9d` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/category--dddb8ac87227241000c8e080.md) | 69 | `declaration-track:dddb8ac87227241000c8e08022f086abb1a4f3c5ff4b452619661a06eb34029b` |
| 8 | `def` | [objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/objects--423b9078841fe2f07e7baafb.md) | 81 | `declaration-track:423b9078841fe2f07e7baafbac9284183da2124471c9ac7042db86f97d267e9d` |
| 9 | `def` | [forgetToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/forgettocat--79d4d7c81aa61fa1381a52ea.md) | 88 | `declaration-track:79d4d7c81aa61fa1381a52ea5f10b33d2d37343629ef4bb84ceb0c58d0dd495e` |
| 10 | `instance` | [forgetToCatFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/forgettocatfull--4bd233a39cf80f93cf02628d.md) | 94 | `declaration-track:4bd233a39cf80f93cf02628d518917e7b0d59bac838cce977763fc4f0f8658b8` |
| 11 | `instance` | [forgetToCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/forgettocat-faithful--34232c0cb6c6afa7f19208fa.md) | 98 | `declaration-track:34232c0cb6c6afa7f19208fa6c9150b3a3b1b1a60b8e16941b42a6b51532c44b` |
| 12 | `theorem` | [hom_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/hom-to-functor--bb2bc665642ecc2e0b84f239.md) | 104 | `result-track:bb2bc665642ecc2e0b84f23967d3046cd45d5d14d4fa35061346459be0941653` |
| 13 | `theorem` | [id_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/id-to-functor--9d221cb4a77ce87f9c607a10.md) | 110 | `result-track:9d221cb4a77ce87f9c607a107f424f9f1158cd1f078ab216467de39c03be0054` |
| 14 | `def` | [piLimitFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/pilimitfan--b85977e0c64300f2d7b1226a.md) | 118 | `declaration-track:b85977e0c64300f2d7b1226a7cda913cc67206e04e35796a06132b3019dec20f` |
| 15 | `def` | [piLimitFanIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/pilimitfanislimit--d959ab2b9c67cc083f907862.md) | 124 | `declaration-track:d959ab2b9c67cc083f9078623fb3014b2475861f2b4989b3c6780893591061ed` |
| 16 | `instance` | [has_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/has-pi--9ca9f811945a1458ae1ab788.md) | 138 | `declaration-track:9ca9f811945a1458ae1ab788d280d4bd0de55fe4de4a2987856c37d8ff22bd8f` |
| 17 | `def` | [piIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/piisopi--82cf2fa18c136f05509f8ca0.md) | 145 | `declaration-track:82cf2fa18c136f05509f8ca06a5b6ddf7c482374d4408519a4ec550e09e1dd7b` |
| 18 | `theorem` | [piIsoPi_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331.lean/declarations/piisopi-hom--f440f0f3f8ae30447e81d75d.md) | 152 | `result-track:f440f0f3f8ae30447e81d75db8dd935461e5cd10c323f86e30e11dfa6bf840b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
