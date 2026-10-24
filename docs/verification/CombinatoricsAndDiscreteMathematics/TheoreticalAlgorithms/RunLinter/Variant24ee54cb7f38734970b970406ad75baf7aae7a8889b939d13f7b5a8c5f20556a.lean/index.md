# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RunLinter.Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbed3a7b1bdccc7b345c6c5a9e030c24eca70c40",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbed3a7b1bdccc7b345c6c5a9e030c24eca70c40`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 1; external provider; requires a separately pinned dependency.
- `Batteries.Data.Array.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Lake.CLI.Main` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [NoLints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/nolints--7ea051d748bfaa267cd319ed.md) | 9 | `declaration-track:7ea051d748bfaa267cd319ed0401c30b52f1b073f3f02913762fb383d19d24ee` |
| 2 | `def` | [readJsonFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/readjsonfile--54dba018f3b52997100cb9cb.md) | 12 | `declaration-track:54dba018f3b52997100cb9cb6c4f9201024451a329505819763e334f9f956263` |
| 3 | `def` | [writeJsonFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/writejsonfile--df4b90bb45823d75ad55587e.md) | 17 | `declaration-track:df4b90bb45823d75ad55587e563f8d69cd1f98deb8ba8fba58dc65aa9910fc85` |
| 4 | `def` | [resolveDefaultRootModules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/resolvedefaultrootmodules--2770923cb5d78b67ef9960a1.md) | 23 | `declaration-track:2770923cb5d78b67ef9960a1f40d108dfa4e8cae87cede9f2ce80899c958ce60` |
| 5 | `structure` | [LinterConfig](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/linterconfig--4c4e9ece5e90b390af316418.md) | 41 | `declaration-track:4c4e9ece5e90b390af316418a65cc649a0762ca4e8b291508be36a1c17e7d5b9` |
| 6 | `def` | [Except.consError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/except-conserror--bddc622351857ef0242bb596.md) | 51 | `declaration-track:bddc622351857ef0242bb59682624451ecbc3f5b3cfd85ec280f7887ebf1fa26` |
| 7 | `def` | [parseLinterArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/parselinterargs--fc4c9e269b049de3b356818c.md) | 61 | `declaration-track:fc4c9e269b049de3b356818c46af8af2c2e25ac310fcb3a68cf65e76355ff593` |
| 8 | `def` | [determineModulesToLint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/determinemodulestolint--4c20603d7006a638b468edce.md) | 89 | `declaration-track:4c20603d7006a638b468edcebf8970b8c39ccba2a91586cec09dac562430e164` |
| 9 | `def` | [runLinterOnModule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/runlinteronmodule--bd2c1c35ba171f7054288b32.md) | 101 | `declaration-track:bd2c1c35ba171f7054288b3206988ef62a38a1924fcf880d4c0c63256f3bdf67` |
| 10 | `def` | [main](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/declarations/main--e2455c08a01c62aee4f70c5b.md) | 196 | `declaration-track:e2455c08a01c62aee4f70c5b445b042f6416e1e800b3698ff3c8df566b23019b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
