# Verification target: GRWTSK.Analysis.SpecialFunctions.Monotone.Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28c2fee670b81c2d4a328ec89d339144e3bf2e12",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28c2fee670b81c2d4a328ec89d339144e3bf2e12`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_mul_self_monotoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/declarations/log-mul-self-monotoneon--ed8a322a6df6e0d613929512.md) | 40 | `result-track:ed8a322a6df6e0d6139295124e9d762bd03e2c472ec4d96d484a28af5cbc0bac` |
| 2 | `theorem` | [log_div_self_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/declarations/log-div-self-antitoneon--1ed4519e158071599eecb838.md) | 50 | `result-track:1ed4519e158071599eecb83863095f75fc5c2492dc66c78c6f0e457baf4d1bb6` |
| 3 | `theorem` | [log_div_self_rpow_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/declarations/log-div-self-rpow-antitoneon--4d99ad19caf8a862d6aa359e.md) | 65 | `result-track:4d99ad19caf8a862d6aa359ecf9dfe0e6e6c08a7db7914c57b137f64901809e5` |
| 4 | `theorem` | [log_div_sqrt_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/declarations/log-div-sqrt-antitoneon--55870c892532dac7ad91bb1e.md) | 94 | `result-track:55870c892532dac7ad91bb1e5d394b344c96bc0f331d684e7a344057af78fc2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
