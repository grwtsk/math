# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InnerProduct.Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d654f29b46490915bad4786b80ead89603304bb9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d654f29b46490915bad4786b80ead89603304bb9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.ConformalLinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conformalAt_iff'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/declarations/conformalat-iff--d08f446bc4cfaea44a218804.md) | 35 | `result-track:d08f446bc4cfaea44a218804f146a4c714f98c51f3e67ff626fa251e7e680222` |
| 2 | `theorem` | [conformalAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/declarations/conformalat-iff--a48ee39f447ddaac95429fd7.md) | 41 | `result-track:a48ee39f447ddaac95429fd734441bb735fc2436763c54694a7c2c1640563af8` |
| 3 | `def` | [conformalFactorAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/declarations/conformalfactorat--b44ec042448f46f3b579976d.md) | 47 | `declaration-track:b44ec042448f46f3b579976d33c02a1c3f060e7b929266bed35eb064d7ff293e` |
| 4 | `theorem` | [conformalFactorAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/declarations/conformalfactorat-pos--2ee1c3416e60dcf4815b219c.md) | 50 | `result-track:2ee1c3416e60dcf4815b219c486b0b97d98756e3324193d5b6c1d1a22e873a67` |
| 5 | `theorem` | [conformalFactorAt_inner_eq_mul_inner'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/declarations/conformalfactorat-inner-eq-mul-inner--f84b53fe4c6bbbb6b5e1fcf9.md) | 53 | `result-track:f84b53fe4c6bbbb6b5e1fcf9f2632f600f52a7c2686a8244abfb703b5cc6d9b0` |
| 6 | `theorem` | [conformalFactorAt_inner_eq_mul_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/InnerProduct/Variant8812a60776fc9e1bcc89ba2407b6877fda99c45c76ddeb6a7233ca68a105f35b.lean/declarations/conformalfactorat-inner-eq-mul-inner--6df0716156d549e9bca4fd15.md) | 57 | `result-track:6df0716156d549e9bca4fd155326d839ca6353553ceebbeda21c8eb32ae06a9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
