# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightFeatureNormControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19ed0372fe8c62d29aa36e7e016d0433fccccb0d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19ed0372fe8c62d29aa36e7e016d0433fccccb0d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeight`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/positivepolarity--b3578f5c0fd219f311b4d964.md) | 16 | `declaration-track:b3578f5c0fd219f311b4d96453bee8aab4e8eaf6df381134d562b52b7fc1c7e6` |
| 2 | `theorem` | [dyadic_prime_coefficient_uniform_bound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/dyadic-prime-coefficient-uniform-bound--78d89e3b4ec9e95fce3174d0.md) | 21 | `result-track:78d89e3b4ec9e95fce3174d02d80044188bc584525bc53193e2512307aa977a6` |
| 3 | `theorem` | [concrete_three_clause_pinned_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/concrete-three-clause-pinned-criterion--b841fcf76c78990f224baecf.md) | 28 | `result-track:b841fcf76c78990f224baecf0554cee1e030318eaf1b4165db83dfee2858e5d5` |
| 4 | `theorem` | [concrete_two_clause_pinned_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/concrete-two-clause-pinned-criterion--dfbc4dcfe3db10190c600135.md) | 35 | `result-track:dfbc4dcfe3db10190c60013599e7b788b12e8450e08b5978d8ada53a18d57386` |
| 5 | `def` | [zeroPinnedPrimeWeightStage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/zeropinnedprimeweightstage--b52f57e237aef1aba36d5511.md) | 44 | `declaration-track:b52f57e237aef1aba36d551185799f3ce547c442be08467a33389d6a5d01ad20` |
| 6 | `theorem` | [zeroPinnedPrimeWeightStage_response](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/zeropinnedprimeweightstage-response--2fd540372c96b34b4630d336.md) | 50 | `result-track:2fd540372c96b34b4630d3368467a010e4bae1dee3d20f774d4a89280738de79` |
| 7 | `theorem` | [zero_pinned_stage_not_source_majorant](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/zero-pinned-stage-not-source-majorant--41b277fb8e19e72e6617b777.md) | 59 | `result-track:41b277fb8e19e72e6617b77705e70694fc1e2d79f490a65796535ae84f56b5c3` |
| 8 | `def` | [completedSourceChannels](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/completedsourcechannels--ed731cf99f7c12f54b6581b5.md) | 72 | `declaration-track:ed731cf99f7c12f54b6581b5139ce67c52a9d9f6890a57ab252a8f5590ed9bba` |
| 9 | `def` | [requiredAnalyticObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/requiredanalyticobligations--d6ff827a12d06a38c19edba6.md) | 80 | `declaration-track:d6ff827a12d06a38c19edba69f7e988a2f65590aeba4c640d3583509c1bb9f0f` |
| 10 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean/declarations/prohibitedpromotions--85422a8afdbf94a2aa631608.md) | 88 | `declaration-track:85422a8afdbf94a2aa631608e9af1a796a7ddcda368b20c1ec83cb17a441b066` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
