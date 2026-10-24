# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mobius.Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fc56c36337e880cdc1ec5e392defa014c5447a4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fc56c36337e880cdc1ec5e392defa014c5447a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean.json)

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
| 1 | `structure` | [FiniteMobiusWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finitemobiuswindow--785312cae1fafb9f7f30b3e9.md) | 16 | `declaration-track:785312cae1fafb9f7f30b3e9df09f718a68422ede7b2e5af93492ea6f9b736a0` |
| 2 | `theorem` | [finite_mobius_window_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finite-mobius-window-sound--dda5953ddaba76f14db1e78f.md) | 24 | `result-track:dda5953ddaba76f14db1e78f1ef941812c99f7e157bb62bf45bec04c9f30d283` |
| 3 | `def` | [FiniteMobiusWindow.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finitemobiuswindow-toarithmeticpayload--94095efa70569f8f9c26a472.md) | 30 | `declaration-track:94095efa70569f8f9c26a472c37e0fcbdb27cc891098fe3743244d7baf4dce0f` |
| 4 | `theorem` | [finiteMobius_toPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finitemobius-topayload-weight--7752766187aa7415221328b2.md) | 42 | `result-track:7752766187aa7415221328b29bc494b1f98b4fd15aba40349c4e47e2d6c235eb` |
| 5 | `theorem` | [finiteMobius_toPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finitemobius-topayload-support--86ecae40340f0185540955fe.md) | 49 | `result-track:86ecae40340f0185540955fe2eaf2a46fd41bb4cec38567c86c53493008e767a` |
| 6 | `def` | [FiniteMobiusWindowProvesAnalyticIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finitemobiuswindowprovesanalyticidentity--0d8a86f8feb8e2e3a5b1745c.md) | 57 | `declaration-track:0d8a86f8feb8e2e3a5b1745cd5173db981793148495dc77b525635a11d8f4943` |
| 7 | `theorem` | [finite_mobius_window_not_analytic_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variantb38dd40d154c5ea1908611cc1b753243ed99a694b77edf45ef2eb4e4a20faba5.lean/declarations/finite-mobius-window-not-analytic-identity--7dcc60f7b612657bc97a5963.md) | 61 | `result-track:7dcc60f7b612657bc97a5963cf7eb3eea7a29eb0cbbddfa7131998e7ef616f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
