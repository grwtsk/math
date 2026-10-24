# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ineq.Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fef0193b80f292e55558568cecf311f7ab98a23",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fef0193b80f292e55558568cecf311f7ab98a23`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Eq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Cast` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inferOrderedSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/inferorderedsemiring--95827a0577602d8d2ecd4540.md) | 32 | `declaration-track:95827a0577602d8d2ecd4540d7125df8889b6dcc66f59c0e04e85a814be040c9` |
| 2 | `def` | [inferOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/inferorderedring--e3444b78eb5cedb26079aae2.md) | 43 | `declaration-track:e3444b78eb5cedb26079aae20e9abb0737b2c1462a853186885e537d5259e07f` |
| 3 | `def` | [inferLinearOrderedField](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/inferlinearorderedfield--d0b40414e8c76bae7b1543d2.md) | 54 | `declaration-track:d0b40414e8c76bae7b1543d29ffabff18a5ac0a38b752e6ab2e7de954526d0d4` |
| 4 | `theorem` | [isNat_le_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isnat-le-true--77e70488a7ca3938357a7aa5.md) | 65 | `result-track:77e70488a7ca3938357a7aa513af044a6f018f89d35e79b3b0d55ebbc8bec7cb` |
| 5 | `theorem` | [isNat_lt_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isnat-lt-false--7402aa30bde0dc7ac75cde66.md) | 69 | `result-track:7402aa30bde0dc7ac75cde66e3e9c6fa303f6e9c7ab6696356819ee8557354de` |
| 6 | `theorem` | [isRat_le_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/israt-le-true--68ea65cf008c4b8c1e549ef6.md) | 73 | `result-track:68ea65cf008c4b8c1e549ef6bcef1c46e375e7a2010fd5ae900fe3a9f3e671d3` |
| 7 | `theorem` | [isRat_lt_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/israt-lt-true--593943c21b34a0b3ddd0dea7.md) | 85 | `result-track:593943c21b34a0b3ddd0dea7a24ebbebd76d1d9a65018bb59a9a1f9d19fd4ec1` |
| 8 | `theorem` | [isRat_le_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/israt-le-false--7ab7bc7d4ad5ae4b6d9753e6.md) | 97 | `result-track:7ab7bc7d4ad5ae4b6d9753e6382d0f677cbb77a8d25ae918dafcc1887cf4b2eb` |
| 9 | `theorem` | [isRat_lt_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/israt-lt-false--4391d82bb061222a1267e843.md) | 102 | `result-track:4391d82bb061222a1267e843e1e7d7d981f53760b237a0129f43a26d5529c6bd` |
| 10 | `theorem` | [isNat_lt_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isnat-lt-true--f9d971978cc61a28c5e3c67a.md) | 109 | `result-track:f9d971978cc61a28c5e3c67a9b86c041c3f265a029f01bede7ddc98acc3a05cc` |
| 11 | `theorem` | [isNat_le_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isnat-le-false--30120c37f57912743014e5a1.md) | 115 | `result-track:30120c37f57912743014e5a1d7b9e33978633ca139bc0acfb88416a5cdb04eac` |
| 12 | `theorem` | [isInt_le_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isint-le-true--f1b24517517788dd013c991d.md) | 120 | `result-track:f1b24517517788dd013c991d349f6500a9376452addbc609a13eb25e62abafee` |
| 13 | `theorem` | [isInt_lt_true](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isint-lt-true--2ac70fa1d80281460ed939b3.md) | 124 | `result-track:2ac70fa1d80281460ed939b35b9e56ab34e70311a802fce51b6dbe9fad00ad97` |
| 14 | `theorem` | [isInt_le_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isint-le-false--8cce7eb6fcd7bbe7d68b02ea.md) | 129 | `result-track:8cce7eb6fcd7bbe7d68b02ea4b820573d1834024682fdd142132caad029c90ca` |
| 15 | `theorem` | [isInt_lt_false](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/isint-lt-false--0225552c6218821fd694cea7.md) | 134 | `result-track:0225552c6218821fd694cea77f5a16d7cb6c1a7bb3a7a3991f1116727840e5a9` |
| 16 | `def` | [evalLE](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/evalle--dfb1b48d8335d49578c036bb.md) | 141 | `declaration-track:dfb1b48d8335d49578c036bb4b1ae7d4f3e3354e84962eb4073ff1a6924ccfd8` |
| 17 | `def` | [evalLT](../../../../../mathematics/Algebra/UniversalAlgebra/Ineq/Variant779e3db733b7463cc1c9bdedb900b583468216510d99f553838436d5146a7392.lean/declarations/evallt--f3a1395c4fe11d36e8f11264.md) | 205 | `declaration-track:f3a1395c4fe11d36e8f11264c1d5ab8c739079a2e52575261b5c7c39599cff05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
