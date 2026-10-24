# Verification target: GRWTSK.Algebra.LinearAlgebra.Dual.Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70f4edd2aa5608a87042be47134129238f04bb36",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70f4edd2aa5608a87042be47134129238f04bb36`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.NullSubmodule` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/todualmap--74dbd3fa763797446e04b194.md) | 71 | `declaration-track:74dbd3fa763797446e04b1948ee177caad3dd510cac88155fbe12f6acbb50714` |
| 2 | `theorem` | [toDualMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/todualmap-apply--569c39196e1e42f0309df7f3.md) | 77 | `result-track:569c39196e1e42f0309df7f387f05eb43ce64200060c6b2d100e1863fa0e90b7` |
| 3 | `lemma` | [nullSubmodule_le_ker_toDualMap_right](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/nullsubmodule-le-ker-todualmap-right--564817d7922fee23d5eb2cfd.md) | 85 | `result-track:564817d7922fee23d5eb2cfdc520cee9427e6986c08466ef60ff32eb064e46f2` |
| 4 | `lemma` | [nullSubmodule_le_ker_toDualMap_left](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/nullsubmodule-le-ker-todualmap-left--5654f89fcc0d3da3f2786bd7.md) | 89 | `result-track:5654f89fcc0d3da3f2786bd744325cfdc7a67274c6dbb8720ba8c2a3c66a18c6` |
| 5 | `theorem` | [innerSL_norm](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/innersl-norm--b1fa0e0a30f0a066bb3d0663.md) | 103 | `result-track:b1fa0e0a30f0a066bb3d0663333e1f81044a63ed6de4f04e78316d6533e02b14` |
| 6 | `theorem` | [ext_inner_left_basis](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/ext-inner-left-basis--b465ed056c984181b5bb0c37.md) | 108 | `result-track:b465ed056c984181b5bb0c37f15d2b6d18210d095cfb32f3a7761bcd66ec264b` |
| 7 | `theorem` | [ext_inner_right_basis](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/ext-inner-right-basis--b3aadb34fc5579390fb147a2.md) | 119 | `result-track:b3aadb34fc5579390fb147a2035a4585d61ae84e1147f10ae71d5fc90f54ff39` |
| 8 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/todual--e0615883dd1fa759498c55b6.md) | 132 | `declaration-track:e0615883dd1fa759498c55b64d846c2673ba296b035f6c34597d603520494bbc` |
| 9 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/todual-apply--77d1ed51752a58c1fe1a496f.md) | 175 | `result-track:77d1ed51752a58c1fe1a496f019801ebc9ac3de3158eb9834e233c14445b1779` |
| 10 | `theorem` | [toDual_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/todual-symm-apply--408e542b9443a079c392bec5.md) | 179 | `result-track:408e542b9443a079c392bec5c607958fea30189dd8af21d40d74d034aff67d34` |
| 11 | `def` | [continuousLinearMapOfBilin](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/continuouslinearmapofbilin--fec2af198b397b7e044a13d9.md) | 187 | `declaration-track:fec2af198b397b7e044a13d9b52f008c62d9a938236abd5f06fd59edd7a681ef` |
| 12 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/continuouslinearmapofbilin-apply--1852f83a653d07d33398c839.md) | 195 | `result-track:1852f83a653d07d33398c839186ebe3baf0ea6a575c0d0beb98854175c2e492a` |
| 13 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean/declarations/unique-continuouslinearmapofbilin--f4f23b897188470ce043271d.md) | 199 | `result-track:f4f23b897188470ce043271ddbbe9854dd4f70c98dc0f9df8f98b90efc92c32b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
