# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightRatioSandwichControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30635376ff2ceda7cb02fda322be89aac999d669",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30635376ff2ceda7cb02fda322be89aac999d669`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concrete_dyadic_bertrandFloor_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/concrete-dyadic-bertrandfloor-positive--d1c5c42192b432a8afff609c.md) | 15 | `result-track:d1c5c42192b432a8afff609c00ae26810289be5a1d505d48aea12ada6ac8951a` |
| 2 | `theorem` | [concrete_dyadic_bertrandFloor_le_amplitude](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/concrete-dyadic-bertrandfloor-le-amplitude--34831b29d55d875967e3fd35.md) | 21 | `result-track:34831b29d55d875967e3fd35abdaf98c321c0288860c483448239a05a2d5713e` |
| 3 | `theorem` | [concrete_dyadic_amplitude_ceiling](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/concrete-dyadic-amplitude-ceiling--2ac19a7cc22a29afa8dcaa80.md) | 30 | `result-track:2ac19a7cc22a29afa8dcaa80c3f57295cd93aba31fca317fa577b9bd750eb691` |
| 4 | `theorem` | [concrete_dyadic_requiredCapacity_sandwich](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/concrete-dyadic-requiredcapacity-sandwich--946d69dadc152eab2ccf6da6.md) | 43 | `result-track:946d69dadc152eab2ccf6da6c2c1d936e84a402b77f56f8b585b3aa71f9dfde6` |
| 5 | `theorem` | [concrete_dyadic_bertrandMajorant_eq_cubic](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/concrete-dyadic-bertrandmajorant-eq-cubic--409cb645e4df826ebea8d111.md) | 63 | `result-track:409cb645e4df826ebea8d111cdaa85cf497a1966fb512a219ca8cc249c317455` |
| 6 | `def` | [requiredRatioSandwichObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/requiredratiosandwichobligations--c79f0300b3f2d942c79450b6.md) | 74 | `declaration-track:c79f0300b3f2d942c79450b674df2e8eac55f37c3c762b2650a5feb0e73245f1` |
| 7 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightRatioSandwichControls.lean/declarations/prohibitedpromotions--53a97920f3b24963d6257998.md) | 82 | `declaration-track:53a97920f3b24963d62579987d94076f3eb1f2f57f12ec979462b06f7395299e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
