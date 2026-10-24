# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedSections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e51a9831becb8509f9aa08e273a57bdb598b6f7a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e51a9831becb8509f9aa08e273a57bdb598b6f7a`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.RingTheory.WeightedInvolution`](../../../../../mathematics/Algebra/RingTheory/WeightedInvolution.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.LinearAlgebra.Span.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientAlgebra](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/coefficientalgebra--5721e914a8978bffa39fb81c.md) | 27 | `declaration-track:5721e914a8978bffa39fb81c07fb35974c1f4ce10d0a680a0cd57d2512af58ec` |
| 2 | `def` | [pullbackAlg](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/pullbackalg--e22f7ba78dd9891fa1e18809.md) | 31 | `declaration-track:e22f7ba78dd9891fa1e188096d15e11c262e07126e0803c3571da1fd37c44d47` |
| 3 | `theorem` | [pullbackAlg_involutive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/pullbackalg-involutive--8f1ef6b08df02154cb05d3c3.md) | 35 | `result-track:8f1ef6b08df02154cb05d3c363ee132f9900c52af29a7ee905d9ea958349d16b` |
| 4 | `theorem` | [x_pairing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/x-pairing--a01344d1448d656057780b33.md) | 41 | `result-track:a01344d1448d656057780b3385828b7c2917d18bbc9829e9e2b364b99f1725e0` |
| 5 | `def` | [lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift--3158fbba98ca6534d2df98f7.md) | 50 | `declaration-track:3158fbba98ca6534d2df98f789d863e6f2cf91ab3ca600ce6f5ea22d5a057666` |
| 6 | `theorem` | [lift_apply](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-apply--3db528228c8d354202335d32.md) | 53 | `result-track:3db528228c8d354202335d3212771c95c01718a088aa18bc872540df74a10eac` |
| 7 | `theorem` | [lift_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-square--a7b73d43375858d7b0c451ee.md) | 56 | `result-track:a7b73d43375858d7b0c451ee63d2ab6edfd8ecfaa0591ad8299d1cca1118c93c` |
| 8 | `def` | [liftEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/liftequiv--27e86472c44bde1d3f3aea18.md) | 62 | `declaration-track:27e86472c44bde1d3f3aea18b4d8ba15c9b634adcb9937d355d064900ff3ca6f` |
| 9 | `theorem` | [lift_succ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-succ--09124398ef6c976f72fb7b9e.md) | 68 | `result-track:09124398ef6c976f72fb7b9e4d40b555356caa2a95e011d749bc063dda6a6ea5` |
| 10 | `theorem` | [lift_graded_mul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-graded-mul--1ae8cf4623abe1ab2bf8476b.md) | 73 | `result-track:1ae8cf4623abe1ab2bf8476bc664981f267c1a52735648bfa45e9163801460c0` |
| 11 | `theorem` | [power_cancel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/power-cancel--e2d7fbdcf350725eeb2cd260.md) | 78 | `result-track:e2d7fbdcf350725eeb2cd2602ce971124cd246f4c67b991caca2f55cf1bffe5f` |
| 12 | `theorem` | [lift_X_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-x-pow--204e07e0efdab8596d054d48.md) | 87 | `result-track:204e07e0efdab8596d054d48b1ccf691e9c49d9cd0c6624a17a39a42263d0027` |
| 13 | `theorem` | [lift_Y_X_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-y-x-pow--d6237b68d5102e8aaf58041c.md) | 97 | `result-track:d6237b68d5102e8aaf58041c067a3e3a07d669d41019022f8261fed5cadd2dee` |
| 14 | `def` | [generators](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/generators--cf5db5a5cfe1b1f8c8d8a7e2.md) | 110 | `declaration-track:cf5db5a5cfe1b1f8c8d8a7e20350507ca4697679db6bbfedd02924d39f833d8f` |
| 15 | `def` | [stage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/stage--c7157a04c3898f033b16351d.md) | 114 | `declaration-track:c7157a04c3898f033b16351d4ca7183f11ee489cf35ef709e76d9104761fa04c` |
| 16 | `theorem` | [stage_mono](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/stage-mono--4919cbda73a55d0fceb24ff2.md) | 118 | `result-track:4919cbda73a55d0fceb24ff288c2edc41301252b7130e39b5fcd16d681c00f97` |
| 17 | `theorem` | [lift_mem_stage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-mem-stage--ed5c1048e9d8a16d31437c83.md) | 126 | `result-track:ed5c1048e9d8a16d31437c83f15b4920cea2d136058870df7a54d4c6eee343c7` |
| 18 | `def` | [stageEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/stageequiv--23e059d7c4741db9f8b2de92.md) | 144 | `declaration-track:23e059d7c4741db9f8b2de928cc7b9e16ed3b67ff9c0b1d6efefacdf2a552a18` |
| 19 | `theorem` | [lift_degree_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/lift-degree-two--c987f2f2862e08b115ed06e6.md) | 158 | `result-track:c987f2f2862e08b115ed06e65e5c21a2f65d0a8923fcf7c792e6dc1af3d12fc1` |
| 20 | `def` | [degreeTwoMatrix](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/degreetwomatrix--edf649825f44a5809a31cdfe.md) | 169 | `declaration-track:edf649825f44a5809a31cdfe24205677d03571c44c8acbd0b91de421cb8b45f3` |
| 21 | `theorem` | [degreeTwoMatrix_det](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/degreetwomatrix-det--c47c8971050022b0f04cdbf3.md) | 173 | `result-track:c47c8971050022b0f04cdbf3cc5f527d70de2e4595cc4e92c15f69f70f097a1b` |
| 22 | `theorem` | [degreeTwoMatrix_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/degreetwomatrix-square--f5639c16308d7dc770dae8d6.md) | 177 | `result-track:f5639c16308d7dc770dae8d6f570ec7351dd0f22a7923dd9f43c029284307527` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.frey_weight_one_rational_normalization_obstruction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/declarations/primitiveadditivetriple-frey-weight-one-rational-normalization-obstructi--10f75665d56dbe3dc8c39c55.md) | 189 | `result-track:10f75665d56dbe3dc8c39c559b52b9ee246b3936aa933b928a69e2868fa78420` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
