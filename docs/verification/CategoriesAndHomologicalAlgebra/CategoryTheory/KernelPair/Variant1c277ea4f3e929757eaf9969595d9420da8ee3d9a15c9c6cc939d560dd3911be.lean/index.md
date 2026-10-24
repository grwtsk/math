# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelPair.Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bb8b0c25ad583e045115e106b98c78685049f8a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bb8b0c25ad583e045115e106b98c78685049f8a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/iskernelpair--09b5f0efac060ac83343d21e.md) | 51 | `declaration-track:09b5f0efac060ac83343d21e6e790b45d5cb289b536c7920874634ef085f0ba2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/instance--b73dbb6b524147f57a54789a.md) | 57 | `declaration-track:b73dbb6b524147f57a54789ab9cafd0c9eec9496d0fc98649cd7d1306d306644` |
| 3 | `theorem` | [id_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/id-of-mono--b94d5612edc243e8402f26c2.md) | 64 | `result-track:b94d5612edc243e8402f26c29187a257d18f4fafb77969abcb019ff15b0979e5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/instance--0015f77ebbdb064095fe3719.md) | 67 | `declaration-track:0015f77ebbdb064095fe371975593fd3024f68a56e72595adeac140b4811f0f1` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/lift--02c5716e31563d4e391bc371.md) | 77 | `declaration-track:02c5716e31563d4e391bc371e618103e52b4a11bf131fc1299bdf5a6fce2f0ff` |
| 6 | `lemma` | [lift_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/lift-fst--cb512374abf2f27831aa5f28.md) | 82 | `result-track:cb512374abf2f27831aa5f28913d95a67a3b78cc76ecad3d2e213efbb3f5b541` |
| 7 | `lemma` | [lift_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/lift-snd--671483710e96f695fcd83d2f.md) | 87 | `result-track:671483710e96f695fcd83d2feb074528c9a4430921e2da902508793af062334a` |
| 8 | `def` | [lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/lift--aa47d2e2a340861665c819a7.md) | 95 | `declaration-track:aa47d2e2a340861665c819a7f5e8d270bed245321dfdfe2a0498da7e534f6291` |
| 9 | `theorem` | [cancel_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/cancel-right--0d1bb5b7da0d8f95a23f1995.md) | 105 | `result-track:0d1bb5b7da0d8f95a23f19957bf7c6c95df87e8d267e26162996ecbebeb625d2` |
| 10 | `theorem` | [cancel_right_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/cancel-right-of-mono--a94b30f60c98e08187ff1737.md) | 124 | `result-track:a94b30f60c98e08187ff1737f9a9b37ede61e8c3625271a486f7e39a533a3700` |
| 11 | `theorem` | [comp_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/comp-of-mono--7051bbe75923be219037fba5.md) | 132 | `result-track:7051bbe75923be219037fba53868d72a1be58fdc520ddd0aa4afbc8b3fd21df1` |
| 12 | `def` | [toCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/tocoequalizer--c8a02a4cfb9ad3b179786dec.md) | 149 | `declaration-track:c8a02a4cfb9ad3b179786dec7a452772494a8a3e1a7235dc4ff340384f591949` |
| 13 | `theorem` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/pullback--9fcfc94a29aab352341777eb.md) | 163 | `result-track:9fcfc94a29aab352341777ebd35b15e4c21c6c2462aec79a78a4cee995a1bbfe` |
| 14 | `theorem` | [mono_of_isIso_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/mono-of-isiso-fst--49470d0153ced1076a4cef5d.md) | 189 | `result-track:49470d0153ced1076a4cef5d1f1a780278151f2c12f47922e9f69c5512abaf9e` |
| 15 | `theorem` | [isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/isiso-of-mono--2eaf57d8e928a3984242cb49.md) | 198 | `result-track:2eaf57d8e928a3984242cb490202f7ab88761d4788207a9e76fc0d90dcd2f1ef` |
| 16 | `theorem` | [of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant1c277ea4f3e929757eaf9969595d9420da8ee3d9a15c9c6cc939d560dd3911be.lean/declarations/of-isiso-of-mono--fcb1794d7d948824213a3788.md) | 206 | `result-track:fcb1794d7d948824213a3788fc35f604631032d31cbbd4898031268cd31ac53d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
