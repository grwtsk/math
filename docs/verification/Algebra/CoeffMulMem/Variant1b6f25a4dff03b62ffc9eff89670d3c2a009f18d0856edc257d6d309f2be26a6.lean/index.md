# Verification target: GRWTSK.Algebra.CoeffMulMem.Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc52c86094a74cf34096476490f418fa6aef61e4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc52c86094a74cf34096476490f418fa6aef61e4`.

Source path: `GRWTSK/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/declarations/coeff-mul-mem-ideal-mul-ideal-of-coeff-mem-ideal--d6dbd323d4d3087a35194c02.md) | 40 | `result-track:d6dbd323d4d3087a35194c02711effa6bdad87815085d2af224837ea4fe5744c` |
| 2 | `theorem` | [coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal'](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/declarations/coeff-mul-mem-ideal-mul-ideal-of-coeff-mem-ideal--b8bb7dd392b013d801eefeb3.md) | 47 | `result-track:b8bb7dd392b013d801eefeb3235b4d1b821ac5e386979ca878abfa586b3b566f` |
| 3 | `theorem` | [coeff_mul_mem_ideal_of_coeff_right_mem_ideal](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/declarations/coeff-mul-mem-ideal-of-coeff-right-mem-ideal--155c645a24a32bf52f617873.md) | 52 | `result-track:155c645a24a32bf52f617873259f3355fa1e71cc1e63b1c0ede61b8591d7ca5b` |
| 4 | `theorem` | [coeff_mul_mem_ideal_of_coeff_right_mem_ideal'](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/declarations/coeff-mul-mem-ideal-of-coeff-right-mem-ideal--df7fc3e6eca7349f9359ae88.md) | 56 | `result-track:df7fc3e6eca7349f9359ae88a5d16cd5fdb9ba49a1fe36764b5d32a345e75860` |
| 5 | `theorem` | [coeff_mul_mem_ideal_of_coeff_left_mem_ideal](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/declarations/coeff-mul-mem-ideal-of-coeff-left-mem-ideal--cb3fdd1d2655f403a53c88ca.md) | 62 | `result-track:cb3fdd1d2655f403a53c88ca09022674e40b5a92af864f8a7639df4f1773a190` |
| 6 | `theorem` | [coeff_mul_mem_ideal_of_coeff_left_mem_ideal'](../../../../mathematics/Algebra/CoeffMulMem/Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6.lean/declarations/coeff-mul-mem-ideal-of-coeff-left-mem-ideal--4bd28be394c5439e56b358d1.md) | 67 | `result-track:4bd28be394c5439e56b358d139d5e7ed118677ce04d5d158b6d1e358664cc28c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
