# Verification target: GRWTSK.Algebra.LinearAlgebra.External.Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b15b3543350880819b600e9be2ffcda9f1212201",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b15b3543350880819b600e9be2ffcda9f1212201`.

Source path: `GRWTSK/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.IntUnitsPower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Algebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/instance--25a2a8101f82622107176505.md) | 69 | `declaration-track:25a2a8101f82622107176505f34185fe28cb1f81dabc09b16db2d072d1bc8838` |
| 2 | `def` | [gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcommaux--c3e2e94d23f07ddd2b7a5a40.md) | 84 | `declaration-track:c3e2e94d23f07ddd2b7a5a40d331826f861b3081dc89583102940ddf1b85a4d1` |
| 3 | `theorem` | [gradedCommAux_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcommaux-lof-tmul--83692c2bc8ec7b04bd339769.md) | 91 | `result-track:83692c2bc8ec7b04bd339769cdb0d2edfa8309cd13f4a570923978f7c151286e` |
| 4 | `theorem` | [gradedCommAux_comp_gradedCommAux](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcommaux-comp-gradedcommaux--a45cbed8835caad4be4c2c84.md) | 99 | `result-track:a45cbed8835caad4be4c2c84be953d6b53dff614870e4758a2bc31dc68ad4c83` |
| 5 | `def` | [gradedComm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm--7b799c00e4094cdb0ba5807d.md) | 109 | `declaration-track:7b799c00e4094cdb0ba5807dbe5880be97469c42901a01f24e6542acc5973267` |
| 6 | `theorem` | [gradedComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-symm--52748658823a6b6fda596109.md) | 117 | `result-track:52748658823a6b6fda596109bd53798db5af0c4c05f536659470e5b13bd481c9` |
| 7 | `theorem` | [gradedComm_of_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-of-tmul-of--85dbe523ee4484bd151f6a0a.md) | 122 | `result-track:85dbe523ee4484bd151f6a0a0488b473d9eed4191816dfd04189faafdfab6a5b` |
| 8 | `theorem` | [gradedComm_tmul_of_zero](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-tmul-of-zero--06d21b7efeac22b7d313cde1.md) | 132 | `result-track:06d21b7efeac22b7d313cde1fb7a67603035f78bac29e1d6062f996042e5fc34` |
| 9 | `theorem` | [gradedComm_of_zero_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-of-zero-tmul--e528b5b22e4e07e40dccbfa0.md) | 143 | `result-track:e528b5b22e4e07e40dccbfa0ce2a49d66868eb05a77da2418acdbb969464b1db` |
| 10 | `theorem` | [gradedComm_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-tmul-one--2ee0bc6e66728e0a5e9e09b6.md) | 153 | `result-track:2ee0bc6e66728e0a5e9e09b6f88f6ff806132b7ffca7f77e704258f43639ba73` |
| 11 | `theorem` | [gradedComm_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-one-tmul--cbf9a6879ebf7c77d5b2c15a.md) | 157 | `result-track:cbf9a6879ebf7c77d5b2c15a1aeed71ffb86e86520fcfa4c20fe86f53bf845fb` |
| 12 | `theorem` | [gradedComm_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-one--cb02b6c448713fc4cd5852d9.md) | 162 | `result-track:cb02b6c448713fc4cd5852d9a24f42065c3eebb1ceab0a1038531d7557aff737` |
| 13 | `theorem` | [gradedComm_tmul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-tmul-algebramap--9cc00f7e5c7bc23cec58ad4c.md) | 165 | `result-track:9cc00f7e5c7bc23cec58ad4c3adb4180785ff3a8f72726ca5a9aadc8e00a86db` |
| 14 | `theorem` | [gradedComm_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-algebramap-tmul--229c96862cffba2baab46f1c.md) | 170 | `result-track:229c96862cffba2baab46f1c69673656fcd9bb894a54f8677c0d3dcd282c75bd` |
| 15 | `theorem` | [gradedComm_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-algebramap--a6ee93495c50f8c1e69fb458.md) | 175 | `result-track:a6ee93495c50f8c1e69fb4583c27afb79ff73fc9badbf99c5aaffc81978378fd` |
| 16 | `theorem` | [tmul_of_gradedMul_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/tmul-of-gradedmul-of-tmul--d31d2af475a00e389e507d04.md) | 197 | `result-track:d31d2af475a00e389e507d04318e3b3df8d8ca9c5c0b2f61c069868f27dcfbb6` |
| 17 | `theorem` | [algebraMap_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/algebramap-gradedmul--b61909196476111acd2ed480.md) | 214 | `result-track:b61909196476111acd2ed4807d2748ea45ede267be4c5552a52a054b86d2904a` |
| 18 | `theorem` | [one_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/one-gradedmul--249ca86b73f6606eeee3c012.md) | 224 | `result-track:249ca86b73f6606eeee3c01272c7e95d1606a05c23ea2e65070fb61a950615c9` |
| 19 | `theorem` | [gradedMul_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedmul-algebramap--540d762aa189fba522c7797b.md) | 229 | `result-track:540d762aa189fba522c7797b05ecebc621350aab17242cd9749285d571be9328` |
| 20 | `theorem` | [gradedMul_one](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedmul-one--013dd00e2ea8d3ec9357f64a.md) | 240 | `result-track:013dd00e2ea8d3ec9357f64a77010f5990c8aea79a9060516ea7190fe5297ab6` |
| 21 | `theorem` | [gradedMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedmul-assoc--39af6703714612ec27097d10.md) | 245 | `result-track:39af6703714612ec27097d10e758f8e1750a37515b4cfab4e8f1b538f2aa6be2` |
| 22 | `theorem` | [gradedComm_gradedMul](../../../../../mathematics/Algebra/LinearAlgebra/External/Variant2b04a0ce9e9d68203a2dbb7b606d8d2cc7364fb0235e75cbf47a0fefc7bf5e45.lean/declarations/gradedcomm-gradedmul--a1571f5abebad7a2cb7be97c.md) | 262 | `result-track:a1571f5abebad7a2cb7be97c92c6e3130c07b560e792d59498e08423381a5697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
