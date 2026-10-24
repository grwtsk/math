# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticModularityFrontier.Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e874068baf2f2d085be0e6cfd071ad202bfe306",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e874068baf2f2d085be0e6cfd071ad202bfe306`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.ArithmeticModularityAssessment` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arithmeticModularityRefinements](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/arithmeticmodularityrefinements--b31c374b6faf41aee1ae557e.md) | 16 | `declaration-track:b31c374b6faf41aee1ae557e1e2146526546fbbafbde287bb7f3360a3c556975` |
| 2 | `def` | [arithmeticModularityReportFrontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/arithmeticmodularityreportfrontier--ed13c9d7f8704091a6c175fd.md) | 29 | `declaration-track:ed13c9d7f8704091a6c175fdf64d05d15de782d75c049957ac66da78eaec36df` |
| 3 | `def` | [arithmeticModularityGenericFrontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/arithmeticmodularitygenericfrontier--c70ea67e557b7cc133f22573.md) | 34 | `declaration-track:c70ea67e557b7cc133f225739f171e954c9f99b7496e50900b8272a84fb969ee` |
| 4 | `theorem` | [arithmeticModularityRefinements_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/arithmeticmodularityrefinements-card--6f5afe24206dad2deb0d6342.md) | 38 | `result-track:6f5afe24206dad2deb0d63421eff78f40b9983abf951761c5462c1e5915b3f5e` |
| 5 | `theorem` | [arithmeticModularityReportFrontier_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/arithmeticmodularityreportfrontier-card--df958dfc92781e35c4396bbb.md) | 42 | `result-track:df958dfc92781e35c4396bbb0f96c038c06cae507c6f1be3b7bcb026eac39ed9` |
| 6 | `theorem` | [arithmeticModularityGenericFrontier_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/arithmeticmodularitygenericfrontier-card--976e173ae6e150dececde70b.md) | 46 | `result-track:976e173ae6e150dececde70b6126f52232a82692f244c6be61f3308ffb70c695` |
| 7 | `def` | [finiteFieldSquareRootRoute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/finitefieldsquarerootroute--d6cf44fd9a7faa2be0ecece1.md) | 54 | `declaration-track:d6cf44fd9a7faa2be0ecece1dce3721355724fcb1ba2a0adb5a9fd1d5992f4b9` |
| 8 | `theorem` | [finiteFieldSquareRootRoute_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/finitefieldsquarerootroute-nodup--ef6e9094c35e76a4e6deabd2.md) | 72 | `result-track:ef6e9094c35e76a4e6deabd22f3d3266b7ee954242ff21e2d2dd5491cd8575b7` |
| 9 | `theorem` | [finiteFieldSquareRootRoute_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/finitefieldsquarerootroute-length--25dab88a7aa1cb11b5218332.md) | 76 | `result-track:25dab88a7aa1cb11b5218332fdc6702c03818d21cc07491a76fe202685196109` |
| 10 | `def` | [genericArithmeticModularityVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/genericarithmeticmodularityverdict--05e901586501bf31b01b6c49.md) | 81 | `declaration-track:05e901586501bf31b01b6c4928ec961228ab3af56a066b69ccc6c8ebcbd4c313` |
| 11 | `theorem` | [genericArithmeticModularityVerdict_unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/genericarithmeticmodularityverdict-unknowns--cd63d55dd3f60f1392766625.md) | 88 | `result-track:cd63d55dd3f60f1392766625e39187c20b0523ffdc2ffa94f36a64990c3a42ee` |
| 12 | `theorem` | [genericArithmeticModularityVerdict_not_certified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/genericarithmeticmodularityverdict-not-certified--7a65a133482af7b570dafb06.md) | 95 | `result-track:7a65a133482af7b570dafb0645cdbe907c3296eefce6ba274cf15fa039c0729a` |
| 13 | `theorem` | [genericArithmeticModularityVerdict_not_refuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityFrontier/Variant5c00bb76f2eaf063faf82915d116532c06e3872e81b89636fa02876e55b5dc00.lean/declarations/genericarithmeticmodularityverdict-not-refuted--b6b128dc3754a278c949cb67.md) | 101 | `result-track:b6b128dc3754a278c949cb674e13d1eee4ee37df4c22c96255c1ad994b21f397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
