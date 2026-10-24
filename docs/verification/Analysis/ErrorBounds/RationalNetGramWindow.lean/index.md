# Verification target: GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8870dc4933603c71b20c05ccb6a6235f0017f5c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalNetGramWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8870dc4933603c71b20c05ccb6a6235f0017f5c`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalNetGramWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalNetGramWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect`](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cancelledPathDisk](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/cancelledpathdisk--6ea1cd975047f21ee22c35de.md) | 46 | `declaration-track:6ea1cd975047f21ee22c35de985bf742b38449444829a33e4c4ff94a1c7e2381` |
| 2 | `def` | [netResidualDisk](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/netresidualdisk--979b37c8fc38ed1542ed8d01.md) | 52 | `declaration-track:979b37c8fc38ed1542ed8d01ea9dc19183f3263f7febb292dbbdf0da0d5a2d88` |
| 3 | `theorem` | [shared_injection_disk_identity](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/shared-injection-disk-identity--89eb5295658e954d5b5b5dc1.md) | 57 | `result-track:89eb5295658e954d5b5b5dc1d9ab08defc15a6c280f4415ff5fb85d9c711d1f5` |
| 4 | `theorem` | [shared_injection_interval_improves](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/shared-injection-interval-improves--1d71ff8aad73c09c44a44ae6.md) | 66 | `result-track:1d71ff8aad73c09c44a44ae64e60393038958aa7208cab6532d7ee6fd1f41f98` |
| 5 | `def` | [netResidual](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/netresidual--14cb59045fbee636a0d9e284.md) | 76 | `declaration-track:14cb59045fbee636a0d9e28492877c8598728e6e438865ceda072d9be60b47c9` |
| 6 | `theorem` | [netResidual_eq_path_difference](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/netresidual-eq-path-difference--c37b98c477a528ce0266f80d.md) | 82 | `result-track:c37b98c477a528ce0266f80df4a6886ff0d722093b2a37f1eda59ae768c9b4a4` |
| 7 | `theorem` | [netResidual_eq_common_defects](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/netresidual-eq-common-defects--9d062095d2b66138f44a2501.md) | 91 | `result-track:9d062095d2b66138f44a25010099ee604cb1837bacf8e070209d215615cda8a4` |
| 8 | `theorem` | [unequal_injection_remainder](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/unequal-injection-remainder--b814ec7780d276d7718740d1.md) | 100 | `result-track:b814ec7780d276d7718740d1ea3112f3a3311d94cad259ad1bd3f7a303895574` |
| 9 | `theorem` | [source_gram_residual_contains](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/source-gram-residual-contains--9ea2fb6ee29e04a9cb0c713a.md) | 106 | `result-track:9ea2fb6ee29e04a9cb0c713a679cfb88128f2786f1cca58fef69574826f1dd93` |
| 10 | `theorem` | [cancelledPathDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/cancelledpathdisk-contains--63f16c362a5d0ab7f8dea0c5.md) | 114 | `result-track:63f16c362a5d0ab7f8dea0c59756a1dd6678eceafd7a9cc13b526e321dd9e964` |
| 11 | `theorem` | [netResidualDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/netresidualdisk-contains--c1c0175d5a004d3d1ba58aa7.md) | 132 | `result-track:c1c0175d5a004d3d1ba58aa78409b666b9d985a55acc0e9a5b40428f86f2b19a` |
| 12 | `theorem` | [net_readout_lower](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/net-readout-lower--c046b666323a087d1811e6dd.md) | 144 | `result-track:c046b666323a087d1811e6ddc4c8d7a8977588a95bb0255eb09c4a16143c2ed1` |
| 13 | `def` | [gramNetForcing](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/gramnetforcing--a6d5322a6fe38b5559cf5a85.md) | 159 | `declaration-track:a6d5322a6fe38b5559cf5a858fb56d1294e8b7946511564cd27f7b59b287590d` |
| 14 | `theorem` | [gramNetForcing_eq_defects](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/gramnetforcing-eq-defects--c39b805fd78dc1442d469764.md) | 166 | `result-track:c39b805fd78dc1442d4697641a8fb413bc1752ad9254ffe6e3362367ad4d0953` |
| 15 | `theorem` | [gram_net_window_identity](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/gram-net-window-identity--0b5f3ae2e8622175f523290f.md) | 175 | `result-track:0b5f3ae2e8622175f523290f4681a9b87852f509d0436e2a315bf28875a46b67` |
| 16 | `theorem` | [no_fixed_negative_of_net_window](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/no-fixed-negative-of-net-window--b3379b1198518f762a2010d6.md) | 201 | `result-track:b3379b1198518f762a2010d64ad0bf5d9db5657624c5d79ced79fcacd06bb94f` |
| 17 | `theorem` | [shared_uncertainty_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/shared-uncertainty-fixture--5df70f9fb131449f6efdcd6c.md) | 233 | `result-track:5df70f9fb131449f6efdcd6cf843ca4f0f8ccacc7c3979ca38d809bda2614b2d` |
| 18 | `theorem` | [same_disk_distinct_values_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/same-disk-distinct-values-fixture--3fa2c0de5d82411a9558614c.md) | 240 | `result-track:3fa2c0de5d82411a9558614c5cd5d84a9bf0f4f52fd59126a469abd89820e187` |
| 19 | `theorem` | [retained_negative_forcing_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalNetGramWindow.lean/declarations/retained-negative-forcing-fixture--2ee5b3fcba9fdfe2d9a652da.md) | 246 | `result-track:2ee5b3fcba9fdfe2d9a652dacc6d1436245d921797ea977e465a1fe335b79da2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
