# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Radical.Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b58667e4848ad9b313d41ef863d8a9d4b1b722",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b58667e4848ad9b313d41ef863d8a9d4b1b722`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Wronskian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Radical` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicative` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_radical_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/declarations/degree-radical-le--daa6733907165f69feef3bba.md) | 22 | `result-track:daa6733907165f69feef3bba230d15cca98d46dbe5a1480247cdb8d60cbe987f` |
| 2 | `theorem` | [natDegree_radical_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/declarations/natdegree-radical-le--a6066c4999cc45ce3009d968.md) | 25 | `result-track:a6066c4999cc45ce3009d968b88eead505a2f872e8a70bfceee5450b5e15a7c9` |
| 3 | `theorem` | [divRadical_dvd_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/declarations/divradical-dvd-derivative--261cc0904555e89d37741e79.md) | 31 | `result-track:261cc0904555e89d37741e7951eb9589cdb3e755add327ebf45a9f2ece808c01` |
| 4 | `theorem` | [divRadical_dvd_wronskian_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/declarations/divradical-dvd-wronskian-left--d2aea737fd7e1d43954c6669.md) | 58 | `result-track:d2aea737fd7e1d43954c6669cc76a4038a6b9897c66f02707d5e29f185e1c106` |
| 5 | `theorem` | [divRadical_dvd_wronskian_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Radical/Variantac35c5d0561a4361a2f597d0340316821120defd21e15cc20eb6bc0b75a90df3.lean/declarations/divradical-dvd-wronskian-right--ff6604b319f4062c172d5cf2.md) | 66 | `result-track:ff6604b319f4062c172d5cf24f0950b0f3ba38c7f70898b2b806b934d4b73155` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
