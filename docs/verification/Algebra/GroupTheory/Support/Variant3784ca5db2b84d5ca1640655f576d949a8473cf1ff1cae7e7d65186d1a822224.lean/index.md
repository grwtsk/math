# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5987cd4afff0aa7224bb6d4686020e93f76682d8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5987cd4afff0aa7224bb6d4686020e93f76682d8`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BourbakiWitt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_coeff_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-mul-subset--1e49bf4a68abed50b027a75c.md) | 35 | `result-track:1e49bf4a68abed50b027a75cf1189ea662ff2b30475ce68773ea4530312cf941` |
| 2 | `lemma` | [support_coeff_single_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-single-mul-subset--d1e26dbf2bf468ef388f0bc8.md) | 46 | `result-track:d1e26dbf2bf468ef388f0bc80b9966e53c9549ad423b808155d7813c3a27d0a6` |
| 3 | `theorem` | [support_coeff_mul_single_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-mul-single-subset--e20f3785b1f11d715e6098de.md) | 53 | `result-track:e20f3785b1f11d715e6098de8e7be48e74e3f84d2536d84c0068aa12abb4f163` |
| 4 | `theorem` | [support_coeff_single_mul_eq_image](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-single-mul-eq-image--06ccce7b7fb9fd87c30edee4.md) | 60 | `result-track:06ccce7b7fb9fd87c30edee4766f68597dc9721bc173b2216a88cdf5d5754963` |
| 5 | `theorem` | [support_coeff_mul_single_eq_image](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-mul-single-eq-image--5d7a8d0f6558b8ea277be353.md) | 68 | `result-track:5d7a8d0f6558b8ea277be3536c57897600d1c6b7224a1a61cc6871ca0d34f319` |
| 6 | `theorem` | [support_coeff_mul_single](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-mul-single--3898a795d067add0e581a427.md) | 79 | `result-track:3898a795d067add0e581a427ee5a5b28aa1fe162d3372badb1fee48e36a671ad` |
| 7 | `theorem` | [support_coeff_single_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-single-mul--e038d4ba14f2878f96eee5cb.md) | 87 | `result-track:e038d4ba14f2878f96eee5cb852dad4ec7c65d6f169da6642ebfd12d8880d5e3` |
| 8 | `lemma` | [support_coeff_one_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-one-subset--11eb6a214ae53e2596f98a3e.md) | 98 | `result-track:11eb6a214ae53e2596f98a3e502a3a8c60154eec0790710a5ac8bd3c9a00ff74` |
| 9 | `lemma` | [support_coeff_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/support-coeff-one--2b0814e7be66d7597727d3ac.md) | 104 | `result-track:2b0814e7be66d7597727d3ac3ecb47452336cf3df2a093aebadd6507c795d98b` |
| 10 | `theorem` | [mem_span_support_coeff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/mem-span-support-coeff--e3249a7d257f11245c1126f7.md) | 112 | `result-track:e3249a7d257f11245c1126f711f0fd4e213cc6c17dfa68631e60ecb9316b0b2a` |
| 11 | `theorem` | [mem_span_support_coeff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/declarations/mem-span-support-coeff--a0de5ac3f7c25c371be137d9.md) | 132 | `result-track:a0de5ac3f7c25c371be137d9f643b6b90702832ecc24a190426365bf5393db89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
