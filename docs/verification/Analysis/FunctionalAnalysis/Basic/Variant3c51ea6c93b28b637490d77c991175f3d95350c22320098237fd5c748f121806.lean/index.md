# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Basic.Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ca7e9e3e158786edfcfba8c293e99a476bfeecc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ca7e9e3e158786edfcfba8c293e99a476bfeecc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Slope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/macro-rules--b8a6e78036b2d500480cf07c.md) | 38 | `declaration-track:b8a6e78036b2d500480cf07ca499fd77e55b5db08e65a226465474e24c02d5ab` |
| 2 | `theorem` | [strictConvexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/strictconvexon-exp--de093668a43817d56c7dc884.md) | 46 | `result-track:de093668a43817d56c7dc884d86c34721fd41943fb34197e8d9a3c48b994855e` |
| 3 | `theorem` | [convexOn_exp](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/convexon-exp--c2c90495a0bfee1972cc2d09.md) | 69 | `result-track:c2c90495a0bfee1972cc2d09a5b51d1b73614701f7bcf21a890ac835374e9b97` |
| 4 | `theorem` | [convexOn_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/convexon-pow--ba19167f1016f380d3e2bf07.md) | 77 | `result-track:ba19167f1016f380d3e2bf0793d8608fd0cf869ba3a4b53daf2eec43591d562c` |
| 5 | `theorem` | [Even.convexOn_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/even-convexon-pow--6211190ba9249a59c97a8f43.md) | 103 | `result-track:6211190ba9249a59c97a8f430abb17a78ab6e61017d4a7445a8e56ce5f97988b` |
| 6 | `theorem` | [convexOn_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/convexon-zpow--3f53e820a9eee5eb66f1946d.md) | 125 | `result-track:3f53e820a9eee5eb66f1946d7cb1e47c2d890c9dec18d548576f0587ae67bdb5` |
| 7 | `theorem` | [strictConcaveOn_log_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/strictconcaveon-log-ioi--aa5df70083cec4ca4ec337c4.md) | 156 | `result-track:aa5df70083cec4ca4ec337c464f0521933224a8f82782aeebb2133c27856dd75` |
| 8 | `theorem` | [one_add_mul_self_lt_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/one-add-mul-self-lt-rpow-one-add--9aa543daa38542495d44aa58.md) | 188 | `result-track:9aa543daa38542495d44aa58ee7276fea0a09b650f7909767263901d9b8073ad` |
| 9 | `theorem` | [one_add_mul_self_le_rpow_one_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/one-add-mul-self-le-rpow-one-add--22d80490c81f94b9f85c5504.md) | 222 | `result-track:22d80490c81f94b9f85c5504839af3545fbfb4be309950c198812344d711880c` |
| 10 | `theorem` | [strictConvexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/strictconvexon-rpow--96253ed145a90ccd05eb7b2e.md) | 235 | `result-track:96253ed145a90ccd05eb7b2e8681d8dfcb4dea17b4e91fedeba474c76222052b` |
| 11 | `theorem` | [convexOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/convexon-rpow--5aec5ac0e01c848bb29a4ba9.md) | 276 | `result-track:5aec5ac0e01c848bb29a4ba98d19ec086ecd3b2cffdc095cc02f5b316929625e` |
| 12 | `theorem` | [strictConcaveOn_log_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/declarations/strictconcaveon-log-iio--4da94e003a370a412b0d1982.md) | 282 | `result-track:4da94e003a370a412b0d19822f3b45bca76665abffddc42fd6a3d52d704e5602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
