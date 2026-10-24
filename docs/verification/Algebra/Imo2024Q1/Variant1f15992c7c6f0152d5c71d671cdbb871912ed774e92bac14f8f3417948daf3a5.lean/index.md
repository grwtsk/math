# Verification target: GRWTSK.Algebra.Imo2024Q1.Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "066cc6e48981df8dc124ec42e8437d02f73bf50b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `066cc6e48981df8dc124ec42e8437d02f73bf50b`.

Source path: `GRWTSK/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ToIntervalMod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recall` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/condition--99d91ad8a2bdaeaac299fe87.md) | 34 | `declaration-track:99d91ad8a2bdaeaac299fe87c180cc48ad15f3e087a56c38d4d622027ccc70c2` |
| 2 | `def` | [solutionSet](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/solutionset--8e69beb3f5862412a6f11a5f.md) | 37 | `declaration-track:8e69beb3f5862412a6f11a5f4d8853f5a529732767f285f3aa4fc4521d1d42ad` |
| 3 | `lemma` | [condition_two_mul_int](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/condition-two-mul-int--de4736b51198dc6fc68a2ab9.md) | 39 | `result-track:de4736b51198dc6fc68a2ab9f9b1c26ca292e69ba2a7399976dd4b873c3092a6` |
| 4 | `lemma` | [condition_sub_two_mul_int_iff](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/condition-sub-two-mul-int-iff--aebab34d23c4c03d68368b11.md) | 49 | `result-track:aebab34d23c4c03d68368b118e52de4039b86e874afabadf467fa96673b02453` |
| 5 | `lemma` | [condition_toIcoMod_iff](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/condition-toicomod-iff--da5d4e0687d1b44aed0839d2.md) | 60 | `result-track:da5d4e0687d1b44aed0839d2e147a7e8ca6ebf444ec6763b02a1171725e57d91` |
| 6 | `lemma` | [mem_Ico_one_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/mem-ico-one-of-mem-ioo--1aae18ca98f73f666607a5f9.md) | 69 | `result-track:1aae18ca98f73f666607a5f9dc427385215b806aa37c3ef6bc94d2e50d88ff3e` |
| 7 | `lemma` | [mem_Ico_n_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/mem-ico-n-of-mem-ioo--a87f6712fcbc8fca4d62eaae.md) | 99 | `result-track:a87f6712fcbc8fca4d62eaaeb20c790525667f8e386295f3c1187c7dc13a0b11` |
| 8 | `lemma` | [not_condition_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/not-condition-of-mem-ioo--3c8497f4b6fca097c3fc7dae.md) | 147 | `result-track:3c8497f4b6fca097c3fc7daecd2a78f41a35c56bd4cf6c2265e2915afcf2ff58` |
| 9 | `lemma` | [condition_iff_of_mem_Ico](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/condition-iff-of-mem-ico--606a5f5cd3707da474ceb604.md) | 161 | `result-track:606a5f5cd3707da474ceb6045a3a84722c47c13c713e10d0fbf38de8ddfaaa92` |
| 10 | `theorem` | [result](../../../../mathematics/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/declarations/result--b065e0d0fca49cc062225aaa.md) | 174 | `result-track:b065e0d0fca49cc062225aaa19c73a8af0190649073ed9e1937aab0328839e9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
