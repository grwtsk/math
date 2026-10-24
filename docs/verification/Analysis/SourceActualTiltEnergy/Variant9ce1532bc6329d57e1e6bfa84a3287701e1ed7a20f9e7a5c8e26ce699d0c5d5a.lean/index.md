# Verification target: GRWTSK.Analysis.SourceActualTiltEnergy.Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bce06bf882645ff9e9a3607a32814da6a5fa2624",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/index.md) · [Full source](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bce06bf882645ff9e9a3607a32814da6a5fa2624`.

Source path: `GRWTSK/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/declarations/actualunittilt--6041c3a8dff7cb1056387560.md) | 29 | `declaration-track:6041c3a8dff7cb10563875603e28d039443880d63cc592d842188fbcd5d23338` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/declarations/actualunittiltenergy--65284378019c895d3443359e.md) | 33 | `declaration-track:65284378019c895d3443359ecd80e5248fb5feb999b019910b57a04bb15caff8` |
| 3 | `theorem` | [actualUnitTilt_transform](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/declarations/actualunittilt-transform--b84a90c1f3491abbd7b1cda3.md) | 37 | `result-track:b84a90c1f3491abbd7b1cda3dabc724ae7b41e413a5668511a5a8f34c5e547ff` |
| 4 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/declarations/actualunittilt-integral-sq-le--a77e408f0bd9c8806d16cec2.md) | 45 | `result-track:a77e408f0bd9c8806d16cec2f0cb30528b34d3e3e5e19216372497172e30af6e` |
| 5 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/declarations/actualunittiltenergy-eventually-ge--8675e85ae876ac197431513f.md) | 75 | `result-track:8675e85ae876ac197431513f8011b58d8e64a5f74bc538aac69fb7a8dbebeb86` |
| 6 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../mathematics/Analysis/SourceActualTiltEnergy/Variant9ce1532bc6329d57e1e6bfa84a3287701e1ed7a20f9e7a5c8e26ce699d0c5d5a.lean/declarations/actualunittiltenergy-tendsto-attop--749a8a75027d0fcc9bc6310a.md) | 125 | `result-track:749a8a75027d0fcc9bc6310a98cbfe2a59eb1c19161d51833aaded7321cc569c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
