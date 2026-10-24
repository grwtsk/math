# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mobius.Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8a77bfab65bec2f57126351da12a8b0ba29980f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8a77bfab65bec2f57126351da12a8b0ba29980f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.EulerProduct` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteMobiusWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finitemobiuswindow--22805114133931ea80f6b4b9.md) | 24 | `declaration-track:22805114133931ea80f6b4b987663733650ca9ded38da84b244f10953d3255a8` |
| 2 | `theorem` | [finite_mobius_window_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finite-mobius-window-sound--a949dbb244ce61ccd1ca853e.md) | 32 | `result-track:a949dbb244ce61ccd1ca853ee860fad27444cb93e8b06872290cfb63f176e907` |
| 3 | `def` | [FiniteMobiusWindow.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finitemobiuswindow-toarithmeticpayload--ce4324a1e2f206c4cdcb1cc2.md) | 38 | `declaration-track:ce4324a1e2f206c4cdcb1cc2269c67c753b38ac56782c5f7414f4ce2b8334ef1` |
| 4 | `theorem` | [finiteMobius_toPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finitemobius-topayload-weight--33bc207d2831d9b894165544.md) | 50 | `result-track:33bc207d2831d9b894165544906a2d14a4b4e7a509b79a5adab461206a98bf47` |
| 5 | `theorem` | [finiteMobius_toPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finitemobius-topayload-support--88db701a4d75b578f58a9cd1.md) | 57 | `result-track:88db701a4d75b578f58a9cd12f2517535853e839cc28ac524fdb97c4136d1746` |
| 6 | `def` | [FiniteMobiusWindowProvesAnalyticIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finitemobiuswindowprovesanalyticidentity--aaf240904875d64b5b9fa4e8.md) | 65 | `declaration-track:aaf240904875d64b5b9fa4e8152ae52d1e4ee1546f2616fc17845dbc04e55616` |
| 7 | `theorem` | [finite_mobius_window_not_analytic_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mobius/Variant40c7082157d75580812a8e216bcafd2d0a730685567fd33bc5d8d82920614932.lean/declarations/finite-mobius-window-not-analytic-identity--31b4812527f730376400e675.md) | 69 | `result-track:31b4812527f730376400e67511e7c7f6e698748ce9312f5552ea9941602ebe74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
