# Verification target: GRWTSK.Analysis.SpecialFunctions.IntervalEvalDyadic.Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b`.

Source path: `GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DyadicConfig](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/dyadicconfig--fbc292174f43042232b5aa00.md) | 59 | `declaration-track:fbc292174f43042232b5aa008d63fe7a63e42a37ecf70bb2deb4ae8a8a39c6dc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/instance--d47af766b90aaffeaf2324dc.md) | 69 | `declaration-track:d47af766b90aaffeaf2324dc95a0a63f2df65e6933c73df4f68bf6fc2f47711e` |
| 3 | `def` | [DyadicConfig.highPrecision](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/dyadicconfig-highprecision--d029ddf2dfd826ae97773eeb.md) | 72 | `declaration-track:d029ddf2dfd826ae97773eeb78b0158fae94e9f9babd80f9e24c90b2cd9f2872` |
| 4 | `def` | [DyadicConfig.fast](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/dyadicconfig-fast--6537a0ebc6c7f0019c8be16d.md) | 76 | `declaration-track:6537a0ebc6c7f0019c8be16def13eee5d3c7ee44580201e015ba233a6bf50593` |
| 5 | `abbrev` | [IntervalDyadicEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/intervaldyadicenv--75da6ad81cd9427fe9a5d7df.md) | 82 | `declaration-track:75da6ad81cd9427fe9a5d7dfdeb26a3aefde28a85a55a897b2a370e6fd65eab4` |
| 6 | `def` | [toDyadicEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/todyadicenv--c4b04e38fe0b9c92dde085e9.md) | 85 | `declaration-track:c4b04e38fe0b9c92dde085e9ae26e7181b16cb80cb0e4ead64c93c9db1b9cb34` |
| 7 | `def` | [sinIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/sinintervaldyadic--9289b4486a9d79a55170beac.md) | 91 | `declaration-track:9289b4486a9d79a55170beac465b29ced86a2a86ee67621136fd936e48215b04` |
| 8 | `def` | [cosIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/cosintervaldyadic--9fddc3feb04a8f39653ab52a.md) | 97 | `declaration-track:9fddc3feb04a8f39653ab52ad8576b2f9c3cc727a56cdb31e55e8a3eda4dc457` |
| 9 | `def` | [expIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/expintervaldyadic--9be251664755f148a0aa6586.md) | 103 | `declaration-track:9be251664755f148a0aa658689efa1d5167666d7d40f21b5c9c97d93470ff5db` |
| 10 | `def` | [sinhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/sinhintervaldyadic--18631ca2682361fc66afc15f.md) | 109 | `declaration-track:18631ca2682361fc66afc15f7adcc9b100ff91c3409e607d6a7bbf290d3ed324` |
| 11 | `def` | [coshIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/coshintervaldyadic--4d51d0af320c14c2f594d81f.md) | 115 | `declaration-track:4d51d0af320c14c2f594d81feaaa93ef5a802223de902916407f8360c99fb4e7` |
| 12 | `def` | [atanIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/atanintervaldyadic--d97b09feee17feeb7e0e83dd.md) | 121 | `declaration-track:d97b09feee17feeb7e0e83dd911c69d6508865309866f4de93e9696b876d7e25` |
| 13 | `def` | [tanhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/tanhintervaldyadic--5d9cea3ea30a4bd45ff19742.md) | 127 | `declaration-track:5d9cea3ea30a4bd45ff19742ca82af335be2690cb631b43df0fa0886c16e91d2` |
| 14 | `def` | [arsinhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/arsinhintervaldyadic--6853d176fceeb9cf20bbb078.md) | 133 | `declaration-track:6853d176fceeb9cf20bbb078ec20e497472ec329cbc0dc8adb42d48de2cbe8e2` |
| 15 | `def` | [atanhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/atanhintervaldyadic--31ad9ad8c9fe69f48e7bd336.md) | 139 | `declaration-track:31ad9ad8c9fe69f48e7bd336dc2444cf4451ac25b0b8f1cfc4e240b066dd0ddd` |
| 16 | `def` | [sincIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/sincintervaldyadic--1a9af1e35d8c7b3fe6da7338.md) | 145 | `declaration-track:1a9af1e35d8c7b3fe6da7338c6e93e8302163c5395e6002249304494cf38dc75` |
| 17 | `def` | [erfIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/erfintervaldyadic--ecbe51c98f7d3f5ec3c614de.md) | 151 | `declaration-track:ecbe51c98f7d3f5ec3c614de2dc6e3fe97fb4ed29ea76a83c04b383fd0ddc1fa` |
| 18 | `def` | [invIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/invintervaldyadic--c8110ab71dfb6ce946e95fd9.md) | 157 | `declaration-track:c8110ab71dfb6ce946e95fd9539cc5f9d4655797ac9a9dd3a72ff3dabc7d8747` |
| 19 | `def` | [sqrtIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/sqrtintervaldyadic--78e7a46b405a0cc67c199c28.md) | 163 | `declaration-track:78e7a46b405a0cc67c199c285b0a83d34267dc6ae29eac2ae037e331d11c5155` |
| 20 | `def` | [logIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/logintervaldyadic--a1ca08315a2c84aa24d680bc.md) | 171 | `declaration-track:a1ca08315a2c84aa24d680bc98a256e5dd13770f39da4e161efb5780693992c5` |
| 21 | `def` | [rpowIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/rpowintervaldyadic--2c0759afb6f6febae331a51d.md) | 190 | `declaration-track:2c0759afb6f6febae331a51d3a2a046e950a145218ed8554a3c86ef59d112739` |
| 22 | `theorem` | [mem_rpowIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/mem-rpowintervaldyadic--1b04c9d3883c5c60977c1666.md) | 198 | `result-track:1b04c9d3883c5c60977c1666c5149aeec69f0d09476b3f86aa70c6069495ff16` |
| 23 | `def` | [evalIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evalintervaldyadic--79e11c38ac033cb5575ada0e.md) | 240 | `declaration-track:79e11c38ac033cb5575ada0e6975bbae7b91e569b91b704ae78cca56e67ec2e5` |
| 24 | `def` | [envMemDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/envmemdyadic--55a92ce4cdf6d2780a856c82.md) | 276 | `declaration-track:55a92ce4cdf6d2780a856c8203ec57ad6a5506d5a3ac0ca50fc2a1667973822b` |
| 25 | `def` | [evalDomainValidDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evaldomainvaliddyadic--138a123b54920ac6438ab0ef.md) | 282 | `declaration-track:138a123b54920ac6438ab0efe49392d0a572c242040b2c5d036c939782263721` |
| 26 | `def` | [checkDomainValidDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/checkdomainvaliddyadic--e65b73987fcb10e5a2313087.md) | 310 | `declaration-track:e65b73987fcb10e5a231308727a29ef91b71668b8fdd6ef95b5537a83de66e2f` |
| 27 | `theorem` | [checkDomainValidDyadic_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/checkdomainvaliddyadic-correct--50519bc49c2e2a2b6ba0a858.md) | 338 | `result-track:50519bc49c2e2a2b6ba0a8589b45947d19f0644404564b40fbf6b20e6d49d2a5` |
| 28 | `theorem` | [evalDomainValidDyadic_of_ExprSupported](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evaldomainvaliddyadic-of-exprsupported--a5eea3b2e972ba9a1c85b6f2.md) | 375 | `result-track:a5eea3b2e972ba9a1c85b6f294ef53b5a0db5196f21635226d65af26a304c6eb` |
| 29 | `theorem` | [evalIntervalDyadic_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evalintervaldyadic-correct--575f49568bcf3d738755f77d.md) | 398 | `result-track:575f49568bcf3d738755f77d85edbb7e9349ff8a4cf102410d4bd4d709814aac` |
| 30 | `theorem` | [evalIntervalDyadic_correct_withInv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evalintervaldyadic-correct-withinv--1bcedd24e990ef5f6a2a8cee.md) | 509 | `result-track:1bcedd24e990ef5f6a2a8cee91fb0dec257c69cf6b1a0d9a886997f797de77d1` |
| 31 | `def` | [evalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evaldyadic--f986ca7b7b22c121622f297c.md) | 616 | `declaration-track:f986ca7b7b22c121622f297c61da8d84cef355a595340d7089bef62c0efc575e` |
| 32 | `def` | [evalDyadicHighPrec](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evaldyadichighprec--1d5293a99826e11803c54523.md) | 620 | `declaration-track:1d5293a99826e11803c54523e07ddbf64968cd404fb33331263e2137a944bae8` |
| 33 | `def` | [evalDyadicFast](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/evaldyadicfast--b104be886538762f413c7773.md) | 624 | `declaration-track:b104be886538762f413c7773cf26f7a0e06a2386653b2d3f17313a9d9530dfa0` |
| 34 | `def` | [checkUpperBoundDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/checkupperbounddyadic--2388b7b306e5bc5f86a21c6b.md) | 630 | `declaration-track:2388b7b306e5bc5f86a21c6b986cb58a6eeee8e558970d088866a99d12b3065d` |
| 35 | `def` | [checkLowerBoundDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/checklowerbounddyadic--7514050ae98fc787c8f2db4b.md) | 635 | `declaration-track:7514050ae98fc787c8f2db4bdbcfda161aa3b53e43279299a8eaea05e8dbff04` |
| 36 | `def` | [checkBoundsDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/declarations/checkboundsdyadic--6aa6e0759508e526ff42874d.md) | 640 | `declaration-track:6aa6e0759508e526ff42874d2af907ec5bb247fffcb22134b5febfc7d3b36ae8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
