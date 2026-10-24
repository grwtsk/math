# Verification target: GRWTSK.Algebra.LinearAlgebra.Classification.Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "270728153a7c2fec8da030f5dfd954dacecba74c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `270728153a7c2fec8da030f5dfd954dacecba74c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Cardinal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Cardinality` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.TranscendenceBasis` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isAlgClosure_of_transcendence_basis](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/isalgclosure-of-transcendence-basis--997cccd5aa5bcf766bff2cb6.md) | 54 | `result-track:997cccd5aa5bcf766bff2cb61cfdee521e10e918077daaa5d8ae00d70da7613b` |
| 2 | `def` | [equivOfTranscendenceBasis](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/equivoftranscendencebasis--e9f3300e505d139e05bc8fad.md) | 65 | `declaration-track:e9f3300e505d139e05bc8fada518f12bc1004629bb80fdf5eead73e421060467` |
| 3 | `theorem` | [cardinal_le_max_transcendence_basis](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/cardinal-le-max-transcendence-basis--b1499827233f3670ea7ddd25.md) | 96 | `result-track:b1499827233f3670ea7ddd25146babb75617379cf97d38f27f2c0f82960694b4` |
| 4 | `theorem` | [cardinal_le_max_transcendence_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/cardinal-le-max-transcendence-basis--7cf0d35622dcf9a42512a304.md) | 117 | `result-track:7cf0d35622dcf9a42512a3040b81dcd0470eff1de4f8dec68953b77dcb2bb800` |
| 5 | `theorem` | [cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--62c8021123e1c76d962144de.md) | 126 | `result-track:62c8021123e1c76d962144de6d88e5343acce2f9c2463b08b38ff2379ab9f455` |
| 6 | `theorem` | [cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt'](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--f89272cb8500f9573a7d9128.md) | 153 | `result-track:f89272cb8500f9573a7d912891489ae3e7ba5543159a58e849c1cc29e406b837` |
| 7 | `theorem` | [ringEquiv_of_equiv_of_charZero](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/ringequiv-of-equiv-of-charzero--8e18c6620c26f84cac1a3921.md) | 163 | `result-track:8e18c6620c26f84cac1a3921738f0b8fee8ce8a845778a8dfae14cd0735c0791` |
| 8 | `theorem` | [ringEquiv_of_Cardinal_eq_of_charP](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/ringequiv-of-cardinal-eq-of-charp--f7edfb42b51c2725a4519e2a.md) | 178 | `result-track:f7edfb42b51c2725a4519e2a6a99db6395683949fd45821d6410774d0174a9c3` |
| 9 | `theorem` | [ringEquiv_of_equiv_of_char_eq](../../../../../mathematics/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/declarations/ringequiv-of-equiv-of-char-eq--1b88dbf0ddb6c3da277c48bc.md) | 197 | `result-track:1b88dbf0ddb6c3da277c48bcb92dc4693f4c8eb098398f704be60b4470c38f98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
