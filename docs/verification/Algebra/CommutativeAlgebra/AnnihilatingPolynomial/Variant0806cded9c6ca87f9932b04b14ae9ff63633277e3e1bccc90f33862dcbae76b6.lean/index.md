# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AnnihilatingPolynomial.Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f61e25647944110d79d1cb7b78c0d0e9f65131d8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f61e25647944110d79d1cb7b78c0d0e9f65131d8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [annIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/annideal--1966e21df7f93735e2cb82e4.md) | 61 | `declaration-track:1966e21df7f93735e2cb82e4d0de861e409170a9c583f76484900608f673bd3e` |
| 2 | `theorem` | [mem_annIdeal_iff_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/mem-annideal-iff-aeval-eq-zero--abbd3aefdf8d4da4409efb1f.md) | 69 | `result-track:abbd3aefdf8d4da4409efb1f9537b2bfbdaf054ce4ed3766b2d6286939d21bdd` |
| 3 | `def` | [annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/annidealgenerator--69cb4131477fc593587d5041.md) | 90 | `declaration-track:69cb4131477fc593587d504126252db971a52c7652886641208dfa418f78eeee` |
| 4 | `theorem` | [annIdealGenerator_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/annidealgenerator-eq-zero-iff--6270e9f024c56c4a6e48e5c9.md) | 100 | `result-track:6270e9f024c56c4a6e48e5c917a26a13678317152cf869b42e7e58652888969c` |
| 5 | `theorem` | [span_singleton_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/span-singleton-annidealgenerator--8dfcfad48b778cac9610b570.md) | 109 | `result-track:8dfcfad48b778cac9610b5708564b20a771fcccec1e77f445b8bbd850e9a5a0b` |
| 6 | `theorem` | [annIdealGenerator_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/annidealgenerator-mem--5e643b48f0e4312bb9b65e61.md) | 122 | `result-track:5e643b48f0e4312bb9b65e61bfbb2bf280cdffbeb88b434249fdf7c278a2c925` |
| 7 | `theorem` | [mem_iff_eq_smul_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/mem-iff-eq-smul-annidealgenerator--3e6dea5dd0001b685919b1c6.md) | 126 | `result-track:3e6dea5dd0001b685919b1c66cfce32b417c707d19624d61428161a037a433dc` |
| 8 | `theorem` | [monic_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/monic-annidealgenerator--0bc160ce70c33a6456c852ec.md) | 132 | `result-track:0bc160ce70c33a6456c852ecb336763c3cb447a64f644b57ce54467f86bcecc4` |
| 9 | `theorem` | [annIdealGenerator_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/annidealgenerator-aeval-eq-zero--e853d40338a49d1c17d185c5.md) | 144 | `result-track:e853d40338a49d1c17d185c552a5ec32862af9b60b6c3f8e81297d418eab24d0` |
| 10 | `theorem` | [mem_iff_annIdealGenerator_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/mem-iff-annidealgenerator-dvd--3cb65ad3070a8cfa19ade410.md) | 150 | `result-track:3cb65ad3070a8cfa19ade4104e78f3943fb1fb9e605817d4a6d43985537ac999` |
| 11 | `theorem` | [degree_annIdealGenerator_le_of_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/degree-annidealgenerator-le-of-mem--8de0b9fccd3b7f56c7222c61.md) | 157 | `result-track:8de0b9fccd3b7f56c7222c6159a63a38e0f7adb150ac931830a99187b3381b84` |
| 12 | `theorem` | [annIdealGenerator_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/annidealgenerator-eq-minpoly--705777c875aee88ea78c9700.md) | 165 | `result-track:705777c875aee88ea78c970034829a0b18f34ab5c4f86ce95a600c2c1fef31e2` |
| 13 | `theorem` | [monic_generator_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant0806cded9c6ca87f9932b04b14ae9ff63633277e3e1bccc90f33862dcbae76b6.lean/declarations/monic-generator-eq-minpoly--7614bb50bc84fadd0cdcd748.md) | 179 | `result-track:7614bb50bc84fadd0cdcd7489662e44f368ba5cac58a89952f8f54cc0dbaee76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
