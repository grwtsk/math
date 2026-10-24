# Verification target: GRWTSK.Analysis.Completion.Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1861b38f695eca1e8deb6e7f76bce20d0a7d17c9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1861b38f695eca1e8deb6e7f76bce20d0a7d17c9`.

Source path: `GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGroupCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.HomCompletion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion--510bf5545290ffc5313d3a94.md) | 47 | `declaration-track:510bf5545290ffc5313d3a94d30e4999101d6a6aa0e53909a3a013f7726a39e6` |
| 2 | `instance` | [completion_completeSpace](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-completespace--b58bd6a8cd4195f1327b5fa9.md) | 54 | `declaration-track:b58bd6a8cd4195f1327b5fa9f816927359193a0b945064f81ea1576450d4c254` |
| 3 | `def` | [completion.incl](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-incl--33109a7ac1716dfe912295a5.md) | 60 | `declaration-track:33109a7ac1716dfe912295a52a0b601a35e7d23216e5f59724bb0a2f92c448fd` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-norm-incl-eq--2c63e2d34ba8dbd694515248.md) | 66 | `result-track:2c63e2d34ba8dbd694515248317ecd043b865d435e7ea502b9d7e764e20d25e8` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-map-normnoninc--47c91243ff0a6b8b5d7a6a16.md) | 70 | `result-track:47c91243ff0a6b8b5d7a6a16ea1836ba28e863958a45041a9941c7369144c348` |
| 6 | `def` | [completion.mapHom](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-maphom--ccf018c9fd470ad828a11bc5.md) | 83 | `declaration-track:ccf018c9fd470ad828a11bc55a41bc8fd7c814c075fed36d59da65295fa7fcc2` |
| 7 | `theorem` | [completion.map_zero](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-map-zero--a6d132a84c2d5a55bd8408d0.md) | 92 | `result-track:a6d132a84c2d5a55bd8408d090be0173ec75ea7e3a2d87d19706b50c41dabf00` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/instance--be24cf639381d1e3c073b461.md) | 97 | `declaration-track:be24cf639381d1e3c073b461a98e153cf76e65cb85a251c7dfefedd77b538cb9` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/instance--3b2670fdcc454f88a3a9ca85.md) | 115 | `declaration-track:3b2670fdcc454f88a3a9ca85a6d6c9c30a84f222101cc9a180ea4d8360691fed` |
| 10 | `def` | [completion.lift](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-lift--719c1664c497f82568827f06.md) | 121 | `declaration-track:719c1664c497f82568827f0644ad30fdb9700635fe27e62da2e28baf71944abd` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-lift-comp-incl--98b415f9ba345498c08ace84.md) | 128 | `result-track:98b415f9ba345498c08ace8460abed44eaac749b88ae9948e3e7252dcdd87c81` |
| 12 | `theorem` | [completion.lift_unique](../../../../mathematics/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/declarations/completion-lift-unique--4a48dab3abf399907ba9ad7a.md) | 133 | `result-track:4a48dab3abf399907ba9ad7a80840a778496c0f2eb8c3ac5b8c9e46b4f426c84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
