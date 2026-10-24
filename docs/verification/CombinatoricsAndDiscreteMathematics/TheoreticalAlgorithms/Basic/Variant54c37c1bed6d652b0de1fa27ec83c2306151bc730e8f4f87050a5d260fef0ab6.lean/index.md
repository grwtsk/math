# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50e719498fd8259158369647b79edd28cc5747e4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50e719498fd8259158369647b79edd28cc5747e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitOnPPrepend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/declarations/splitonpprepend--338d47db96f985b2922c4825.md) | 34 | `declaration-track:338d47db96f985b2922c48254433f962010ee903865630ae3320007b5891356e` |
| 2 | `def` | [splitOnP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/declarations/splitonp--84d8fd9db15f571bc4733720.md) | 44 | `declaration-track:84d8fd9db15f571bc473372025fd12f2bd9923a6c2647e62adaef71efbf73868` |
| 3 | `def` | [splitOnP.go](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/declarations/splitonp-go--4056279d85532cef3560dbd7.md) | 48 | `declaration-track:4056279d85532cef3560dbd7520353b2b0f798220dc35f2f945f7925b777466c` |
| 4 | `def` | [splitOnPTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/declarations/splitonptr--ec574fca201ab167b1012ad1.md) | 53 | `declaration-track:ec574fca201ab167b1012ad16053eb73740222dcc5401b2cab016d5b483cf2ef` |
| 5 | `theorem` | [splitOnP_eq_splitOnPTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/declarations/splitonp-eq-splitonptr--b324d47f296fe9d6b2a0dc1b.md) | 58 | `result-track:b324d47f296fe9d6b2a0dc1b44c9e6b307bba7743d86090fcd84e6b8e3973d99` |
| 6 | `def` | [splitOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant54c37c1bed6d652b0de1fa27ec83c2306151bc730e8f4f87050a5d260fef0ab6.lean/declarations/spliton--26d3a619dcd400d9924302a8.md) | 75 | `declaration-track:26d3a619dcd400d9924302a8d6cb6f5e1a101cc4c7089675861a8ba6e07bdcb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
