# Verification target: GRWTSK.Analysis.SourceActualTiltEnergy.Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d299570bcb4517a1a667c4931aed3ebfa70e8a3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/index.md) · [Full source](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d299570bcb4517a1a667c4931aed3ebfa70e8a3`.

Source path: `GRWTSK/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/declarations/actualunittilt--e8b2ce6bf563cd3438365dfc.md) | 21 | `declaration-track:e8b2ce6bf563cd3438365dfc7055b22d7e97b62af1d1ef019098470823d0a8b9` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/declarations/actualunittiltenergy--a04586081d51516012ace474.md) | 25 | `declaration-track:a04586081d51516012ace47457810920a1bda715068c1e787f6553b1504a01e7` |
| 3 | `theorem` | [actualUnitTilt_transform](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/declarations/actualunittilt-transform--deffaa46bd595e43bb408242.md) | 29 | `result-track:deffaa46bd595e43bb408242e74072a2acac69dc9fcb8907d33f17d67a120efc` |
| 4 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/declarations/actualunittilt-integral-sq-le--995c6a5d41249977b888e0ae.md) | 37 | `result-track:995c6a5d41249977b888e0aeb8de6165772e284df050a37eba71a61bdecc9c4d` |
| 5 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/declarations/actualunittiltenergy-eventually-ge--fb61242da64722255c8764ca.md) | 67 | `result-track:fb61242da64722255c8764caf808e40f0fa861b59d2abadea0a22aaf46e0a359` |
| 6 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../mathematics/Analysis/SourceActualTiltEnergy/Varianta05d6e55a0897c31821a38045036d6b7f35e687829b047232d4a456824a9bdb1.lean/declarations/actualunittiltenergy-tendsto-attop--b3e9e1a068891822cbd445d3.md) | 117 | `result-track:b3e9e1a068891822cbd445d3bcdb56d65eadd8ea82a33ea951b9fa18be938aff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
