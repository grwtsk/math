# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LintStyle.Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77861e452bb28d6b7bd87abecc9e2f30fafdd60d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77861e452bb28d6b7bd87abecc9e2f30fafdd60d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.CLI.Main` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Data.String.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.TextBased` — import line 10; external provider; requires a separately pinned dependency.
- `Cli.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/findimports--773a5dcd1bace2aef86b25cb.md) | 29 | `declaration-track:773a5dcd1bace2aef86b25cbf051c04618abd851dc35cc617687484f799f4af9` |
| 2 | `def` | [explicitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/explicitimports--e0ba99437f87b2f8e87a8850.md) | 34 | `declaration-track:e0ba99437f87b2f8e87a8850d25f3ff1ffe83efba6a1ae2922222f2d43d74857` |
| 3 | `def` | [eraseExplicitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/eraseexplicitimports--f048b6908b41e9392ca8acd4.md) | 37 | `declaration-track:f048b6908b41e9392ca8acd4d8cf61e8434aaf39d5f2a567063364683b96229f` |
| 4 | `def` | [getWorkspaceRoot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/getworkspaceroot--98007a2f71e46a0fe063d65e.md) | 41 | `declaration-track:98007a2f71e46a0fe063d65e13ddd531cae25381d64c929a707449a855060dcb` |
| 5 | `def` | [toLeanOptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/toleanoptions--37e3212ce82c76b83d69420c.md) | 49 | `declaration-track:37e3212ce82c76b83d69420c05562b546c8ee4a3195bfcc38b985c47e6ff2ebd` |
| 6 | `def` | [getLakefileLeanOptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/getlakefileleanoptions--5b63b7c7ae383df7a469a639.md) | 65 | `declaration-track:5b63b7c7ae383df7a469a639982e5c706fe7bf5db7fdace0cd3bda1a208c4d32` |
| 7 | `register_option` | [linter.checkInitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/linter-checkinitimports--d3d2e544f057f0f03067dfcf.md) | 81 | `declaration-track:d3d2e544f057f0f03067dfcf315b3ef0a329848338dede4c917f0625094a93c8` |
| 8 | `def` | [missingInitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/missinginitimports--d36f48a52fd9e4c0760deae2.md) | 88 | `declaration-track:d36f48a52fd9e4c0760deae25e4d012eca82d9bfdb0c0bf6e2ed98f281d4f872` |
| 9 | `register_option` | [linter.allScriptsDocumented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/linter-allscriptsdocumented--a4a773b8a27893be40583480.md) | 132 | `declaration-track:a4a773b8a27893be405834801e5806d9b70f7e44c573275803f2bcde7e53d55d` |
| 10 | `def` | [undocumentedScripts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/undocumentedscripts--850fdd7ef7761f8a2aca2e02.md) | 136 | `declaration-track:850fdd7ef7761f8a2aca2e02cb8f83bcfde503856fecdd5aa26d1304d9f5c310` |
| 11 | `def` | [lintStyleCli](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/lintstylecli--462939a952aa6db9ad47631c.md) | 157 | `declaration-track:462939a952aa6db9ad47631cf19e0429526ee6ac315251e1150ae0d83aebe7ad` |
| 12 | `def` | [lintStyle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/lintstyle--92d5ebe41662833c5c307367.md) | 220 | `declaration-track:92d5ebe41662833c5c3073673e85fa6cd7815f2ccfd9d24896c52fe0adcc03a5` |
| 13 | `def` | [main](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9675e33d1d65316757ce62dc1a0cb28e5962c10cfa78df4d1550621aaaf3f328.lean/declarations/main--ddbf67bffed6457e2dadba8c.md) | 236 | `declaration-track:ddbf67bffed6457e2dadba8cc04ffc9fd43cfa639da0ac2d083818458f854e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
