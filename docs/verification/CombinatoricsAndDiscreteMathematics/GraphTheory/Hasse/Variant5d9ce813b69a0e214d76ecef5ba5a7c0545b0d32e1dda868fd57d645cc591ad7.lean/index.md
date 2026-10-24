# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Hasse.Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0991713061daf01d13f2518f87c6dfb7132349b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0991713061daf01d13f2518f87c6dfb7132349b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Relation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hasse--c4abb9eb78689e44b3434b00.md) | 44 | `declaration-track:c4abb9eb78689e44b3434b00a5e57f33d260ddc78284bcf84a3150fd6d193c0a` |
| 2 | `theorem` | [hasse_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hasse-adj--9c72d6cc1c0f198eefe5b5a0.md) | 53 | `result-track:9c72d6cc1c0f198eefe5b5a031acdb95fc2a5989e522fd958e79fd0a05fd3681` |
| 3 | `def` | [hasseDualIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hassedualiso--e7719d1edb2cb4a3f9aede43.md) | 58 | `declaration-track:e7719d1edb2cb4a3f9aede43d4539c7c9339c6a814605f9d4119fe76d472e5ae` |
| 4 | `theorem` | [hasseDualIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hassedualiso-apply--be7bbdd281c621dfa64660a8.md) | 63 | `result-track:be7bbdd281c621dfa64660a88ec360d5290085bcaf9dcaf33fb35ab037981f6f` |
| 5 | `theorem` | [hasseDualIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hassedualiso-symm-apply--dc501a442ab36b89a916b5a0.md) | 68 | `result-track:dc501a442ab36b89a916b5a08bb3ea2470d22b48f8f244cab9b0116835f08fdf` |
| 6 | `theorem` | [hasse_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hasse-prod--82843d038d8c152572197912.md) | 79 | `result-track:82843d038d8c152572197912c6df9174eb4288b9e5cda3bfca3fc4b1ff385ba2` |
| 7 | `theorem` | [hasse_preconnected_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hasse-preconnected-of-succ--89073af42415e5f26a0714c3.md) | 91 | `result-track:89073af42415e5f26a0714c3a1893e4ff15518d6b58b879b3e592e03a22fc53c` |
| 8 | `theorem` | [hasse_preconnected_of_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/hasse-preconnected-of-pred--4436c73834b59baab35f4481.md) | 99 | `result-track:4436c73834b59baab35f44815d44760547a3d133bdb857ad066274d26c85d771` |
| 9 | `def` | [pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/pathgraph--39f60c61eb043c7a3294e26a.md) | 110 | `declaration-track:39f60c61eb043c7a3294e26a7a74f799816a2cc23d5ab33286f57cb7000e87e7` |
| 10 | `theorem` | [pathGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/pathgraph-preconnected--f5aa000a1616a288d19f75fa.md) | 114 | `result-track:f5aa000a1616a288d19f75faa8bfcb91a3a17fa8b4404fb82e7877476aa26561` |
| 11 | `theorem` | [pathGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant5d9ce813b69a0e214d76ecef5ba5a7c0545b0d32e1dda868fd57d645cc591ad7.lean/declarations/pathgraph-connected--dc696cbdd3add6a81ff7b7fd.md) | 118 | `result-track:dc696cbdd3add6a81ff7b7fd68caa4ebba17e22f7825e4cf220a07bb2522096e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
