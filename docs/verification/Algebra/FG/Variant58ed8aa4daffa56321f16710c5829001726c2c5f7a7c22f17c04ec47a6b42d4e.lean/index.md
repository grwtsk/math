# Verification target: GRWTSK.Algebra.FG.Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b90fc0bd5566a7c5c5cf9abb8e74fe9967ba3e4d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/index.md) · [Full source](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b90fc0bd5566a7c5c5cf9abb8e74fe9967ba3e4d`.

Source path: `GRWTSK/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_trans](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-trans--973ffacfe1a00bbeeb02a9a5.md) | 48 | `result-track:973ffacfe1a00bbeeb02a9a59c9a709d0268b8b65c6b61132721c199ad1c6bee` |
| 2 | `def` | [FG](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg--f223118c62916ec1f04b303d.md) | 99 | `declaration-track:f223118c62916ec1f04b303dcf57b742daa42540b22e54c373e8a785772599c9` |
| 3 | `theorem` | [fg_adjoin_finset](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-adjoin-finset--ce4d998865b34eb63b743e57.md) | 102 | `result-track:ce4d998865b34eb63b743e575cef2fdd8c5e6e5885a62dfa677b66ee332f775e` |
| 4 | `theorem` | [fg_def](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-def--93bc875188ecb50236ca28d8.md) | 105 | `result-track:93bc875188ecb50236ca28d8bdd052f5c3cfb1591279b45cd7e388a3b424001c` |
| 5 | `theorem` | [fg_bot](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-bot--e4e5167bc96f24eb70a26e14.md) | 108 | `result-track:e4e5167bc96f24eb70a26e14a488381495e8957f526d698db38c8991e402a1b3` |
| 6 | `theorem` | [fg_of_fg_toSubmodule](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-of-fg-tosubmodule--6f1408c4d73747039a62cc4e.md) | 111 | `result-track:6f1408c4d73747039a62cc4ee0baa6d1685ae15fc3c85f0ba532602908f69a80` |
| 7 | `theorem` | [fg_of_noetherian](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-of-noetherian--7f5bdfa16e4fcf806abc9a46.md) | 120 | `result-track:7f5bdfa16e4fcf806abc9a4697e4af923f477d723095eca5ae13aea1f98cb37c` |
| 8 | `theorem` | [fg_of_submodule_fg](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-of-submodule-fg--a8def2a4d71e53a5f8db9104.md) | 123 | `result-track:a8def2a4d71e53a5f8db9104e81f48c00683b95f6d65c2162c3433dff84c7bc9` |
| 9 | `theorem` | [FG.prod](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-prod--3e686f3f0bef96fe8ea29e61.md) | 129 | `result-track:3e686f3f0bef96fe8ea29e6114972deb979915e1151173040f8041b5f237a12d` |
| 10 | `theorem` | [FG.map](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-map--339271c0c10848acef0406bd.md) | 141 | `result-track:339271c0c10848acef0406bd176fc7ac37a668dd5ad612a52f3e85b8bac71a1f` |
| 11 | `theorem` | [fg_of_fg_map](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-of-fg-map--215640dc9e6b85dbe619a126.md) | 148 | `result-track:215640dc9e6b85dbe619a12612b2710c501688da94ae8f2b19f6208a22dd9d1a` |
| 12 | `theorem` | [fg_top](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/fg-top--827260ae56b16e5dae0da507.md) | 157 | `result-track:827260ae56b16e5dae0da507f28b51a276dd946544c8f62b1ced9c0bfedfd587` |
| 13 | `theorem` | [induction_on_adjoin](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/induction-on-adjoin--8ff24f64941bcc7f25ae51f4.md) | 165 | `result-track:8ff24f64941bcc7f25ae51f4474b5a7bf344e487b4f9957cc726371a2f618289` |
| 14 | `instance` | [AlgHom.isNoetherianRing_range](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/alghom-isnoetherianring-range--bc6a49b11fe463ddc3b63eb3.md) | 184 | `declaration-track:bc6a49b11fe463ddc3b63eb335d36275368ef110ee6ba9a7066c378e9cb32a76` |
| 15 | `theorem` | [isNoetherianRing_of_fg](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/isnoetherianring-of-fg--754a01e009e05a37f108e3aa.md) | 195 | `result-track:754a01e009e05a37f108e3aad6353961f03c01397f9594da106598a84beb134e` |
| 16 | `theorem` | [is_noetherian_subring_closure](../../../../mathematics/Algebra/FG/Variant58ed8aa4daffa56321f16710c5829001726c2c5f7a7c22f17c04ec47a6b42d4e.lean/declarations/is-noetherian-subring-closure--f7ce2ed4f9d94811dd43b525.md) | 200 | `result-track:f7ce2ed4f9d94811dd43b5250948eb62e3b23284d409015e561592036d1d9012` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
