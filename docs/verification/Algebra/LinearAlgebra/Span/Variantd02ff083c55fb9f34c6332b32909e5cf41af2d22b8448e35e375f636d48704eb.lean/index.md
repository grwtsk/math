# Verification target: GRWTSK.Algebra.LinearAlgebra.Span.Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e13b35669b03c229d596164a54261c5d491f580",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e13b35669b03c229d596164a54261c5d491f580`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/ker-lsingle--580dd693079276f17a6320d8.md) | 37 | `result-track:580dd693079276f17a6320d8a8761e483c7fb94c3b8f584331dc3aa3b331f722` |
| 2 | `theorem` | [lsingle_range_le_ker_lapply](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/lsingle-range-le-ker-lapply--ae3c8521819e758abc066717.md) | 40 | `result-track:ae3c8521819e758abc06671760088cc646a64017b7eb9d2b5e7d62a205a08984` |
| 3 | `theorem` | [iInf_ker_lapply_le_bot](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/iinf-ker-lapply-le-bot--d9df4d3524c90c73d34f8af8.md) | 49 | `result-track:d9df4d3524c90c73d34f8af8ed627d95a77ded64e265469b3fb144a3584863e0` |
| 4 | `theorem` | [iSup_lsingle_range](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/isup-lsingle-range--643878a8287dc56a4f9fe993.md) | 53 | `result-track:643878a8287dc56a4f9fe9932b5fcb909b5ac52f5c641dd2365f38bed141a70f` |
| 5 | `theorem` | [disjoint_lsingle_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/disjoint-lsingle-lsingle--147a50932e41219d4019564c.md) | 58 | `result-track:147a50932e41219d4019564ca190a8b26a5cd06f18c37edf014db758864cf53f` |
| 6 | `theorem` | [span_single_image](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/span-single-image--b639c766e6bfdfc2c93a09ae.md) | 75 | `result-track:b639c766e6bfdfc2c93a09ae33341186efbebcc407319bbe952c341955b41f32` |
| 7 | `theorem` | [Submodule.exists_finset_of_mem_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/submodule-exists-finset-of-mem-isup--ae9de743027970d2cbccaf63.md) | 86 | `result-track:ae9de743027970d2cbccaf630b336924b29d6c5aad2c042a08a18b6370d6ce50` |
| 8 | `theorem` | [Submodule.mem_iSup_iff_exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/submodule-mem-isup-iff-exists-finset--95849b2313ab72bddc7d5786.md) | 95 | `result-track:95849b2313ab72bddc7d57862d80aa40c83ea467ab75d49c61f229fcdb9b1b6a` |
| 9 | `theorem` | [Submodule.mem_sSup_iff_exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variantd02ff083c55fb9f34c6332b32909e5cf41af2d22b8448e35e375f636d48704eb.lean/declarations/submodule-mem-ssup-iff-exists-finset--a1db30a4f60e57a855d7d6c8.md) | 100 | `result-track:a1db30a4f60e57a855d7d6c871b2df143d64a6d3f538fb5d983ad897451864ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
