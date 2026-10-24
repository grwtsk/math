# Verification target: GRWTSK.Algebra.NonZeroDivisors.Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f0be16956d34e3cdeeeca513f06e2b9a023408",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f0be16956d34e3cdeeeca513f06e2b9a023408`.

Source path: `GRWTSK/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_cancel_right_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/mul-cancel-right-mem-nonzerodivisors--98c5ab5514a469bde30068e3.md) | 29 | `result-track:98c5ab5514a469bde30068e381c758b269b7013c608ae3e0e784e33a4c80b225` |
| 2 | `lemma` | [mul_cancel_right_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/mul-cancel-right-coe-nonzerodivisors--c27a9802258a56cfa319d3aa.md) | 33 | `result-track:c27a9802258a56cfa319d3aa762fe9ab9f143d7d15dfbbf2e22ae82b5a9b1ec9` |
| 3 | `lemma` | [isLeftRegular_iff_mem_nonZeroDivisorsRight](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/isleftregular-iff-mem-nonzerodivisorsright--7e93bf14c2303facdc9a8469.md) | 36 | `result-track:7e93bf14c2303facdc9a84693d384bc39e1717171bb4270e03b32a2bd43e81d8` |
| 4 | `lemma` | [isRightRegular_iff_mem_nonZeroDivisorsLeft](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/isrightregular-iff-mem-nonzerodivisorsleft--7332776538f8b90c466dee7b.md) | 40 | `result-track:7332776538f8b90c466dee7b66eaed3776ac40577e07888708baf1be82a53c43` |
| 5 | `lemma` | [le_nonZeroDivisors_iff_isRightRegular](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/le-nonzerodivisors-iff-isrightregular--b92471ed6b0df43967042494.md) | 44 | `result-track:b92471ed6b0df43967042494e1250080e4a8449dff32dcc1c50e368e732e8385` |
| 6 | `lemma` | [le_nonZeroDivisors_iff_isRegular](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/le-nonzerodivisors-iff-isregular--e38ba22a3e3360c723295487.md) | 49 | `result-track:e38ba22a3e3360c723295487fdc314c04bc701c533324b51c4324c0e3b6725bb` |
| 7 | `lemma` | [isUnit_iff_mem_nonZeroDivisors_of_finite](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/isunit-iff-mem-nonzerodivisors-of-finite--eab364670504e1dcf7d34d96.md) | 55 | `result-track:eab364670504e1dcf7d34d96569a2b4ef8d62101a307368ca993a7fa6e3b610c` |
| 8 | `lemma` | [mul_cancel_left_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/mul-cancel-left-mem-nonzerodivisors--933b0efc93a4741364ec200d.md) | 68 | `result-track:933b0efc93a4741364ec200dde94f57a4d89c6ffd535b1c68223c2dcf7add596` |
| 9 | `lemma` | [mul_cancel_left_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/mul-cancel-left-coe-nonzerodivisors--8056d2f05911d425ff0795f9.md) | 71 | `result-track:8056d2f05911d425ff0795f9e01d381d9e6649e8f79e5a92273e1494e5c24305` |
| 10 | `lemma` | [dvd_cancel_right_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/dvd-cancel-right-mem-nonzerodivisors--6507e45a58336dc02bf3550d.md) | 74 | `result-track:6507e45a58336dc02bf3550de559c9ca706dc87d8ad31c2e59a2eb9c530011dd` |
| 11 | `lemma` | [dvd_cancel_right_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/dvd-cancel-right-coe-nonzerodivisors--a3a13db1173f856bc6bde5df.md) | 78 | `result-track:a3a13db1173f856bc6bde5df40d7a53130d6b9bbb4141487c44a3a2dcc32ba01` |
| 12 | `lemma` | [dvd_cancel_left_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/dvd-cancel-left-mem-nonzerodivisors--de0434a9c073f86cf335b134.md) | 81 | `result-track:de0434a9c073f86cf335b134f53b1d73b6c1ef53ab2ce3b5f50e281f8df2207f` |
| 13 | `lemma` | [dvd_cancel_left_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/declarations/dvd-cancel-left-coe-nonzerodivisors--4dac62ea2442c1a199bb20eb.md) | 85 | `result-track:4dac62ea2442c1a199bb20ebd4d4b1cad8c8dc3d78115123e179dffcdc313b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
