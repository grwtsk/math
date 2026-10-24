# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mobius.Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "713236f41cba08ed1080e38831f186fc506ffb35",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `713236f41cba08ed1080e38831f186fc506ffb35`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.EulerProduct` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteMobiusWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finitemobiuswindow--202aa11a57042d89501e9fc0.md) | 16 | `declaration-track:202aa11a57042d89501e9fc0d449ce7445102625fd2ef88aac5a957c06297588` |
| 2 | `theorem` | [finite_mobius_window_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finite-mobius-window-sound--d27710db30b1983f02a1beba.md) | 24 | `result-track:d27710db30b1983f02a1beba5ecc105a3e01067b57f9af578110417df24c6eb5` |
| 3 | `def` | [FiniteMobiusWindow.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finitemobiuswindow-toarithmeticpayload--09abf1097ae6c2bdc247caac.md) | 30 | `declaration-track:09abf1097ae6c2bdc247caac8d8dae44d54ff7c1eb238cdd4f97cccbe16fda92` |
| 4 | `theorem` | [finiteMobius_toPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finitemobius-topayload-weight--32535a947523c9e628f0f0a1.md) | 42 | `result-track:32535a947523c9e628f0f0a1af642743256c3b7a53cbce709b593cb6d9446545` |
| 5 | `theorem` | [finiteMobius_toPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finitemobius-topayload-support--fd1e2119e9aef2ee4f5a6d99.md) | 49 | `result-track:fd1e2119e9aef2ee4f5a6d995815cdd5cdea52117a11c0f999f4538a0dc62114` |
| 6 | `def` | [FiniteMobiusWindowProvesAnalyticIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finitemobiuswindowprovesanalyticidentity--c3085ea53d27fd88aa98f437.md) | 57 | `declaration-track:c3085ea53d27fd88aa98f43742f329c098da42b187442a3691cfd6b1bd9fe02b` |
| 7 | `theorem` | [finite_mobius_window_not_analytic_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b.lean/declarations/finite-mobius-window-not-analytic-identity--32d1b82e4724fbff616373d1.md) | 61 | `result-track:32d1b82e4724fbff616373d195e2b65bd51ed560b30d98566a2076cf5e8dccfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
