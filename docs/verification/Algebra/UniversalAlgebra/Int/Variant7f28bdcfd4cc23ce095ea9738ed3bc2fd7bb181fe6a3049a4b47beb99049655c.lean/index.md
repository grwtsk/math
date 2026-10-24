# Verification target: GRWTSK.Algebra.UniversalAlgebra.Int.Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57accaa4d817ed9ca4cdf1709a54c60c5e52e5c6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57accaa4d817ed9ca4cdf1709a54c60c5e52e5c6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/declarations/instzeroleoneclass--d4e86218d438afe4dfad7473.md) | 36 | `declaration-track:d4e86218d438afe4dfad747361ec897bf770d307d69b038fae2cae039e99f17f` |
| 2 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/declarations/instisstrictorderedring--8c3804999fd9264c82e402e1.md) | 37 | `declaration-track:8c3804999fd9264c82e402e15f6c5963f71fc7b553f073f2906398f3e6204436` |
| 3 | `lemma` | [isCompl_even_odd](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/declarations/iscompl-even-odd--9cae711fb3fba9953a0cb62c.md) | 41 | `result-track:9cae711fb3fba9953a0cb62ce8544b563f4a0c362ba973883a196fe96d0726dc` |
| 4 | `lemma` | [_root_.Nat.cast_natAbs](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/declarations/root-nat-cast-natabs--a56d1d5ae832a79c3990c095.md) | 44 | `result-track:a56d1d5ae832a79c3990c095d7344256f9e263f74036027cc27e595a986e2db1` |
| 5 | `lemma` | [two_le_iff_pos_of_even](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/declarations/two-le-iff-pos-of-even--2c651391445f7b8d5d2214ed.md) | 47 | `result-track:2c651391445f7b8d5d2214ed4fba6a016967e915958f5efb41cafb373e99f0fc` |
| 6 | `lemma` | [add_two_le_iff_lt_of_even_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Int/Variant7f28bdcfd4cc23ce095ea9738ed3bc2fd7bb181fe6a3049a4b47beb99049655c.lean/declarations/add-two-le-iff-lt-of-even-sub--ae9775708d31e352bb5516bd.md) | 50 | `result-track:ae9775708d31e352bb5516bd745c4aeaa835e97820819ed745e633629523c75e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
