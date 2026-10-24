# Verification target: GRWTSK.Algebra.Complete.Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "053ade2ccb9886d3986372bd5d49f38607684563",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `053ade2ccb9886d3986372bd5d49f38607684563`.

Source path: `GRWTSK/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Domain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Truncated` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_coeff_eq_iff_le_sub_coeff_eq_zero](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/declarations/le-coeff-eq-iff-le-sub-coeff-eq-zero--537dec831e70040e6c26e5e8.md) | 41 | `result-track:537dec831e70040e6c26e5e888eaac62e7f9099ca832a6eca8e8b3caa7f19a2e` |
| 2 | `theorem` | [eq_zero_of_p_mul_eq_zero](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/declarations/eq-zero-of-p-mul-eq-zero--e88115abe4da26aeff47bdb8.md) | 61 | `result-track:e88115abe4da26aeff47bdb89812ca8601799c4f17b6572c55610e04f3a36b61` |
| 3 | `theorem` | [mem_span_p_iff_coeff_zero_eq_zero](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/declarations/mem-span-p-iff-coeff-zero-eq-zero--769b29635da63f40ae13d604.md) | 69 | `result-track:769b29635da63f40ae13d60440a3b9e218b55f3a11bbd7a231580e2d867be2f5` |
| 4 | `theorem` | [mem_span_p_pow_iff_le_coeff_eq_zero](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/declarations/mem-span-p-pow-iff-le-coeff-eq-zero--abbc3a47853b49e380af7bfa.md) | 86 | `result-track:abbc3a47853b49e380af7bfa0c17b2154b6ad7cf45ee849036cbd78a63752418` |
| 5 | `instance` | [isAdicCompleteIdealSpanP](../../../../mathematics/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/declarations/isadiccompleteidealspanp--6517a7fcfd450c02c39935d5.md) | 108 | `declaration-track:6517a7fcfd450c02c39935d5145a22cbd5fd14db250bd8d711d7c8f530d33bc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
