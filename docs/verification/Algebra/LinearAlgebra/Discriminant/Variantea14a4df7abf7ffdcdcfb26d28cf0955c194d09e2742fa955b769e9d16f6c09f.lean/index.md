# Verification target: GRWTSK.Algebra.LinearAlgebra.Discriminant.Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4de024c130ad4e2d05b480fe6523668cac6631af",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4de024c130ad4e2d05b480fe6523668cac6631af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr--bb549c4ba634c8730c5cbc2e.md) | 74 | `declaration-track:bb549c4ba634c8730c5cbc2ef0ba705e993cfc0232e4dd8d355c3442635e9203` |
| 2 | `theorem` | [discr_def](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-def--c62746afd66c0a084fb7b478.md) | 77 | `result-track:c62746afd66c0a084fb7b478e42ad42cb2343d994d7652ce9ae32d410e4ef255` |
| 3 | `theorem` | [discr_eq_discr_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-eq-discr-of-algequiv--1f708fbf61089943cd7a4c1b.md) | 81 | `result-track:1f708fbf61089943cd7a4c1b25faa734207dbaf2fedeb66732c45960dae1062a` |
| 4 | `theorem` | [discr_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-reindex--3fdf0c2207f1043fade52606.md) | 91 | `result-track:3fdf0c2207f1043fade52606449df28fdc676120c4c194a0956fe0694de48002` |
| 5 | `theorem` | [discr_zero_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-zero-of-not-linearindependent--c12037316ab4662580e0ad7e.md) | 95 | `result-track:c12037316ab4662580e0ad7ef23a27d29f3fa544cb552bdb48dc36b59e8e39b7` |
| 6 | `theorem` | [discr_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-of-matrix-vecmul--292e73baebf232a360611fc6.md) | 114 | `result-track:292e73baebf232a360611fc6d63b096cb0f7e0e83587082740db2e8bd037c00a` |
| 7 | `theorem` | [discr_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-of-matrix-mulvec--4ce8e07349bd5a2602ca6eac.md) | 121 | `result-track:4ce8e07349bd5a2602ca6eacadf633218e7abb6df92cc5c5db4611b21ad642d9` |
| 8 | `theorem` | [discr_not_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-not-zero-of-basis--7ea2d5c3d4c100a74a454300.md) | 135 | `result-track:7ea2d5c3d4c100a74a454300906a6d7397cadf27b37db654efd03fc217926aac` |
| 9 | `theorem` | [discr_isUnit_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-isunit-of-basis--b18aaaa14567707dc8264fc0.md) | 142 | `result-track:b18aaaa14567707dc8264fc06b5cd5d03141448762a0a0217193c3393cdb6e7c` |
| 10 | `theorem` | [discr_eq_det_embeddingsMatrixReindex_pow_two](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-eq-det-embeddingsmatrixreindex-pow-two--a936f281ac23077a8021e272.md) | 151 | `result-track:a936f281ac23077a8021e2727863d66b8159d5d9356eb2f6a79e386bc18063bc` |
| 11 | `theorem` | [discr_powerBasis_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-powerbasis-eq-prod--f81198309ac472797d5c379e.md) | 158 | `result-track:f81198309ac472797d5c379ec2eaa5844ce613e20f945382b02f76c146b30cc1` |
| 12 | `theorem` | [discr_powerBasis_eq_prod'](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-powerbasis-eq-prod--0efb46db6f30daa2a3b5bf3c.md) | 167 | `result-track:0efb46db6f30daa2a3b5bf3c3b4ec41964512a495b563dc5c7c9d1c09279a709` |
| 13 | `theorem` | [discr_powerBasis_eq_prod''](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-powerbasis-eq-prod--f0ada5284bbf20ae22ca93ca.md) | 177 | `result-track:f0ada5284bbf20ae22ca93ca3bd8840c8ad42cca1ae411a50dfa628f6531e21d` |
| 14 | `theorem` | [discr_powerBasis_eq_norm](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-powerbasis-eq-norm--19554ecea556cb21be9a2b79.md) | 209 | `result-track:19554ecea556cb21be9a2b79de1035581609391c08dc8eb4179b09a13c69dccb` |
| 15 | `theorem` | [discr_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-isintegral--578a21c04e974e981c74b33a.md) | 260 | `result-track:578a21c04e974e981c74b33a3d736b9248216d54a11e443b04b8a09112be40cc` |
| 16 | `theorem` | [discr_mul_isIntegral_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-mul-isintegral-mem-adjoin--68c432de72f7a12cd277a7c5.md) | 269 | `result-track:68c432de72f7a12cd277a7c5eab015a8073a6b6e174f11ec460283b8068036fb` |
| 17 | `theorem` | [discr_eq_discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/declarations/discr-eq-discr--c000e41ce2514a5d8f334b17.md) | 312 | `result-track:c000e41ce2514a5d8f334b17a0ab3051cef2a0fa9f505663fda061731a485b30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
