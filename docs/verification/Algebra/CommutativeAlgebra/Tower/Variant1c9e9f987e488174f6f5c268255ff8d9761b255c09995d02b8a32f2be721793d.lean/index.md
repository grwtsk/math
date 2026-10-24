# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Tower.Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3177903b3796921c22fe980397d43e8259088b65",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3177903b3796921c22fe980397d43e8259088b65`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeval_map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/declarations/aeval-map-algebramap--a009792593224f1b4600667d.md) | 35 | `result-track:a009792593224f1b4600667db9d36a8f192d9cd5711ec5622bb2c997c6b9ff2e` |
| 2 | `lemma` | [eval_map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/declarations/eval-map-algebramap--79d6b15c76ee96370b6d8fa6.md) | 39 | `result-track:79d6b15c76ee96370b6d8fa6ccbc1bbc7d512c8973512e850157ed039544cdee` |
| 3 | `theorem` | [aeval_algebraMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/declarations/aeval-algebramap-apply--95ee657152f348ee89b80b9d.md) | 51 | `result-track:95ee657152f348ee89b80b9d3a946fa07acac7c0c252a6c5be0c73e155e939b4` |
| 4 | `theorem` | [aeval_algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/declarations/aeval-algebramap-eq-zero-iff--168e5eb4483120fa774f37a5.md) | 56 | `result-track:168e5eb4483120fa774f37a5ddd1f7279af900872981f37ef58d3a0cdbc76266` |
| 5 | `theorem` | [aeval_algebraMap_eq_zero_iff_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/declarations/aeval-algebramap-eq-zero-iff-of-injective--3a849236fc820f9c6c982bdb.md) | 63 | `result-track:3a849236fc820f9c6c982bdbb195ab80b0fdc83fb4b0232be519f85744a0727c` |
| 6 | `theorem` | [aeval_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant1c9e9f987e488174f6f5c268255ff8d9761b255c09995d02b8a32f2be721793d.lean/declarations/aeval-coe--cd9b58597ed941f5eb8b681d.md) | 80 | `result-track:cd9b58597ed941f5eb8b681dd34511ffbfe1564f7fbecb01f3e41a3a903e7422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
