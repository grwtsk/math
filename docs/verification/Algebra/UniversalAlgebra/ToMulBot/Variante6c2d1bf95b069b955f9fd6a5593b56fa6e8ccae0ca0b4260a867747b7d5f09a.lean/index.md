# Verification target: GRWTSK.Algebra.UniversalAlgebra.ToMulBot.Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f10b6ca91c6f66cabe1e0d428499577e579f494d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f10b6ca91c6f66cabe1e0d428499577e579f494d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMulBot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot--1dbc10da37e67018c6e893e7.md) | 35 | `declaration-track:1dbc10da37e67018c6e893e7bb79c7f87b7530c4160f9429a4365c0dbc4405b7` |
| 2 | `theorem` | [toMulBot_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-zero--93a5bdc913224189beeea4f8.md) | 39 | `result-track:93a5bdc913224189beeea4f880b1bf60db1762389ed544d2397e53b4e8fc0f88` |
| 3 | `theorem` | [toMulBot_coe](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-coe--514354edba063e24159f6673.md) | 43 | `result-track:514354edba063e24159f6673bff78e2d1e0fa632e725ff9b60aa4dd9660db247` |
| 4 | `theorem` | [toMulBot_symm_bot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-symm-bot--4d00e0938827b919d7bdeceb.md) | 48 | `result-track:4d00e0938827b919d7bdecebf2733ab1bb74ac924650f68dd104e24d0779bd81` |
| 5 | `theorem` | [toMulBot_coe_ofAdd](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-coe-ofadd--155d2ba895e648584355467a.md) | 52 | `result-track:155d2ba895e648584355467a05d5aae0d7f6dc62f0cc8d3715c3cc6c903ac1d1` |
| 6 | `theorem` | [toMulBot_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-strictmono--95389b9c726cbe0695b4e2c4.md) | 58 | `result-track:95389b9c726cbe0695b4e2c40ccb02939d02b0c78c1666b2bfb28b5d9b76b3d4` |
| 7 | `theorem` | [toMulBot_le](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-le--2dae2a3436e12b8ec275307f.md) | 61 | `result-track:2dae2a3436e12b8ec275307ffff097dec572ee0d9f89a4db9635baada2593d47` |
| 8 | `theorem` | [toMulBot_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Variante6c2d1bf95b069b955f9fd6a5593b56fa6e8ccae0ca0b4260a867747b7d5f09a.lean/declarations/tomulbot-lt--9abdb113f09ad1b3c04d3ca9.md) | 65 | `result-track:9abdb113f09ad1b3c04d3ca9624ff35bc9d6a70943ef496b57b8f6a9b9a792df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
