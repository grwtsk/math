# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c424e60d5484127a8390b40680e3c056803ca8c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c424e60d5484127a8390b40680e3c056803ca8c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/congr--56032e0758321cdb6b80262e.md) | 41 | `declaration-track:56032e0758321cdb6b80262eb2ed71a921662af064a038a8e8c0e31d1087cf07` |
| 2 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/basechange--bbe2e1aca901f4fac96c4d08.md) | 45 | `declaration-track:bbe2e1aca901f4fac96c4d084547db2dcb2ede789fb738d7d1e4159062698bad` |
| 3 | `theorem` | [baseChange_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/basechange-apply-tmul--ed1a7e650b7d42fc9960e8c6.md) | 49 | `result-track:ed1a7e650b7d42fc9960e8c6cc2cc7b0e1409e6eb865e95f6cc6766cd8d246c2` |
| 4 | `theorem` | [baseChange_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/basechange-basechange--82a121da110f9b54a1adb811.md) | 56 | `result-track:82a121da110f9b54a1adb811b03b74d27b51634b12acfeb42aa42ae9b753c97b` |
| 5 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todual--82ab5a895c6a15fc560cd964.md) | 73 | `declaration-track:82ab5a895c6a15fc560cd964f333512530393ab034774c16ee464b76a48fda6a` |
| 6 | `theorem` | [toDual_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todual-comp-apply--cd93016ecb7f18874c4773d4.md) | 77 | `result-track:cd93016ecb7f18874c4773d4e3ceddaa84de5cc63489d5b6c81dcae477857158` |
| 7 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todual-apply--af6d8b184853658498621150.md) | 81 | `result-track:af6d8b1848536584986211505eef3faa594b0a75c7e240b77cc7068c11edfb02` |
| 8 | `def` | [toDualBaseChangeAux](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todualbasechangeaux--5bc01c6ab17fc82ffd80b9c8.md) | 89 | `declaration-track:5bc01c6ab17fc82ffd80b9c8f650b19b2a4f510ed76c23214e5cf3e299b4186d` |
| 9 | `theorem` | [toDualBaseChangeAux_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todualbasechangeaux-tmul--586b56ce8f399fea9f50d4fc.md) | 101 | `result-track:586b56ce8f399fea9f50d4fc625b8f5fc30a074cb461a5d6d5980adcfe811cce` |
| 10 | `def` | [toDualBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todualbasechange--c12b2fb6a9ad03fe1edc5f37.md) | 110 | `declaration-track:c12b2fb6a9ad03fe1edc5f37d7e12c08522a2b5403bbf19a20f0e42b8c6b2f7e` |
| 11 | `theorem` | [toDualBaseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/todualbasechange-tmul--5c8ac31f960758f6de869a26.md) | 130 | `result-track:5c8ac31f960758f6de869a26e712c9362cf0306fe41307e63dc2aa5eab3847d9` |
| 12 | `theorem` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/declarations/dual--5641261791ebf9ebf997ad54.md) | 134 | `result-track:5641261791ebf9ebf997ad547308b145c0adb297fd3dc08f8fcf7fc8e9cd8df8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
