# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LawfulFix.Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b9fd5980f7eee71bdae460c683c991e199f6c2f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b9fd5980f7eee71bdae460c683c991e199f6c2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Stream.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Fix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LawfulFix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/lawfulfix--3de5047069d8617309aac9ae.md) | 43 | `declaration-track:3de5047069d8617309aac9aeffae3e8ab9c9f45655c10dc8dbe0106a2c1127fb` |
| 2 | `theorem` | [approx_mono'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/approx-mono--9329c0999f0ac332dd8a18e3.md) | 54 | `result-track:9329c0999f0ac332dd8a18e39c7831f44e38ea467148ef5de0c79bce2c0837cd` |
| 3 | `theorem` | [approx_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/approx-mono--4c38961157e294d6631a9c2d.md) | 59 | `result-track:4c38961157e294d6631a9c2d994637528498706d1fbf15007ca2f732f48c4294` |
| 4 | `theorem` | [mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/mem-iff--e2a97572c7549e9838a81f63.md) | 66 | `result-track:e2a97572c7549e9838a81f63ddb10dec1f93efc5d3bc63c8912e8a13f0a4303b` |
| 5 | `theorem` | [approx_le_fix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/approx-le-fix--2cab8ab97b8f0be37579b41d.md) | 89 | `result-track:2cab8ab97b8f0be37579b41dac2be6b497308f2bb2efe4f333d4e5c04bee1cfb` |
| 6 | `theorem` | [exists_fix_le_approx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/exists-fix-le-approx--815b07fe98c35938a3f07ca7.md) | 93 | `result-track:815b07fe98c35938a3f07ca7d466e1248fb8d3071d4eeccaf9bbf3994ea40e4c` |
| 7 | `def` | [approxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/approxchain--03793f974ed9d053606e920d.md) | 109 | `declaration-track:03793f974ed9d053606e920d7046519619e975a4015536d669582734b16249fe` |
| 8 | `theorem` | [le_f_of_mem_approx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/le-f-of-mem-approx--6b2ed7371b99b7eb5fc0f126.md) | 112 | `result-track:6b2ed7371b99b7eb5fc0f126732d639160817280dc2dabb8c8e0b09490697c7a` |
| 9 | `theorem` | [approx_mem_approxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/approx-mem-approxchain--8588456a6cbf9e46367a7582.md) | 117 | `result-track:8588456a6cbf9e46367a75823508e2c1e47cecaf67f59e02b27c9720e85e724d` |
| 10 | `theorem` | [fix_eq_ωSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/fix-eq-sup--b5c783a7bbff44f9f7d86c43.md) | 135 | `result-track:b5c783a7bbff44f9f7d86c431e2febcaf93cb86c037dac9a84b97b4e1b0438a9` |
| 11 | `theorem` | [fix_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/fix-le--74947ea29af262e61eee6541.md) | 151 | `result-track:74947ea29af262e61eee6541ed4dff8e3a16f86fdf8cb59fe3d64b4687d25ed7` |
| 12 | `theorem` | [fix_eq_ωSup_of_ωScottContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/fix-eq-sup-of-scottcontinuous--e4bb897769993322ccb92ca0.md) | 165 | `result-track:e4bb897769993322ccb92ca023c00a9d0e13a5a775cfed05120fb4e7219b5b09` |
| 13 | `theorem` | [fix_eq_of_ωScottContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/fix-eq-of-scottcontinuous--058cb1563b77eff6c7dd545b.md) | 170 | `result-track:058cb1563b77eff6c7dd545b07827380555eadea3c022081b63976ca5a6bb972` |
| 14 | `def` | [toUnitMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/tounitmono--8724384a1901944e18f26c85.md) | 191 | `declaration-track:8724384a1901944e18f26c858e1b3a5ed0e05e48b8cf1c0df696969122f5d062` |
| 15 | `theorem` | [ωScottContinuous_toUnitMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/scottcontinuous-tounitmono--9bc8da8a7027359ec1e8ad8c.md) | 195 | `result-track:9bc8da8a7027359ec1e8ad8c4892b676e7146a4760eff8eb7bd2d7f9d252a912` |
| 16 | `instance` | [lawfulFix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/lawfulfix--429eb59cdc5667265cdabf81.md) | 203 | `declaration-track:429eb59cdc5667265cdabf8183a02721cc195ffad37c881866460ddfcd02db8d` |
| 17 | `instance` | [lawfulFix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/lawfulfix--4f4e0d3a7a3f36e4216fb167.md) | 213 | `declaration-track:4f4e0d3a7a3f36e4216fb167db8eec775c923e165e72e09adba0a38c70a85b7e` |
| 18 | `def` | [monotoneCurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/monotonecurry--9bf36665e838bbb3e513190e.md) | 224 | `declaration-track:9bf36665e838bbb3e513190e1184e29b57f324f9341ba5161433ceb4a9b752b2` |
| 19 | `def` | [monotoneUncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/monotoneuncurry--ce7e5e3989eea11e692a2c43.md) | 231 | `declaration-track:ce7e5e3989eea11e692a2c4334dd98f9d05612f8dfa77ca7d37a451eee3d139c` |
| 20 | `theorem` | [ωScottContinuous_curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/scottcontinuous-curry--fb035510caeff22ef8c44d4d.md) | 240 | `result-track:fb035510caeff22ef8c44d4dfc7d4a7fcf095e69a18bbafd9b7f036f9e3c85df` |
| 21 | `theorem` | [ωScottContinuous_uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/scottcontinuous-uncurry--8bbdbb45106197c6505adb00.md) | 248 | `result-track:8bbdbb45106197c6505adb0059e83562118ad94015b48d5704539036381bfcab` |
| 22 | `instance` | [hasFix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/hasfix--40d596e84c02c2fe3bbcb3a7.md) | 260 | `declaration-track:40d596e84c02c2fe3bbcb3a7ede5effc1208aeabc43e86cc3bb0d35f9744d559` |
| 23 | `theorem` | [uncurry_curry_ωScottContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/uncurry-curry-scottcontinuous--c36c41380631d5cf3776375d.md) | 269 | `result-track:c36c41380631d5cf3776375d16d123d8a2e9a155cf7f3308c48354bdc34c70e7` |
| 24 | `instance` | [lawfulFix'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LawfulFix/Variant72ad8c356418610dd321784302fa5097cad7c823e02a54249962a5633b3a6c42.lean/declarations/lawfulfix--7c1ab8a76544547e6dea9884.md) | 277 | `declaration-track:7c1ab8a76544547e6dea98847f595f987b26afeeda1103c2dd1b727654483282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
