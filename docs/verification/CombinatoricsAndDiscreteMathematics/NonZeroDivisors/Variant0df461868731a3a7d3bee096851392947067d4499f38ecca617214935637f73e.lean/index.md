# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NonZeroDivisors.Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "003160b91b292ebcfcd63f79aaf63263156e2263",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `003160b91b292ebcfcd63f79aaf63263156e2263`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/nonzerodivisors--fd5bb9a4053c4bf9609b1754.md) | 29 | `declaration-track:fd5bb9a4053c4bf9609b175429b7d45fe5509c21033cbe3f978aa2e65109bd6a` |
| 2 | `theorem` | [mem_nonZeroDivisors_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mem-nonzerodivisors-iff--92f81767faa6bb7c3b4b77a2.md) | 45 | `result-track:92f81767faa6bb7c3b4b77a2253b9211574e55805070bfd489d7dfaeb6b1febd` |
| 3 | `theorem` | [mul_right_mem_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-right-mem-nonzerodivisors-eq-zero-iff--3c4e4c0e3b6c1278c1e72d37.md) | 48 | `result-track:3c4e4c0e3b6c1278c1e72d37991dd1f83c783cc4c7d194af3eb2f7bf8025d9cf` |
| 4 | `theorem` | [mul_right_coe_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-right-coe-nonzerodivisors-eq-zero-iff--c44aee4a870156298f04b80f.md) | 52 | `result-track:c44aee4a870156298f04b80f2925f291c7c1b62104268f7d194cd8798fa70578` |
| 5 | `theorem` | [mul_left_mem_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-left-mem-nonzerodivisors-eq-zero-iff--56038c2b4645f510e0638b1c.md) | 56 | `result-track:56038c2b4645f510e0638b1c718bcbb9669949127da95f0ed9cd531f3a7e1e4f` |
| 6 | `theorem` | [mul_left_coe_nonZeroDivisors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-left-coe-nonzerodivisors-eq-zero-iff--17542ce96aaaa8b409d4409e.md) | 61 | `result-track:17542ce96aaaa8b409d4409ebe09d4d93fdd5c98595a8316b16214efa69df454` |
| 7 | `theorem` | [mul_cancel_right_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-cancel-right-mem-nonzerodivisors--9116f4a268d65de1e51ed09e.md) | 65 | `result-track:9116f4a268d65de1e51ed09e00b6d3cae35075ad4b1a47cb595142c8ab98e01c` |
| 8 | `theorem` | [mul_cancel_right_coe_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-cancel-right-coe-nonzerodivisors--0eb112781abef5ec24597147.md) | 70 | `result-track:0eb112781abef5ec245971470cfefa5852ad782401d13ab00ee4dd674b902b22` |
| 9 | `theorem` | [mul_cancel_left_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-cancel-left-mem-nonzerodivisors--d908f4938e98e110dd4ef4b5.md) | 75 | `result-track:d908f4938e98e110dd4ef4b51bf0b10dd67a9b93f7108df00bde9bcfd26b4367` |
| 10 | `theorem` | [mul_cancel_left_coe_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-cancel-left-coe-nonzerodivisors--1e95000283a8086644dea669.md) | 79 | `result-track:1e95000283a8086644dea669ec2bc4726df081740300480740325971012c2d2f` |
| 11 | `theorem` | [nonZeroDivisors.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/nonzerodivisors-ne-zero--f3efb13c49a00078197ccc19.md) | 83 | `result-track:f3efb13c49a00078197ccc194538aaaa6a35b9cf5b1ef8d48c3a18e35749614f` |
| 12 | `theorem` | [nonZeroDivisors.coe_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/nonzerodivisors-coe-ne-zero--dc9a81c1693039ddddf28cde.md) | 87 | `result-track:dc9a81c1693039ddddf28cde9c9c3f59908bd9d3de37b5b49338217b248d5f5a` |
| 13 | `theorem` | [mul_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mul-mem-nonzerodivisors--2527813fef56d4a509be244f.md) | 91 | `result-track:2527813fef56d4a509be244f4ab052a56486dc28a3af59c6c8b65d32c34c3a0f` |
| 14 | `theorem` | [isUnit_of_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/isunit-of-mem-nonzerodivisors--386e25fcea8502edebd2b4f8.md) | 103 | `result-track:386e25fcea8502edebd2b4f8ed09380f590c3da0f9a05a0deb56c0e45e71475a` |
| 15 | `theorem` | [eq_zero_of_ne_zero_of_mul_right_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/eq-zero-of-ne-zero-of-mul-right-eq-zero--04089b566e6ae385d33ef54e.md) | 109 | `result-track:04089b566e6ae385d33ef54e79c060a2186c771382de8617864d16200eac5480` |
| 16 | `theorem` | [eq_zero_of_ne_zero_of_mul_left_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/eq-zero-of-ne-zero-of-mul-left-eq-zero--0913ff0748089b291ca792e6.md) | 114 | `result-track:0913ff0748089b291ca792e673f6cc62168f59e83cb07df6ffc19d2672df9456` |
| 17 | `theorem` | [mem_nonZeroDivisors_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mem-nonzerodivisors-of-ne-zero--9a3c42685a92f4fb5e4a1f9d.md) | 119 | `result-track:9a3c42685a92f4fb5e4a1f9d60d50ebd46e64c0e5f8d0983d694fc9c21ac486b` |
| 18 | `theorem` | [mem_nonZeroDivisors_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/mem-nonzerodivisors-iff-ne-zero--979e8e512155e1a30a345939.md) | 123 | `result-track:979e8e512155e1a30a3459393b52fdb4db12f9d246e5f2feff358ac76a9f501c` |
| 19 | `theorem` | [map_ne_zero_of_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/map-ne-zero-of-mem-nonzerodivisors--4c4b460a4c7e518edf4bd453.md) | 127 | `result-track:4c4b460a4c7e518edf4bd453e79503533ef78b98d7717a5619bdc4652ec46251` |
| 20 | `theorem` | [map_mem_nonZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/map-mem-nonzerodivisors--070b58ed0ac87a3cda1f2cfb.md) | 132 | `result-track:070b58ed0ac87a3cda1f2cfb04681cf0f47c1cd7a59a1611bf3e28ff5bf118d4` |
| 21 | `theorem` | [le_nonZeroDivisors_of_noZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/le-nonzerodivisors-of-nozerodivisors--d66ab658837597f83c2be173.md) | 137 | `result-track:d66ab658837597f83c2be1732d62f2cd185f0e2b57e7fdf40045153d83560c81` |
| 22 | `theorem` | [powers_le_nonZeroDivisors_of_noZeroDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/powers-le-nonzerodivisors-of-nozerodivisors--25060e7f9f966cd1f3091f04.md) | 143 | `result-track:25060e7f9f966cd1f3091f04bd9c15274cd76a43c71da35aebd6106206585194` |
| 23 | `theorem` | [map_le_nonZeroDivisors_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/map-le-nonzerodivisors-of-injective--cd496c66b203ea95ac5d0d9e.md) | 148 | `result-track:cd496c66b203ea95ac5d0d9e62c138c9a53693b3f5743e9cdab71b4ff38d2c6b` |
| 24 | `theorem` | [nonZeroDivisors_le_comap_nonZeroDivisors_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/nonzerodivisors-le-comap-nonzerodivisors-of-injective--f5e527abcd60f5845297fcfd.md) | 157 | `result-track:f5e527abcd60f5845297fcfd6ff912827841ac7b5d34900c1a158203043c06b7` |
| 25 | `theorem` | [prod_zero_iff_exists_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NonZeroDivisors/Variant0df461868731a3a7d3bee096851392947067d4499f38ecca617214935637f73e.lean/declarations/prod-zero-iff-exists-zero--80af8bf96e8e27c2a6cc9ea1.md) | 162 | `result-track:80af8bf96e8e27c2a6cc9ea1ee5e90b52205d8c080fe63953d915144e0f692a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
