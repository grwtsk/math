# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04b898df35fd7c26b197d611d2adc12123dcdd33",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04b898df35fd7c26b197d611d2adc12123dcdd33`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ProxyType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/macro--477a1ea0413fd96ae89683e2.md) | 93 | `declaration-track:477a1ea0413fd96ae89683e201ac2ab8991fe508d4660772478568b3217c0917` |
| 2 | `def` | [mkFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/mkfintype--b1e316e9f321fdd0f83d34b6.md) | 99 | `declaration-track:b1e316e9f321fdd0f83d34b6b60e5694988fa090a64c19089f0643d32c9897ea` |
| 3 | `instance` | [$header.binders](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/header-binders--6394b270b97dd2c6343483bb.md) | 105 | `declaration-track:6394b270b97dd2c6343483bb3e7e9e42cd89ee58ac4bd8272eafa273213787c8` |
| 4 | `def` | [mkFintypeEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/mkfintypeenum--057699ef3ed99780c24049d5.md) | 121 | `declaration-track:057699ef3ed99780c24049d51dc4c2597f6e7bee4a451cdc0abbe977a5c52278` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/instance--532789590da8bd639ed341f7.md) | 179 | `declaration-track:532789590da8bd639ed341f7a545f493c623992e6c3638fde4d53fc265ebdcf6` |
| 6 | `def` | [mkFintypeInstanceHandler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/mkfintypeinstancehandler--39fca63a055ba67553698f21.md) | 188 | `declaration-track:39fca63a055ba67553698f216b6e37ad20ff9956268f671cdae8c35a010ae39a` |
| 7 | `initialize` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/declarations/initialize--69b0ca25bdc64574a3d4754e.md) | 199 | `declaration-track:69b0ca25bdc64574a3d4754e6666862bfe44e474df964ec6afc6a790a09d8fbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
