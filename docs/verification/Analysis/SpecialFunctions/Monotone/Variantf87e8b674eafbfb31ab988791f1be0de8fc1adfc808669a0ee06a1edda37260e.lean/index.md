# Verification target: GRWTSK.Analysis.SpecialFunctions.Monotone.Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9fa885ad0bfd095b71124061570e66b45c31dc1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9fa885ad0bfd095b71124061570e66b45c31dc1`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean.json)

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
| 1 | `theorem` | [log_mul_self_monotoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean/declarations/log-mul-self-monotoneon--b713dd9c11df0b2ff4de6a21.md) | 36 | `result-track:b713dd9c11df0b2ff4de6a21ee2eadc2a3071913aeff04cc859e7c9e5d145149` |
| 2 | `theorem` | [log_div_self_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean/declarations/log-div-self-antitoneon--dd9f65c41270eb14867df80d.md) | 44 | `result-track:dd9f65c41270eb14867df80d5e586fae030bba54e7f651abc0c489d4dcc79de2` |
| 3 | `theorem` | [log_div_self_rpow_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean/declarations/log-div-self-rpow-antitoneon--99c89cc2d298dd568efe498b.md) | 58 | `result-track:99c89cc2d298dd568efe498b7a2275f4e20f7009032b6b06c9a9b0cb0388ecc0` |
| 4 | `theorem` | [log_div_sqrt_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variantf87e8b674eafbfb31ab988791f1be0de8fc1adfc808669a0ee06a1edda37260e.lean/declarations/log-div-sqrt-antitoneon--fcbcb7a47bcb68d2bb041f84.md) | 84 | `result-track:fcbcb7a47bcb68d2bb041f84f8aaf0881023367c2acc339fd1cd05ad03eeb16a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
