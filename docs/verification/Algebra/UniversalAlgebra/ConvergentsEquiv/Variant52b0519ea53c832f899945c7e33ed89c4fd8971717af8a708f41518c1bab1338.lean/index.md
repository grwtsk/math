# Verification target: GRWTSK.Algebra.UniversalAlgebra.ConvergentsEquiv.Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab64504f6d613732c16b49fd7d524195dda74f26`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squashSeq](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashseq--0dda4394edfda63cff703716.md) | 93 | `declaration-track:0dda4394edfda63cff703716dcd9bf106d4ab3d2f2014c10e3e04e468143f024` |
| 2 | `theorem` | [squashSeq_eq_self_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashseq-eq-self-of-terminated--35a37955accd4a99d939e7ea.md) | 106 | `result-track:35a37955accd4a99d939e7ea67b17b89a81437de8f175de7d044c87e3562ee7d` |
| 3 | `theorem` | [squashSeq_nth_of_not_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashseq-nth-of-not-terminated--3ec1256428fa2a75fb491364.md) | 114 | `result-track:3ec1256428fa2a75fb491364a9c9bdd955060ba25d430f5b0d853e5a0f61486f` |
| 4 | `theorem` | [squashSeq_nth_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashseq-nth-of-lt--1f047e4e028c073f4eb22498.md) | 121 | `result-track:1f047e4e028c073f4eb224989f9a64b59da24622fa299c855c2aaa7534495771` |
| 5 | `theorem` | [squashSeq_succ_n_tail_eq_squashSeq_tail_n](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashseq-succ-n-tail-eq-squashseq-tail-n--5b1797635f9c3a89b0c16af0.md) | 134 | `result-track:5b1797635f9c3a89b0c16af0f85f2973a57f7b173510ff8dcb00559ee62414c0` |
| 6 | `theorem` | [succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squashSeq](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/succ-succ-nth-convergent-aux-eq-succ-nth-convergent-aux-squashseq--f9165994a031302e1b2776d2.md) | 157 | `result-track:f9165994a031302e1b2776d21f9fced36d2499b9672dc13351652f57737feee7` |
| 7 | `def` | [squashGCF](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashgcf--c1e9fa979e458fd5990afc92.md) | 193 | `declaration-track:c1e9fa979e458fd5990afc92b857bffac122dde19041bc547f45256b1068418b` |
| 8 | `theorem` | [squashGCF_eq_self_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashgcf-eq-self-of-terminated--2f15cda94083811ced5babde.md) | 206 | `result-track:2f15cda94083811ced5babdef058d9c830039140b55ea79efcf8fff013665454` |
| 9 | `theorem` | [squashGCF_nth_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/squashgcf-nth-of-lt--b99013148615504c2520d657.md) | 219 | `result-track:b99013148615504c2520d657ee2d2c16851623ef3c081c6020a8d2a089759664` |
| 10 | `theorem` | [succ_nth_convergent'_eq_squashGCF_nth_convergent'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/succ-nth-convergent-eq-squashgcf-nth-convergent--65c53fb04d68d4bf4319f6b3.md) | 226 | `result-track:65c53fb04d68d4bf4319f6b35a786d770adae0e2dcf8dbb78164b92ab5c99ab8` |
| 11 | `theorem` | [continuantsAux_eq_continuantsAux_squashGCF_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/continuantsaux-eq-continuantsaux-squashgcf-of-le--021bfbf91cd44dd8e7de31d9.md) | 238 | `result-track:021bfbf91cd44dd8e7de31d9004e56a7e1f61afecc4ff7effdfa2137dcdaf572` |
| 12 | `theorem` | [succ_nth_convergent_eq_squashGCF_nth_convergent](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/succ-nth-convergent-eq-squashgcf-nth-convergent--3b009356d54c508199863594.md) | 265 | `result-track:3b009356d54c5081998635944f9da17faaf6981c23c077a23cc8d9bd966122ea` |
| 13 | `theorem` | [convergents_eq_convergents'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/convergents-eq-convergents--2e67debd3f15bd171607fe1b.md) | 343 | `result-track:2e67debd3f15bd171607fe1b9a25d7d9b39817315cddf3d03207af9bc3d21aa8` |
| 14 | `theorem` | [convergents_eq_convergents'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/declarations/convergents-eq-convergents--ef151cc65abba80a6a9a423c.md) | 403 | `result-track:ef151cc65abba80a6a9a423cde3763451fd28949c14c2ccabc518592e72d7e1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
