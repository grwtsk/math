# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "637ad4e41a0a231358ebf4c719189839a44884e4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `637ad4e41a0a231358ebf4c719189839a44884e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Small](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small--40281f2b46ea1bb766cd8502.md) | 39 | `declaration-track:40281f2b46ea1bb766cd850212e4b877c1dc53ff937576c70196874f7599a07a` |
| 2 | `theorem` | [Small.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-mk--d0707ab828840ddf0a17ed45.md) | 46 | `result-track:d0707ab828840ddf0a17ed455c4b6ffb29f958b4701d6a5beeebece8fcdfe26b` |
| 3 | `def` | [Shrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/shrink--180339a008e7297564841452.md) | 52 | `declaration-track:180339a008e7297564841452ca0d2f6449e627c15adcfe47cc20d7aee6a44608` |
| 4 | `def` | [equivShrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/equivshrink--57068c083427c09043c49dff.md) | 58 | `declaration-track:57068c083427c09043c49dff40855299dfccc30007f63d59949ce0c793ff400a` |
| 5 | `theorem` | [Shrink.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/shrink-ext--ed3e08fb6b45a7a083d26e21.md) | 63 | `result-track:ed3e08fb6b45a7a083d26e21e41aa7412c0676cabe53f7cde297f59a64d149e1` |
| 6 | `def` | [Shrink.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/shrink-rec--6806b60262c83cb5ab918dce.md) | 71 | `declaration-track:6806b60262c83cb5ab918dce03764826afbdb1834cda43648cc23e5326b07549` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/instance--a8abcf3851d414e339b0a34d.md) | 76 | `declaration-track:a8abcf3851d414e339b0a34da7bbdd9873da0ee01e4a7280a8e11e6820861616` |
| 8 | `theorem` | [small_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-map--b4fe046e5f7c9695b4bb5d1e.md) | 80 | `result-track:b4fe046e5f7c9695b4bb5d1ed15f8faef6c4b5b277e38b2eb18534985a974833` |
| 9 | `theorem` | [small_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-lift--6ebbc0fa69d9c5f4fc1398dd.md) | 85 | `result-track:6ebbc0fa69d9c5f4fc1398ddcb9ff17b9d4e1196dd98800ba7c5f08fdce93d65` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/instance--7b1e1b45ad6cc14ac02e0c91.md) | 90 | `declaration-track:7b1e1b45ad6cc14ac02e0c915da18a88bdd6aaef33a9179adf55baac67b2ea77` |
| 11 | `instance` | [small_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-ulift--9a76c32c883bc96303b59d0f.md) | 94 | `declaration-track:9a76c32c883bc96303b59d0f874742d3a7fdb372c43389939f41d907913c6323` |
| 12 | `theorem` | [small_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-type--dbc8e77b4b25abdefe464e3b.md) | 98 | `result-track:dbc8e77b4b25abdefe464e3b7fcf2d7d93c33791234955803f03a746b459c766` |
| 13 | `theorem` | [small_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-congr--5bba34deef293b89534c858e.md) | 106 | `result-track:5bba34deef293b89534c858e691ed0cb8239fd386907fd83a466a4963f3380b0` |
| 14 | `instance` | [small_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-subtype--fc8770a058788a61fb984e6a.md) | 110 | `declaration-track:fc8770a058788a61fb984e6a70cb7b5eba13d09549b830bd6d55600991b25f33` |
| 15 | `theorem` | [small_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-of-injective--7dac6c0b9149caaca3c41ed4.md) | 114 | `result-track:7dac6c0b9149caaca3c41ed43f7ac1bb31b90f3d6a00b81f360e62652262b5c3` |
| 16 | `theorem` | [small_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-of-surjective--c2d00a76dd0c9f7dddf8fcf8.md) | 119 | `result-track:c2d00a76dd0c9f7dddf8fcf8f88e8b7e9004d8b1fc960bf7d48869e7c9eca466` |
| 17 | `theorem` | [small_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-subset--ffc0027420f9275a69b0be43.md) | 124 | `result-track:ffc0027420f9275a69b0be4342fe0fba73cd551e7cdfd92a682d1b028f1f53a5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/instance--311c6bc4dbde3a01108ecb11.md) | 129 | `declaration-track:311c6bc4dbde3a01108ecb1151d5785c565bc985105ea0e272ad8a1caa9e74a9` |
| 19 | `instance` | [small_Pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-pi--534fa8224631612379af37f2.md) | 141 | `declaration-track:534fa8224631612379af37f2c10f5eb2cd9fd6af86823490bc52a8c0aade0e2e` |
| 20 | `instance` | [small_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-sigma--795e364cb0d6fc4abccde5bf.md) | 147 | `declaration-track:795e364cb0d6fc4abccde5bf0f613facb6223c4cc58f02491ac93e664938b0f4` |
| 21 | `instance` | [small_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-prod--d3eea24bdd0796eabca45904.md) | 153 | `declaration-track:d3eea24bdd0796eabca459049b6f982cacddc5e532b4e4c071a221780dd9f58c` |
| 22 | `instance` | [small_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-sum--3b0343b1ef422d5d28fec919.md) | 157 | `declaration-track:3b0343b1ef422d5d28fec9190e7e454c58a777935d383de9b0f227a79dbce6e0` |
| 23 | `instance` | [small_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-set--7f75eb73faa28c1a8c7393d4.md) | 161 | `declaration-track:7f75eb73faa28c1a8c7393d4e24b36c19b973fe74d6275069e6a4307958a9702` |
| 24 | `instance` | [small_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-range--389df54d4458ab1184396bad.md) | 165 | `declaration-track:389df54d4458ab1184396bad5f22ef301e034883d1a16f271adfc1366176955e` |
| 25 | `instance` | [small_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/small-image--aea31114135ab0464c5b2c65.md) | 170 | `declaration-track:aea31114135ab0464c5b2c65cd88b7d2733deff5dc9a5467f08d082a07973968` |
| 26 | `theorem` | [not_small_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean/declarations/not-small-type--a97f4a0460e7d20ea7cdf386.md) | 175 | `result-track:a97f4a0460e7d20ea7cdf386aac27284739c6e9a4d71aacc97c3c40312d79c45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
