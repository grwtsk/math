# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ProperPowerTransport.Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0837fef432f3e4c3e640a4b5f14d07b6a8ebb1f7",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0837fef432f3e4c3e640a4b5f14d07b6a8ebb1f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/poweronset--2572ee62704eb5bf38048788.md) | 17 | `declaration-track:2572ee62704eb5bf380487887972df0a508986f962b680ee13d65ae111369d9f` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/powerweight--e2fd9866af82774bdd6e6c64.md) | 20 | `declaration-track:e2fd9866af82774bdd6e6c6487b035c78fa592d2b9387843df815f1d1fc6c047` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom--85f36a2052e1ea68c71f6f47.md) | 23 | `declaration-track:85f36a2052e1ea68c71f6f47f7ce289ffcf3dcb33a6d6f85ab7e3a3a79e940e8` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail--2993443da1a7f23fc2c49355.md) | 26 | `declaration-track:2993443da1a7f23fc2c49355a46339d552ea3e1f36d3bb8eb2b68074f45b37b7` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/poweronset-pos--4a9f8d468dbe93a9c8f8296d.md) | 29 | `result-track:4a9f8d468dbe93a9c8f8296d35180427aa5a37ee12f4af6749713dfa6fc7e14c` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/powerweight-nonneg--312944971ddd6bae6c8d1e3b.md) | 33 | `result-track:312944971ddd6bae6c8d1e3b9ae11700b6526e8af2238a400c3892e2edf9f4e9` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom-nonneg--6a120dd91a393d3cd5189e9a.md) | 38 | `result-track:6a120dd91a393d3cd5189e9af7371574bbbf37b9a0ab0abbf847a3d6f1653a78` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom-measurable--0c8c71120647b9df709ed4dc.md) | 42 | `result-track:0c8c71120647b9df709ed4dce6da3b53eb224199ff90d265e28488c9147446b8` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom-integrable--25a425fb828a49ef2def7a56.md) | 46 | `result-track:25a425fb828a49ef2def7a5609644ed63cba3baef77bd547db67760db73c6fd9` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom-integral--d4cc6d3ed75e41e08aa28a2a.md) | 53 | `result-track:d4cc6d3ed75e41e08aa28a2ac5924a18b099b3c4c0785206a5f13d438b22b320` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom-eq-omitted--f0827d112b8bd91ac4d26141.md) | 61 | `result-track:f0827d112b8bd91ac4d26141349c2b46447a1518cffd1aa9719128c2c870bf2e` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsetatom-le-zeromoment--e59e00e8d970fe312b7cc851.md) | 69 | `result-track:e59e00e8d970fe312b7cc851da08c4591d31b3c3e8d53c042a7198950a99cafa` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-summable--0561c72d967405e755d1b843.md) | 76 | `result-track:0561c72d967405e755d1b843601111f1a8ec1e151c7dbbd6010dc3b904b1e5c6` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-nonneg--7ccfb6d1e29271d8df8bf556.md) | 81 | `result-track:7ccfb6d1e29271d8df8bf556606f7c2d029edcbe99dc52853d2d972ddcf2acf6` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-measurable--638d9b478c85a69bf4025122.md) | 84 | `result-track:638d9b478c85a69bf4025122b7d525694975cdda3ac141783afbc733cd9ea6db` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-eq-indicator--93e6b1924649e553615aa1a6.md) | 87 | `result-track:93e6b1924649e553615aa1a6a8562086adadec870eea9766510396b22a94631d` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-lintegral--5a1a79a48de057a121d37099.md) | 97 | `result-track:5a1a79a48de057a121d370999ea113b63ad2e7d9f424ab8c9ade1914b95c2db2` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-integrable--7f847b292de149e10c7e5d23.md) | 121 | `result-track:7f847b292de149e10c7e5d2353d95eccc71fb416502aa18ba4eeaa9800a96ddb` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/positiveonsettail-integral--c9cc8fc29586de9a84cfdbe0.md) | 127 | `result-track:c9cc8fc29586de9a84cfdbe0e6d4fa654bcf3d5f2462fcde845fb03e94fe4c8e` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/omittedonsettail-integrable-positive--51c66dd99f496a92602e856b.md) | 134 | `result-track:51c66dd99f496a92602e856b168e60b883bdc52178a78a9b30bf7a0efbd176df` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/omittedonsettail-integral-eq-b1--fea90f1a6d3b65b8bef98455.md) | 139 | `result-track:fea90f1a6d3b65b8bef984550a5445b8ffec0b87d627ba199a8a72415d20db85` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetatom--425381da9bddf2e31bc6ed81.md) | 145 | `declaration-track:425381da9bddf2e31bc6ed81e7a1053a80f190997e487e347b33d464ac2a2111` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetprefix--db8a59c23e533f9700d2066f.md) | 148 | `declaration-track:db8a59c23e533f9700d2066f1e01149cf88eb7f57d84e566c1ffb450b67f1bcc` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetatom-nonneg--fbb707e9577938eb4af7ffb8.md) | 151 | `result-track:fbb707e9577938eb4af7ffb81d8d99034e194fdec78c60a132c037e2245c356d` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetatom-le-zeromoment--85ce6ea19c1a5665cca5f6af.md) | 158 | `result-track:85ce6ea19c1a5665cca5f6af42530c363211245fac0b0c1fbdf9ae2f81422dbf` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetprefix-summable--4ff6fe53a5d6a6f73efbfd33.md) | 165 | `result-track:4ff6fe53a5d6a6f73efbfd3330b96a61402d16759e6fd6ea63207709f050da1d` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetatom-add-omitted--36ce5e6d9c11176e17a16c45.md) | 170 | `result-track:36ce5e6d9c11176e17a16c45a3197aa9ac9dcc27c045f9a7d62dca8dd105081a` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetprefix-add-tail--bfb3fcd67ced312cdc43f8d5.md) | 177 | `result-track:bfb3fcd67ced312cdc43f8d532aa738ba3292f76c49bf49632f75dcb4176197f` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/properpowermoment-sub-closedprefix--5e9af279cf72b51fd2b75abc.md) | 184 | `result-track:5e9af279cf72b51fd2b75abc2df0b03b951b6babc4d6dc48259b6b2854af1dcb` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetatom-touching--76602a823e30f73e2447ac13.md) | 188 | `result-track:76602a823e30f73e2447ac13efe9361b2af695822002f30d8ac1a9b9f2a312a7` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/poweronset-ge-first--5a564f3d217af6ee960d9278.md) | 193 | `result-track:5a564f3d217af6ee960d92784d447c6197ae490cf1707dd95fdf9ce0324ebe22` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/closedonsetprefix-below-first--71edb2f5ce573f09681488b3.md) | 200 | `result-track:71edb2f5ce573f09681488b30a900bf66c4e3a66b6d83d86773f337b46a89e3a` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/declarations/omittedonsettail-below-first--ddd7f43fe52f2296f6581641.md) | 208 | `result-track:ddd7f43fe52f2296f6581641c6f3a27555daf0159bd267e8509961adb75f75b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
