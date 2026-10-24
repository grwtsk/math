# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightCanonicalDeficitControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "034d61430d6efccbbc7f4ce143a75a9891215077",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `034d61430d6efccbbc7f4ce143a75a9891215077`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightDeficit`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/positivepolarity--a1b3782b21a9e802095070d5.md) | 15 | `declaration-track:a1b3782b21a9e802095070d584764d3b2009886d8e431737b75057ea4b3c0d4a` |
| 2 | `theorem` | [concrete_three_clause_deficit_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/concrete-three-clause-deficit-criterion--92817bba62971e57ef5b3e6d.md) | 20 | `result-track:92817bba62971e57ef5b3e6dda42d5e5deff35cdb3b2ee5181a13af0c0712551` |
| 3 | `theorem` | [concrete_two_clause_deficit_criterion](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/concrete-two-clause-deficit-criterion--d2ab91d16aa9b7871aa0f3e0.md) | 30 | `result-track:d2ab91d16aa9b7871aa0f3e09280725aa8b418a84e66a47d00d10389e272a109` |
| 4 | `def` | [targetFittedPinnedPrimeCoefficient](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/targetfittedpinnedprimecoefficient--501d54f942e4dd140b7915ab.md) | 40 | `declaration-track:501d54f942e4dd140b7915abf663bf638b524d90c6c0ece83bf5a867326656aa` |
| 5 | `theorem` | [targetFittedPinnedPrimeCoefficient_nonnegative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/targetfittedpinnedprimecoefficient-nonnegative--0f099a9abfb1dcda696a8ab4.md) | 45 | `result-track:0f099a9abfb1dcda696a8ab48010532cb473a9ffbfaa9357199c6587e7553de7` |
| 6 | `theorem` | [targetFittedPinnedPrimeCoefficient_response_eq](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/targetfittedpinnedprimecoefficient-response-eq--c44dc41aa0812deef0db1062.md) | 56 | `result-track:c44dc41aa0812deef0db10621a74a028c4db4a8fc3784816df2da2610647d64c` |
| 7 | `theorem` | [targetFittedPinnedPrimeCoefficient_deficit_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/targetfittedpinnedprimecoefficient-deficit-zero--4929cd6fcaffa5ff32035527.md) | 74 | `result-track:4929cd6fcaffa5ff32035527128d0c2f8b07665560093d3ece2b6905748aa60d` |
| 8 | `def` | [hostileTargetFittedRule](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/hostiletargetfittedrule--2d0f48bd6746272428a57e7f.md) | 85 | `declaration-track:2d0f48bd6746272428a57e7f63507474bf2431182a4264dc7744c2803a0b7f74` |
| 9 | `theorem` | [hostileTargetFittedRule_deficit_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/hostiletargetfittedrule-deficit-zero--5b97401ab909dd0351ac9774.md) | 95 | `result-track:5b97401ab909dd0351ac9774e508429b45ea26f9a8d7729791695f5df60e9845` |
| 10 | `def` | [requiredCoefficientRuleObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/requiredcoefficientruleobligations--4ceacc7c8e47e57b9a0d1ac3.md) | 107 | `declaration-track:4ceacc7c8e47e57b9a0d1ac32bcefe1a89dd0b95a2013adf8e7e2151f2a0dd31` |
| 11 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalDeficitControls.lean/declarations/prohibitedpromotions--5e47e1219684983feed849e1.md) | 115 | `declaration-track:5e47e1219684983feed849e1aa4b60966a5dc3d1cab49219aac2205208a436e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
