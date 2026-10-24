# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservableRecursion.Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a21f3b0a4f1008b1bbdf9d74eb20cc97700c988c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a21f3b0a4f1008b1bbdf9d74eb20cc97700c988c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/system--8e9c9ea2093b9a7a56764c1b.md) | 35 | `declaration-track:8e9c9ea2093b9a7a56764c1b379f0cd6602f732f9975af528d21500a040bfee8` |
| 2 | `def` | [run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/run--5401b0b75e757d482b8af4cd.md) | 48 | `declaration-track:5401b0b75e757d482b8af4cd8ddc22e9f095e511fd05977194e07c55995cf52d` |
| 3 | `theorem` | [run_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/run-nil--a1b43572151052c995a124db.md) | 57 | `result-track:a1b43572151052c995a124db31fa2ee31247986de815571e30f9d0188e06927e` |
| 4 | `theorem` | [run_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/run-cons--ed261519693bc599ab014e4c.md) | 64 | `result-track:ed261519693bc599ab014e4c3ada0fce1d36b3249481664354bd86f9dc522791` |
| 5 | `theorem` | [run_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/run-append--68052fd69aa7c0c0ff3a2f89.md) | 74 | `result-track:68052fd69aa7c0c0ff3a2f89d90c8c1c110fedde68786da460cb8fe7d445a64f` |
| 6 | `theorem` | [run_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/run-singleton--2c7c1494b5a47e2872d97faa.md) | 87 | `result-track:2c7c1494b5a47e2872d97faa00e59b8d06b97d016d7195fcfec954f8588aa0b9` |
| 7 | `def` | [autonomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/autonomous--5f6162a71798644a5e2ac3e5.md) | 95 | `declaration-track:5f6162a71798644a5e2ac3e563f4d0ad38d90e9a9fb18dada268120e3a2051f4` |
| 8 | `theorem` | [autonomous_run_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant84130395ec6dbd8faef8a9b21544789da56339fba1b6a8cf16a75b1658dfb074.lean/declarations/autonomous-run-replicate--8952a9a6ed922b010a758a97.md) | 105 | `result-track:8952a9a6ed922b010a758a97c8862bb6f914b279fa775e5e96d7f7d13d75f4ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
