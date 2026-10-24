# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBoundaryAcceptance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71a3eda5c27d1656c3a46a4800ec3ee99ecbbe2b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71a3eda5c27d1656c3a46a4800ec3ee99ecbbe2b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlock`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completed](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/completed--d9c670d7b37d2a294239780b.md) | 28 | `declaration-track:d9c670d7b37d2a294239780b06c120d8603c1ba37f566d6e4a76ba7530c1afd1` |
| 2 | `theorem` | [completed_terminal](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/completed-terminal--5b7fed758098cc872e523c65.md) | 31 | `result-track:5b7fed758098cc872e523c65461de6437a1157f219421ddeabb5ccdf040f2a43` |
| 3 | `theorem` | [completed_first](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/completed-first--29291c098525de9f0b059dcc.md) | 35 | `result-track:29291c098525de9f0b059dcc385203a65f97a826da17506eacc349637d848460` |
| 4 | `theorem` | [completed_later](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/completed-later--b53cf83fb776b9fc491741d3.md) | 41 | `result-track:b53cf83fb776b9fc491741d31a19db66ec87cd555b9110bb2cf64eee296738e7` |
| 5 | `theorem` | [first_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/first-block-check--d475968f3731043f36b4f5a9.md) | 45 | `result-track:d475968f3731043f36b4f5a925fa567960e67d0d10ca27504da3713b07f1db40` |
| 6 | `theorem` | [terminal_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/terminal-check--d43ca32cfc15e0862d3656e4.md) | 50 | `result-track:d43ca32cfc15e0862d3656e47efa2cac37c97989108d90a0dd243eaccf1e849c` |
| 7 | `def` | [RemainingChecks](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/remainingchecks--d4125e697d983d39f23d9acd.md) | 56 | `declaration-track:d4125e697d983d39f23d9acd1d3830aa852e590fb570f1042b4cbf32771a8a47` |
| 8 | `theorem` | [remaining_iff_original](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/remaining-iff-original--ebd0ed60983a509e7620c7b5.md) | 64 | `result-track:ebd0ed60983a509e7620c7b54761d3b854d34231e8cdfda096fdfe2a78fc0afc` |
| 9 | `theorem` | [source_of_remaining](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/source-of-remaining--3875bf84dd2efb6a591d404d.md) | 75 | `result-track:3875bf84dd2efb6a591d404d1363497e4cd6d2ef526ca989100ff3723980f68e` |
| 10 | `theorem` | [local_zero_of_remaining](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/local-zero-of-remaining--8b2f69fed40203e0aa7bb123.md) | 81 | `result-track:8b2f69fed40203e0aa7bb1234d180dc388d0420d13187ec60858e8ce67c835b8` |
| 11 | `theorem` | [remaining_block_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/remaining-block-ne-zero--7d1534c4d70e4c1878df0bc0.md) | 89 | `result-track:7d1534c4d70e4c1878df0bc0671d21a481eac081572b286dca02e3117d8fb84d` |
| 12 | `theorem` | [remaining_coverage](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/remaining-coverage--9b8bbb5556869f82d7552d06.md) | 96 | `result-track:9b8bbb5556869f82d7552d061d6a49909b240a146d3e484dbf1a915d327be144` |
| 13 | `theorem` | [completion_injective_on_later](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBoundaryAcceptance.lean/declarations/completion-injective-on-later--742a9185926443eee213b257.md) | 106 | `result-track:742a9185926443eee213b257385e3e676aebacf0f3873f3a9c379252eb830220` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
