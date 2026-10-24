# Verification target: GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9d05c84f041f3bb0151e251e711a92dc6c366ee",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9d05c84f041f3bb0151e251e711a92dc6c366ee`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mertensSquareEnergy_le_of_powerBound](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/declarations/mertenssquareenergy-le-of-powerbound--b06e62a2860129647c6fe607.md) | 30 | `result-track:b06e62a2860129647c6fe607d7f7ac9df8dcfaf8d09b0ae584ed0dd55506ca02` |
| 2 | `theorem` | [mertensSquareEnergyPowerSaving_of_mertensPowerBound](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/declarations/mertenssquareenergypowersaving-of-mertenspowerbound--97b9e2a6133b48cd0954b82f.md) | 154 | `result-track:97b9e2a6133b48cd0954b82fd2a9538c6711892575419e735b423433b3238640` |
| 3 | `theorem` | [criticalBoundary_of_mertensPowerBound_viaSquareEnergy](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/declarations/criticalboundary-of-mertenspowerbound-viasquareenergy--b22bf906d9fbe5101d2b2df6.md) | 175 | `result-track:b22bf906d9fbe5101d2b2df6b7d6383239c0a08ca4c57102f66515f1055df29f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
