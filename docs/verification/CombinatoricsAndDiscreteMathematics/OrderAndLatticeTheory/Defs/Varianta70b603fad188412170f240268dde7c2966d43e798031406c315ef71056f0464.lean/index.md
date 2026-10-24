# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60a2da07a025b77c24f6809c5721baf80b55a4a2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60a2da07a025b77c24f6809c5721baf80b55a4a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConditionallyCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelattice--61442a8f0c0dbec5966b0153.md) | 42 | `declaration-track:61442a8f0c0dbec5966b0153feae140257890b10703b4c8d9898875daba775af` |
| 2 | `class` | [ConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelinearorder--ba2782a0eeb4bd56e81cb6b7.md) | 61 | `declaration-track:ba2782a0eeb4bd56e81cb6b702f976a9f062a8b77edc77e325e564496492b9ba` |
| 3 | `class` | [ConditionallyCompleteLinearOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelinearorderbot--06c2185817066e403f013406.md) | 88 | `declaration-track:06c2185817066e403f013406e1c63ff41eab55204f447b4abef33f06803a3986` |
| 4 | `abbrev` | [WellFoundedLT.conditionallyCompleteLinearOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/wellfoundedlt-conditionallycompletelinearorderbot--eb5f355af67ed5e7a5a36275.md) | 98 | `declaration-track:eb5f355af67ed5e7a5a36275f74a925552eb49491fd817aef6e3fb6647a6d30b` |
| 5 | `def` | [conditionallyCompleteLatticeOfsSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelatticeofssup--1984f943a31a9ec42543cd28.md) | 141 | `declaration-track:1984f943a31a9ec42543cd28a021d67dde5b3ea36c63ae6a2c3354193baf7f70` |
| 6 | `def` | [conditionallyCompleteLatticeOfsInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelatticeofsinf--19a6daa9ccfc13e33d99492c.md) | 192 | `declaration-track:19a6daa9ccfc13e33d99492ca6bae8bea19b1d72144c7a879ba619b2eb827850` |
| 7 | `def` | [conditionallyCompleteLatticeOfLatticeOfsSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelatticeoflatticeofssup--bcf47fa3fc2206780728afcf.md) | 231 | `declaration-track:bcf47fa3fc2206780728afcfaf826f9b6d2c881af5e41aa8f55e3f086be46d94` |
| 8 | `def` | [conditionallyCompleteLatticeOfLatticeOfsInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Varianta70b603fad188412170f240268dde7c2966d43e798031406c315ef71056f0464.lean/declarations/conditionallycompletelatticeoflatticeofsinf--8a38f7781539a5b519935477.md) | 243 | `declaration-track:8a38f7781539a5b519935477858e17fc2d772a3d16afb0dcae1cf736983342b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
