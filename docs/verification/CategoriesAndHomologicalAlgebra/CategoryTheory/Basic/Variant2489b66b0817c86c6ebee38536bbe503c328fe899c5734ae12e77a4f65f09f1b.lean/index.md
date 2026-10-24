# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f687be796c5af008f9f6565cbd2706666830a40",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f687be796c5af008f9f6565cbd2706666830a40`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvQPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/mvqpf--8b8d450f703cd4b1b5c925b2.md) | 86 | `declaration-track:8b8d450f703cd4b1b5c925b2ec9a39fc443a46aca135dae3b76c3d6d08cc71db` |
| 2 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/id-map--e3651fa1a64611c270243ec0.md) | 104 | `result-track:e3651fa1a64611c270243ec0255d1677ef3f6681ce5656b22646a4b17a549037` |
| 3 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/comp-map--64254532556e15299f32f86d.md) | 109 | `result-track:64254532556e15299f32f86d4e24e23c2ba66ee313c8edf88607871125b62b00` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/instance--dfe1c5ad2cb0c59fef76fc5f.md) | 114 | `declaration-track:dfe1c5ad2cb0c59fef76fc5fb2d14e3fe4261048539a224656e927097c053d1b` |
| 5 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/liftp-iff--9d619d03e08b68e4c9642eba.md) | 119 | `result-track:9d619d03e08b68e4c9642eba755e7e3af92840e362757f51be9dce851c99b250` |
| 6 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/liftr-iff--c2cddc56be72a74af806586b.md) | 133 | `result-track:c2cddc56be72a74af806586b0e44fc9e4bc2da689aec05d139c57bf780774add` |
| 7 | `theorem` | [mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/mem-supp--17593326fee14f7421f20cce.md) | 155 | `result-track:17593326fee14f7421f20cce171935ca231b4fa4b7e99c05c5cfe9a56ebf7b58` |
| 8 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/supp-eq--7cdd8137b76fb76b33503d02.md) | 170 | `result-track:7cdd8137b76fb76b33503d02730d0287ef599c35e9a128fc7cdba225ee999682` |
| 9 | `theorem` | [has_good_supp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/has-good-supp-iff--ae4de68bc6e6e650df88310b.md) | 173 | `result-track:ae4de68bc6e6e650df88310b5ca45c5b5d57f66f0d57667b53b23d55c61313c9` |
| 10 | `def` | [IsUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/isuniform--4db7814c54bf448e4a1dad79.md) | 200 | `declaration-track:4db7814c54bf448e4a1dad79940cdfcbf4d9838a7f430e55b8cefebb77b6e311` |
| 11 | `def` | [LiftPPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/liftppreservation--26b46636d75459de8c517141.md) | 205 | `declaration-track:26b46636d75459de8c51714115151edb7a94a5fe1de142ab01c83c784cdfd777` |
| 12 | `def` | [SuppPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/supppreservation--283a9cf4bdb01fc51b0e48f2.md) | 209 | `declaration-track:283a9cf4bdb01fc51b0e48f2df4e01cb307e00148d6d0dfc85c8cc4c9d9420d3` |
| 13 | `theorem` | [supp_eq_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/supp-eq-of-isuniform--983cc71b974b06d041a1e9d7.md) | 212 | `result-track:983cc71b974b06d041a1e9d7e231f8d4ce6d621c259a7a00b39d8e75c69490e2` |
| 14 | `theorem` | [liftP_iff_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/liftp-iff-of-isuniform--09688aac5e5053ad6e492eca.md) | 220 | `result-track:09688aac5e5053ad6e492eca78f9177adf85ede501bf79e312009c1674ad0bc6` |
| 15 | `theorem` | [supp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/supp-map--c6cb58f19234334d258359b3.md) | 234 | `result-track:c6cb58f19234334d258359b3676f53b36547ead46e74ffa44b783ed35ed3c73f` |
| 16 | `theorem` | [suppPreservation_iff_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/supppreservation-iff-isuniform--4557d2889f5419fb34ca7e24.md) | 240 | `result-track:4557d2889f5419fb34ca7e2491dc0b53207d85d81ce2557869c98b72a066fdcb` |
| 17 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/supppreservation-iff-liftppreservation--2bfc954eb34c7e1d4f41cc8e.md) | 248 | `result-track:2bfc954eb34c7e1d4f41cc8ebedea0cd0240c79c0ecd6ec31db66b06829f3d8d` |
| 18 | `theorem` | [liftpPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/liftppreservation-iff-uniform--ff273d5aac5ffaff56aa822e.md) | 262 | `result-track:ff273d5aac5ffaff56aa822ee4c9e8647270fb624e1c787edc5074550e47346f` |
| 19 | `def` | [ofEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/ofequiv--4b4121ef059ff93e36a0ecb0.md) | 267 | `declaration-track:4b4121ef059ff93e36a0ecb0c7fcb6b33068585b42ecaa77a98d166c5c85f393` |
| 20 | `instance` | [MvPFunctor.instMvQPFObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2489b66b0817c86c6ebee38536bbe503c328fe899c5734ae12e77a4f65f09f1b.lean/declarations/mvpfunctor-instmvqpfobj--c7771d685070d56b8d952ef6.md) | 281 | `declaration-track:c7771d685070d56b8d952ef6e7e7d04e6b5f8e2e626b033b110fbc5aa032b35f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
