# Verification target: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicReciprocalAbel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eae3fa546b9a840cdf165382f97b80952c06d8d7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eae3fa546b9a840cdf165382f97b80952c06d8d7`.

Source path: `GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance`](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Module` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCyclicReciprocalWeight](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/finitecyclicreciprocalweight--851893bef94fa54cbd655c19.md) | 35 | `declaration-track:851893bef94fa54cbd655c19bcd22bc5bb7142c0b6fb178c973f3ac60555e7fd` |
| 2 | `theorem` | [finiteCyclicReciprocalWeight_nonneg](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/finitecyclicreciprocalweight-nonneg--068f420b55dc9223927f1d1e.md) | 40 | `result-track:068f420b55dc9223927f1d1e1d657f8550eed9e3a4727c2e0e9d50fa1f0fe2be` |
| 3 | `theorem` | [finiteCyclicReciprocalWeight_succ_le](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/finitecyclicreciprocalweight-succ-le--05dbf433dc0d4a1f12e100fd.md) | 46 | `result-track:05dbf433dc0d4a1f12e100fd7fc1ab9559892e3497eb1f45927af3e3356a0bb3` |
| 4 | `theorem` | [norm_coe_finiteCyclicReciprocalWeight](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/norm-coe-finitecyclicreciprocalweight--7571177321b26ec68e7f899b.md) | 58 | `result-track:7571177321b26ec68e7f899bbd124f23cfbe290ea4de81f724d483fa986e6c30` |
| 5 | `theorem` | [norm_coe_finiteCyclicReciprocalWeight_sub_succ](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/norm-coe-finitecyclicreciprocalweight-sub-succ--e3893a8818f3ce674a43ed0b.md) | 65 | `result-track:e3893a8818f3ce674a43ed0b4acc71c17b0b57f91e4ca581f4d7fa20e2e2dc3d` |
| 6 | `theorem` | [finiteCyclicReciprocalWeight_endpoint_add_steps](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/finitecyclicreciprocalweight-endpoint-add-steps--1e57337059974db0fa2802ef.md) | 76 | `result-track:1e57337059974db0fa2802efd6f71bb8892c906c901925f6aeeb2b6d07bdf810` |
| 7 | `theorem` | [sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/sum-stdaddchar-neg-mul-reciprocalweight-ico-eq-abel--6296713cdb97c487fe64c435.md) | 107 | `result-track:6296713cdb97c487fe64c43584730d768916d2b10a720e125a014a6f4cb515f1` |
| 8 | `theorem` | [norm_sum_stdAddChar_neg_mul_reciprocalWeight_Ico_le](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/norm-sum-stdaddchar-neg-mul-reciprocalweight-ico-le--ad754cd53066e21a416a35f1.md) | 163 | `result-track:ad754cd53066e21a416a35f10778902a69654d6d00fa9cc5d9f7ccd0b483d73c` |
| 9 | `theorem` | [norm_sum_stdAddChar_neg_div_nat_add_Ico_le_circularDistance](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/declarations/norm-sum-stdaddchar-neg-div-nat-add-ico-le-circulardistance--1091553fcd3351bf85e1aa68.md) | 272 | `result-track:1091553fcd3351bf85e1aa68e830446ac6b4922f473ad69858d3b09d2e27953e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
