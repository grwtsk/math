# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Four.Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18006729ccadb7b168af90b8ad8625385a86c3f2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18006729ccadb7b168af90b8ad8625385a86c3f2`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FLT.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PythagoreanTriples` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fermat42](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/fermat42--c26af4d374aa68a20d5fd0ce.md) | 24 | `declaration-track:c26af4d374aa68a20d5fd0ce961a5da2bb001333636f575a4c1959d74dd87132` |
| 2 | `theorem` | [comm](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/comm--ac0e2228635451e4b88b728b.md) | 29 | `result-track:ac0e2228635451e4b88b728b3df63890ee2a0bd26705565d5b7cf9dfe696ea44` |
| 3 | `theorem` | [mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/mul--de0b1e5887880387d772b3d3.md) | 34 | `result-track:de0b1e5887880387d772b3d35381443e68edfed693ab33e0d212191045677d89` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/ne-zero--f0addac42ed24503c5bec4e0.md) | 53 | `result-track:f0addac42ed24503c5bec4e0e2f24fa039c722ef765604ada6e49e4a530d6d66` |
| 5 | `def` | [Minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/minimal--63483761717e88863bd34f0c.md) | 61 | `declaration-track:63483761717e88863bd34f0c7c67478f80a6c9265006a3982636854beba0d274` |
| 6 | `theorem` | [exists_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/exists-minimal--f210fc5127d9e68605b3b1f1.md) | 65 | `result-track:f210fc5127d9e68605b3b1f1367d7fec72bb9666eff758ee52f62ac9ada98668` |
| 7 | `theorem` | [coprime_of_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/coprime-of-minimal--1fedc38633d1c6d0f6f328a8.md) | 82 | `result-track:1fedc38633d1c6d0f6f328a8ff7e58977e4cff5ee30d87405500b9ba70267181` |
| 8 | `theorem` | [minimal_comm](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/minimal-comm--b42ef11cc54775d37fdf865a.md) | 101 | `result-track:b42ef11cc54775d37fdf865ad3f1649e940e22480948ffe380f6e667a59e38dc` |
| 9 | `theorem` | [neg_of_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/neg-of-minimal--8d441d9d54f76a42b7b2a476.md) | 105 | `result-track:8d441d9d54f76a42b7b2a4760111c694475dc3fbace460a3f6098f5e4a3e7633` |
| 10 | `theorem` | [exists_odd_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/exists-odd-minimal--a0b986fe657f97c88b3fec56.md) | 114 | `result-track:a0b986fe657f97c88b3fec56c4c3d85e41850ef9e772737f0ae44f93329a4b34` |
| 11 | `theorem` | [exists_pos_odd_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/exists-pos-odd-minimal--3ed7c90efa33994a6b10c6a6.md) | 130 | `result-track:3ed7c90efa33994a6b10c6a6d7f5895e06d6614274bb5db2f0a68074f5944cf9` |
| 12 | `theorem` | [Int.isCoprime_of_sq_sum](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/int-iscoprime-of-sq-sum--a0f8b430d53b9e625b6d13d5.md) | 142 | `result-track:a0f8b430d53b9e625b6d13d5b2710ad768c36e9b1d64059e8ffc60cf00cba692` |
| 13 | `theorem` | [Int.isCoprime_of_sq_sum'](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/int-iscoprime-of-sq-sum--e1a0329a64894d9e105fffd1.md) | 148 | `result-track:e1a0329a64894d9e105fffd197fe5d3a99f02639160b484515eda709951537ef` |
| 14 | `theorem` | [not_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/not-minimal--23098e7af03e344384db7912.md) | 159 | `result-track:23098e7af03e344384db791298d6940315d260a48677ad4b7e1cd35bb7b78788` |
| 15 | `theorem` | [not_fermat_42](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/not-fermat-42--cbd3bae76180a2bb9f5505a3.md) | 288 | `result-track:cbd3bae76180a2bb9f5505a3627c9d2f87ec28c63c25b7abc14e8d4ead3d80e1` |
| 16 | `theorem` | [fermatLastTheoremFour](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/fermatlasttheoremfour--4fcbf29da3a9a2a59d1a53d8.md) | 298 | `result-track:4fcbf29da3a9a2a59d1a53d87f827f09e5ac2d1e2b26d43ef49eb595708e99ff` |
| 17 | `theorem` | [FermatLastTheorem.of_odd_primes](../../../../../mathematics/NumberTheory/DiophantineEquations/Four/Variante35c342bbd003a4e356218ef91740dd1070bffa1ffcf665606d4dd6915531e4d.lean/declarations/fermatlasttheorem-of-odd-primes--93364f10119bcdbab5ae5250.md) | 307 | `result-track:93364f10119bcdbab5ae52504065e102408b5a8adf40104750e4aa13653431e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
