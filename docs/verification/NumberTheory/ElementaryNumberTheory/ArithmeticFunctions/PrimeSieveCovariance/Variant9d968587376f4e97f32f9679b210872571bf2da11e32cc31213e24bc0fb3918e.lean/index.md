# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeSieveCovariance.Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deeea52ef9e4047039945e49e32eef544d90d35a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deeea52ef9e4047039945e49e32eef544d90d35a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SelbergSieve` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/declarations/prime-lcm--83f1b8cb9bf3d8cca48be3bd.md) | 18 | `result-track:83f1b8cb9bf3d8cca48be3bd89d12a5f313b5cda3cd023754dccef7476ec3cea` |
| 2 | `theorem` | [prime_moebius_lcm_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/declarations/prime-moebius-lcm-identity--41c3837c980f502859a8d8c0.md) | 26 | `result-track:41c3837c980f502859a8d8c0493b470a84783bae394ec64758ff56bcf4050386` |
| 3 | `theorem` | [prime_moebius_lcm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/declarations/prime-moebius-lcm-le--877e99eee02d9e9cc9c551d6.md) | 72 | `result-track:877e99eee02d9e9cc9c551d64ca5c95d44b3ec95c76a2fa2a27f0207503e04af` |
| 4 | `theorem` | [prime_moebius_lcm_le_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/declarations/prime-moebius-lcm-le-card--33ec41cf8e4017fc6254397c.md) | 108 | `result-track:33ec41cf8e4017fc6254397c831e19f2665ffdc9e0a6a2ff53a19290e7cebadc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
