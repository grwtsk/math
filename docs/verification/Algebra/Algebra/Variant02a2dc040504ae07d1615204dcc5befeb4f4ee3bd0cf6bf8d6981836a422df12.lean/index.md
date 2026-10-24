# Verification target: GRWTSK.Algebra.Algebra.Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "853c513c8a1ab02c663b51609adc3fb39e5f8af0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `853c513c8a1ab02c663b51609adc3fb39e5f8af0`.

Source path: `GRWTSK/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.IsLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Ideal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Algebra.idealMap_isLocalizedModule](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/algebra-idealmap-islocalizedmodule--5e52507747a45de76db4105b.md) | 38 | `declaration-track:5e52507747a45de76db4105b24f18dff9c3a98e461dd60c4b91b58fce7e0c0f6` |
| 2 | `lemma` | [IsLocalization.ker_map](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/islocalization-ker-map--291448068891d5ceebdabc1a.md) | 50 | `result-track:291448068891d5ceebdabc1af9b53772804b9f0d8a6e48cb143a5a391fd5c40a` |
| 3 | `def` | [RingHom.toKerIsLocalization](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/ringhom-tokerislocalization--7d4d0232dd0ffa152025e125.md) | 60 | `declaration-track:7d4d0232dd0ffa152025e125621ccf9f6b60420c9bcabf80ff2177393e86b9e9` |
| 4 | `lemma` | [RingHom.toKerIsLocalization_apply](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/ringhom-tokerislocalization-apply--14c60d82901ccd2294acdf93.md) | 70 | `result-track:14c60d82901ccd2294acdf93133218db6bfa1c351854a9ccb819fe8e3a5d1561` |
| 5 | `lemma` | [RingHom.toKerIsLocalization_isLocalizedModule](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/ringhom-tokerislocalization-islocalizedmodule--b7b5e6d3550c2888072599ef.md) | 76 | `result-track:b7b5e6d3550c2888072599ef1a55f5a93c7551833fc074d0a4d489fa319200d4` |
| 6 | `instance` | [isLocalization_algebraMapSubmonoid_map_algHom](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/islocalization-algebramapsubmonoid-map-alghom--d81148296a87a88593855880.md) | 99 | `declaration-track:d81148296a87a885938558806db93017b21e833253e040ebe812fd9aa8876550` |
| 7 | `def` | [mapₐ](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/map--50570b932837869435356fae.md) | 106 | `declaration-track:50570b932837869435356fae22c79cb50beda079d5f11fc1af09fa6530c0e91e` |
| 8 | `lemma` | [mapₐ_coe](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/map-coe--33c76917cce682dc792fd588.md) | 112 | `result-track:33c76917cce682dc792fd5886e152ccfb9865facff7c5c48d4a593797f8d8a76` |
| 9 | `lemma` | [mapₐ_injective_of_injective](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/map-injective-of-injective--22c140d30ad09a0b6be62ad6.md) | 116 | `result-track:22c140d30ad09a0b6be62ad61a16bb8ef9337002807ed4acac301fd73a1844b3` |
| 10 | `lemma` | [mapₐ_surjective_of_surjective](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/map-surjective-of-surjective--16d98e97efa7ad4a1b7bafa0.md) | 120 | `result-track:16d98e97efa7ad4a1b7bafa0cd78cdb3ba4eeacbf881858b019c2121894c6950` |
| 11 | `def` | [AlgHom.toKerIsLocalization](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/alghom-tokerislocalization--67c8d040fe5559b9500eee0b.md) | 129 | `declaration-track:67c8d040fe5559b9500eee0b301a67e3dd5239291e8b9b376b599eae3b5dc7f5` |
| 12 | `lemma` | [AlgHom.toKerIsLocalization_apply](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/alghom-tokerislocalization-apply--2fde7a76978f3869460d2a13.md) | 134 | `result-track:2fde7a76978f3869460d2a13f36a9adc65f4c7b316bc49e04198b078c96535d4` |
| 13 | `lemma` | [AlgHom.toKerIsLocalization_isLocalizedModule](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/alghom-tokerislocalization-islocalizedmodule--6ae78294413be74237f796e2.md) | 141 | `result-track:6ae78294413be74237f796e26c961f3914bad2c3c847d7f21bbc06e8082d5509` |
| 14 | `lemma` | [isLocalization](../../../../mathematics/Algebra/Algebra/Variant02a2dc040504ae07d1615204dcc5befeb4f4ee3bd0cf6bf8d6981836a422df12.lean/declarations/islocalization--1ffe1e1b9821d91843ca20d2.md) | 155 | `result-track:1ffe1e1b9821d91843ca20d219a850eca22995cc11911c394ab92619bc8e44df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
