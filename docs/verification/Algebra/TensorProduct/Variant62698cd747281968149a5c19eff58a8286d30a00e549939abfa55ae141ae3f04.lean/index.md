# Verification target: GRWTSK.Algebra.TensorProduct.Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa403e669911d76712fff2cbbd75e35539122a57",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/index.md) · [Full source](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa403e669911d76712fff2cbbd75e35539122a57`.

Source path: `GRWTSK/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Kaehler.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mulActionBaseChange](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/mulactionbasechange--fc366907e6421d491fc87168.md) | 39 | `declaration-track:fc366907e6421d491fc87168d994daa3ccbec2b465c98f066ee60f05f9ba79a5` |
| 2 | `lemma` | [mulActionBaseChange_smul_tmul](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/mulactionbasechange-smul-tmul--165076215392a09a6c69f334.md) | 45 | `result-track:165076215392a09a6c69f334e9ebe7611598c2f4290a8624754a863d22c1dfbc` |
| 3 | `lemma` | [mulActionBaseChange_smul_zero](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/mulactionbasechange-smul-zero--cc3548b85f0492e50f07b5b3.md) | 49 | `result-track:cc3548b85f0492e50f07b5b372ca53b716ec5b29eba4708e65a6e34c78776ba9` |
| 4 | `lemma` | [mulActionBaseChange_smul_add](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/mulactionbasechange-smul-add--bda2420d9b0e842ef9d178c6.md) | 54 | `result-track:bda2420d9b0e842ef9d178c65dafc94ea0619c1bf4ccd6c86110a9fe0d0253f7` |
| 5 | `abbrev` | [moduleBaseChange](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/modulebasechange--5349df5b5120b4d6547695b6.md) | 62 | `declaration-track:5349df5b5120b4d6547695b61d88db08430e6373228a62c5a72dd271fbbcbeff` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/instance--596b2b1b8b779d8fdfc1525d.md) | 72 | `declaration-track:596b2b1b8b779d8fdfc1525de6297d738e08485acd8f033b9c4ec7686fd3a71b` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/instance--5e81716104229ec3f5a4b0b2.md) | 80 | `declaration-track:5e81716104229ec3f5a4b0b2641a086c97803fed9e39a8f250f537fa4bfc3188` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/instance--c25f1e80aad666225e0f1fe5.md) | 87 | `declaration-track:c25f1e80aad666225e0f1fe517e5520e196430528413de4440fc1bca3f227f21` |
| 9 | `def` | [moduleBaseChange'](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/modulebasechange--c4aeb4d03f72b76b5db62c71.md) | 92 | `declaration-track:c4aeb4d03f72b76b5db62c71ab3d75dcfcbda74625cdfa33c9414e4563154415` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/instance--59732b2d59f5045b7364f5f8.md) | 99 | `declaration-track:59732b2d59f5045b7364f5f8c1d89e086153c51a69ed3cfe0b9228ceef2445b0` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/instance--36ecebca2c254cfe5b46f59b.md) | 108 | `declaration-track:36ecebca2c254cfe5b46f59b9bd0b61dfab779887f49748c7fd9df7d807f7bab` |
| 12 | `lemma` | [map_liftBaseChange_smul](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/map-liftbasechange-smul--65b5f0b7ea681f4c12d9bb21.md) | 117 | `result-track:65b5f0b7ea681f4c12d9bb21ffef5bd78096d76050778419d8997564b9c6c7a2` |
| 13 | `def` | [derivationTensorProduct](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/derivationtensorproduct--9e5f65304ba2b48c63054bb6.md) | 133 | `declaration-track:9e5f65304ba2b48c63054bb611b9bc85196df91c6a3c9ed6fbe8b24c41822887` |
| 14 | `lemma` | [derivationTensorProduct_algebraMap](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/derivationtensorproduct-algebramap--d058b75a6b6c66cbcebfd731.md) | 165 | `result-track:d058b75a6b6c66cbcebfd7317ecddaf1574bb92c27880654b375250da12b51fe` |
| 15 | `lemma` | [tensorKaehlerEquiv_left_inv](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/tensorkaehlerequiv-left-inv--b501b47435f706488bb4e427.md) | 170 | `result-track:b501b47435f706488bb4e427af7c51e5371c05fdabad1286a372998aaf7c73bd` |
| 16 | `def` | [tensorKaehlerEquiv](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/tensorkaehlerequiv--2d1e21a49c62d63bb04ff6e6.md) | 189 | `declaration-track:2d1e21a49c62d63bb04ff6e6175a3849f3d1974c3dbec7bb43fb63ebae4c5516` |
| 17 | `lemma` | [tensorKaehlerEquiv_tmul](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/tensorkaehlerequiv-tmul--c59cc35c25fd4e0a6e336a53.md) | 213 | `result-track:c59cc35c25fd4e0a6e336a530d97e6720976bb51f80783f1e8b02cd955e1ca0d` |
| 18 | `lemma` | [isBaseChange](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/isbasechange--e67ece5815f7c1d6e37a3058.md) | 221 | `result-track:e67ece5815f7c1d6e37a3058a79d457c16c33d3bead1b6337af3a4a779b38eed` |
| 19 | `instance` | [isLocalizedModule](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/islocalizedmodule--ed2d99c56045610c534fcb9c.md) | 229 | `declaration-track:ed2d99c56045610c534fcb9cbcb4fa14655c64fa0cf6ecaed0670c1d477c3282` |
| 20 | `instance` | [isLocalizedModule_of_isLocalizedModule](../../../../mathematics/Algebra/TensorProduct/Variant62698cd747281968149a5c19eff58a8286d30a00e549939abfa55ae141ae3f04.lean/declarations/islocalizedmodule-of-islocalizedmodule--a574a633737334fb4f2b9d1d.md) | 235 | `declaration-track:a574a633737334fb4f2b9d1daefca31c5bd57990c17e11c747eaf6fc69d9ca4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
