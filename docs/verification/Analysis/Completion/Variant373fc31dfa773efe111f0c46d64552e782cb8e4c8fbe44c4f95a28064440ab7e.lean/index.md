# Verification target: GRWTSK.Analysis.Completion.Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1028c1deeffc05b465f52378695b4be076d74959",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1028c1deeffc05b465f52378695b4be076d74959`.

Source path: `GRWTSK/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGrp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.HomCompletion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion--fbf1ec528fc8be28d209e9a9.md) | 52 | `declaration-track:fbf1ec528fc8be28d209e9a989a369d2aaef1b08285db0287ec0a643ac826f69` |
| 2 | `instance` | [completion_completeSpace](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-completespace--e6481f15bb1761c3f4ea1dde.md) | 58 | `declaration-track:e6481f15bb1761c3f4ea1dde8b3274a520521dd1d95d163f2f5ecb9e46a163ec` |
| 3 | `def` | [completion.incl](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-incl--b26dc6fdeede6c8416536d23.md) | 62 | `declaration-track:b26dc6fdeede6c8416536d23ad2de7696ac9226d2afcd4d61f7cd26928ae5e3f` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-norm-incl-eq--03417bf85c7c6713fac126d6.md) | 68 | `result-track:03417bf85c7c6713fac126d638d047607117822100127087bd47e2e90979b729` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-map-normnoninc--f8cc1275748c24eb95d99eab.md) | 71 | `result-track:f8cc1275748c24eb95d99eabdb9459a8d49aed14a499b1ca780c9b0b910e12a1` |
| 6 | `def` | [completion.mapHom](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-maphom--69aa598931692fa59cec30ef.md) | 83 | `declaration-track:69aa598931692fa59cec30ef79ab2854e34c572e346cf4fae93b06c93beded8e` |
| 7 | `theorem` | [completion.map_zero](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-map-zero--dd9398f5a2a63fbd84cc37ff.md) | 88 | `result-track:dd9398f5a2a63fbd84cc37ffd6abc081301958bed26701291196ad4a0062d38b` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/instance--aca3a82b1b308e639bcb1919.md) | 91 | `declaration-track:aca3a82b1b308e639bcb1919dd8ffbd9dcf9f22a4d3858c2c70381a1b83e7166` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/instance--d4cb441fe6fd955c2077bf7b.md) | 93 | `declaration-track:d4cb441fe6fd955c2077bf7bd74c4ffd1ff12acd6c6ce6c2bdd3581b6a0fd532` |
| 10 | `def` | [completion.lift](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-lift--fe072a570050cbbc47565c27.md) | 99 | `declaration-track:fe072a570050cbbc47565c274747f9d85b775797e64ac1f17d8085d9621ae38b` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-lift-comp-incl--ab666cb35fbfeb87e6d0296d.md) | 106 | `result-track:ab666cb35fbfeb87e6d0296d5922cc91df96951e7e7909b4e9f62e96387f84fb` |
| 12 | `theorem` | [completion.lift_unique](../../../../mathematics/Analysis/Completion/Variant373fc31dfa773efe111f0c46d64552e782cb8e4c8fbe44c4f95a28064440ab7e.lean/declarations/completion-lift-unique--1ce537a5d7d785fd52802fca.md) | 110 | `result-track:1ce537a5d7d785fd52802fca75434ec449000a16f36f8c14653d26bfaeccbccd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
