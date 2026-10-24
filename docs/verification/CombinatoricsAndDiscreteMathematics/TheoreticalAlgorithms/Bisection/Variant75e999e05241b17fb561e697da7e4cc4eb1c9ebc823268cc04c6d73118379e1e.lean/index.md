# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bisection.Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c95c9d3fdcae918c38f04dbc05af9f8c85a549b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c95c9d3fdcae918c38f04dbc05af9f8c85a549b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.RootFinding.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BisectionResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisectionresult--222bb46267ea18ee127a2581.md) | 34 | `declaration-track:222bb46267ea18ee127a258118d7830c2dc133274c0a1477977f680ebc94a8a7` |
| 2 | `def` | [candidates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/candidates--8e3943fd675a89e3cd44312a.md) | 43 | `declaration-track:8e3943fd675a89e3cd44312ae085f1945752f9768b88db2fbad1b0d9b0073280` |
| 3 | `def` | [statuses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/statuses--c71ed78d3b55a1e968a86cbd.md) | 47 | `declaration-track:c71ed78d3b55a1e968a86cbdb5cc1784afb0a63042fa2418f41e4480b264d8ff` |
| 4 | `def` | [bisectRootGo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisectrootgo--f74ee8c56efaa0daa6fc20bc.md) | 61 | `declaration-track:f74ee8c56efaa0daa6fc20bca1184df8b72b857d63ebab6f581f15eee23a2727` |
| 5 | `def` | [bisectRoot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisectroot--184480e7ce81b2f45c63f4b3.md) | 99 | `declaration-track:184480e7ce81b2f45c63f4b3e6adbd70e11788efdb2fa90a93ae743c0f34c5dc` |
| 6 | `theorem` | [checkRootStatus_noRoot_implies_excludesZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/checkrootstatus-noroot-implies-excludeszero--b2d91c28241ea575785d79cc.md) | 106 | `result-track:b2d91c28241ea575785d79ccb6909a82961ff0fb73c33d541ccfcbdebbac38f2` |
| 7 | `theorem` | [checkRootStatus_hasRoot_implies_signChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/checkrootstatus-hasroot-implies-signchange--392546bd064f4e5ba87e10ca.md) | 120 | `result-track:392546bd064f4e5ba87e10ca3f8515067b9bdd16a4e13ad91a4273ae7b38089a` |
| 8 | `def` | [BisectInv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisectinv--6752b3dbdcc4463fa5d8df78.md) | 137 | `declaration-track:6752b3dbdcc4463fa5d8df783b6a78b56cd8d26336c218860ea715b34cc7a831` |
| 9 | `def` | [SubIntervalInv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/subintervalinv--c04850ec452c53f5b5b9c9a0.md) | 141 | `declaration-track:c04850ec452c53f5b5b9c9a07fa748e0484608dc84a79c9823fe920f8b6f8bc6` |
| 10 | `theorem` | [bisect_inv_initial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisect-inv-initial--aa6cf18b6306e51f7f1e180d.md) | 145 | `result-track:aa6cf18b6306e51f7f1e180d720f3e9523e222ee2931cb498d309f752ac1a83e` |
| 11 | `theorem` | [subinterval_inv_initial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/subinterval-inv-initial--a8cc0cf6eca10556e302ec58.md) | 154 | `result-track:a8cc0cf6eca10556e302ec5822af764963fabb23cf0a39699c7830e504df0686` |
| 12 | `theorem` | [bisect_inv_cons_hasRoot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisect-inv-cons-hasroot--78f818f03e2ae820e16cbd39.md) | 163 | `result-track:78f818f03e2ae820e16cbd39ee2be0a11db9624311e012e43f4a1874857b7d67` |
| 13 | `theorem` | [bisect_inv_cons_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisect-inv-cons-other--dc10572a1f38b3191a278f1d.md) | 176 | `result-track:dc10572a1f38b3191a278f1d1e9aef0fc81fb9195abd785069fda5c149cbc6d3` |
| 14 | `theorem` | [bisect_inv_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisect-inv-append--89a64247a463f802b747a61d.md) | 189 | `result-track:89a64247a463f802b747a61d711556e9e49ce3494bd560db78c33bd57ea362b5` |
| 15 | `theorem` | [subinterval_inv_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/subinterval-inv-append--21d8c05dca61c60a4a41b4f4.md) | 199 | `result-track:21d8c05dca61c60a4a41b4f4da997ff62b49a368ee44962211b98a173f0c411d` |
| 16 | `theorem` | [subinterval_inv_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/subinterval-inv-cons--0f75fad3597e90c67fb15545.md) | 209 | `result-track:0f75fad3597e90c67fb15545efcac7bb1d68aa026ed38f745bd32b8022f3fe8c` |
| 17 | `theorem` | [bisect_subinterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisect-subinterval--122a0e5939ad7207d46739c1.md) | 223 | `result-track:122a0e5939ad7207d46739c1cca51073f534a68cfcb287601e4f3d77d1d8dc14` |
| 18 | `theorem` | [go_noRoot_not_in_output](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/go-noroot-not-in-output--dcb7d486c6a7444360d46190.md) | 246 | `result-track:dcb7d486c6a7444360d46190e5b2eb45b985c61920a66e59b403dce8d1387859` |
| 19 | `theorem` | [go_hasRoot_has_signChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/go-hasroot-has-signchange--c4ea38a9e9425706421e0ae8.md) | 339 | `result-track:c4ea38a9e9425706421e0ae82b31bf948e841d6e0db9e4366b6b5b327ec2a047` |
| 20 | `theorem` | [go_subinterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/go-subinterval--0ed259451ae301c8609f4d57.md) | 420 | `result-track:0ed259451ae301c8609f4d57c8f785e84b7eaa1c7b25da66af4711b715668525` |
| 21 | `theorem` | [bisectRoot_hasRoot_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisectroot-hasroot-correct--736a4c8b5ec873c5ad2a83b9.md) | 516 | `result-track:736a4c8b5ec873c5ad2a83b90e76792fd77bbf5ed62e3d1b875e9315f09b5813` |
| 22 | `theorem` | [bisectRoot_noRoot_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/declarations/bisectroot-noroot-correct--2d36105a5e2fa71a18cb70c8.md) | 558 | `result-track:2d36105a5e2fa71a18cb70c83de09056cfa7355a3fa6fab2e2cffd87bdefec02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
