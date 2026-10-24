# Verification target: GRWTSK.Analysis.Complex.FiniteRemovablePatching

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f4552b5960bf0381cecd43a7ebf4fd09df81f4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/FiniteRemovablePatching.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f4552b5960bf0381cecd43a7ebf4fd09df81f4`.

Source path: `GRWTSK/Analysis/Complex/FiniteRemovablePatching.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/FiniteRemovablePatching.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalRemovalData](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/localremovaldata--96a5ea339b7846b6c010213d.md) | 38 | `declaration-track:96a5ea339b7846b6c010213dda4b1def2c9e6118e115089cb174ce2ddab4d6a5` |
| 2 | `def` | [filled](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/filled--e332998b812a4ba32a29d381.md) | 49 | `declaration-track:e332998b812a4ba32a29d381d7e79018568cb75059b76833e040a4ee84faf310` |
| 3 | `theorem` | [filled_of_mem](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/filled-of-mem--4d594e45b06a709587c89e02.md) | 53 | `result-track:4d594e45b06a709587c89e029e3dc168e07a847c8cc045d2fe55d4d107c602fc` |
| 4 | `theorem` | [filled_of_not_mem](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/filled-of-not-mem--22061493d317b2412ecc5ec0.md) | 58 | `result-track:22061493d317b2412ecc5ec066f567f4b10d33ad36dcf7044e4ece127737d742` |
| 5 | `theorem` | [eventually_not_mem_erase](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/eventually-not-mem-erase--c4303a8cd2bc63c8741515bd.md) | 64 | `result-track:c4303a8cd2bc63c8741515bd528b94ef349592f48bc6a56797f88fcb7178ea28` |
| 6 | `theorem` | [filled_eventuallyEq_germ](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/filled-eventuallyeq-germ--d353cddda4ffabbed60b3156.md) | 75 | `result-track:d353cddda4ffabbed60b31567443adfee4d2ec8b2652778bf628587839ae097b` |
| 7 | `theorem` | [filled_eventuallyEq_raw](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/filled-eventuallyeq-raw--319b9431a1d529983bb94f7e.md) | 93 | `result-track:319b9431a1d529983bb94f7ed4a5d077b44ef5d349c838043df55752eb6ec0bd` |
| 8 | `theorem` | [analyticAt_filled_of_mem](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/analyticat-filled-of-mem--7b8b3055df7c46370a6f88b8.md) | 105 | `result-track:7b8b3055df7c46370a6f88b8b7bbce6b535fcca5f3960999c2511385112c96c6` |
| 9 | `theorem` | [analyticAt_filled_of_not_mem](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/analyticat-filled-of-not-mem--dc64db186c7ce68fb5365426.md) | 111 | `result-track:dc64db186c7ce68fb53654268298a4e04ad1d25fe199fbb570b0b8660d64fa87` |
| 10 | `theorem` | [analyticOnNhd_filled](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/analyticonnhd-filled--6289e7115aa73c73df0ff0e7.md) | 118 | `result-track:6289e7115aa73c73df0ff0e79d4ea7effab47c28fb69bed4e6d9a30466526366` |
| 11 | `theorem` | [differentiableOn_filled](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/differentiableon-filled--5428b7a4eae34854df48336a.md) | 129 | `result-track:5428b7a4eae34854df48336a76744d5fb1921f2afd1725ca3456fad3f987d6be` |
| 12 | `theorem` | [continuousOn_filled](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/continuouson-filled--df5e055572540ba8847577a2.md) | 138 | `result-track:df5e055572540ba8847577a271594c6ed6f85bf5cf533d9460f8e2ba2f4849fa` |
| 13 | `theorem` | [filled_eq_raw](../../../../mathematics/Analysis/ComplexAnalysis/FiniteRemovablePatching.lean/declarations/filled-eq-raw--5582546cb2692dc54d89bab1.md) | 147 | `result-track:5582546cb2692dc54d89bab1e011fd2bf2179359df21e7e131c92b856c92ac90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
