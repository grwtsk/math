# Verification target: GRWTSK.Topology.CofilteredLimit.Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b38af71e33900c7d84b5a3f47d85f4b098bea850",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/index.md) · [Full source](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b38af71e33900c7d84b5a3f47d85f4b098bea850`.

Source path: `GRWTSK/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Cofiltered` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_clopen_of_cofiltered](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/declarations/exists-clopen-of-cofiltered--994669eb880de6c4d2c398c8.md) | 46 | `result-track:994669eb880de6c4d2c398c81aaabe3db940393c49b48adbba4b345a8781fc99` |
| 2 | `theorem` | [exists_locallyConstant_fin_two](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/declarations/exists-locallyconstant-fin-two--d3bfcff7c609fcaf81463fa9.md) | 118 | `result-track:d3bfcff7c609fcaf81463fa9cfb13df506dc4d7dbe54ec360b9f463482dcb465` |
| 3 | `theorem` | [exists_locallyConstant_finite_aux](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/declarations/exists-locallyconstant-finite-aux--297ab33c1dea894a268c5c4b.md) | 131 | `result-track:297ab33c1dea894a268c5c4b82cfb9d6d10041031ee50eb6f6fda55dc3ef2f98` |
| 4 | `theorem` | [exists_locallyConstant_finite_nonempty](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/declarations/exists-locallyconstant-finite-nonempty--8cc79d5c05554ea2dd36f220.md) | 176 | `result-track:8cc79d5c05554ea2dd36f2207c27b73afa6c0bdc7a21ae342d08f176acadd4d4` |
| 5 | `theorem` | [exists_locallyConstant](../../../../mathematics/Topology/CofilteredLimit/Variantee0be0e7e5dfe7deda8fef5b75e9d0bf6886d4125df49ef2bf3fba9370c4ae9a.lean/declarations/exists-locallyconstant--e99857ebfaef53d4b6114325.md) | 208 | `result-track:e99857ebfaef53d4b611432534de0d71057e68418b7028fe2d812ab64c2f237e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
