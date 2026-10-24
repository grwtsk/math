# Verification target: GRWTSK.Algebra.UniversalAlgebra.CentroidHom.Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e07bcb8be477cc5ff68e32910e870f04b9b6332",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e07bcb8be477cc5ff68e32910e870f04b9b6332`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CentroidHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarRingHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subsemiring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/instance--fb3affd3b127e0fcec699173.md) | 32 | `declaration-track:fb3affd3b127e0fcec69917398d08b732bc0745b5732e6944cbbc1d7979e9064` |
| 2 | `lemma` | [star_apply](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/star-apply--3f558e448493e18550b56c10.md) | 41 | `result-track:3f558e448493e18550b56c10e39573ae3995bd4cf40d5ab1b3e4d436669bbc78` |
| 3 | `instance` | [instStarAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/inststaraddmonoid--c3c8497ed61b765dac4afcda.md) | 43 | `declaration-track:c3c8497ed61b765dac4afcda7216e3edf761cb58b1c20ea75939673f5476f6a9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/instance--3b5a2b0e121691b6378a21d5.md) | 48 | `declaration-track:3b5a2b0e121691b6378a21d5d9265188415e2549a859da9fe41635244f40ca29` |
| 5 | `instance` | [instStarAddMonoidCenter](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/inststaraddmonoidcenter--761d748e4f896054f57ed9cb.md) | 57 | `declaration-track:761d748e4f896054f57ed9cbd7f34a3b93bd05ad24ee608c89da42ad9710ce40` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/instance--e62c16b86b08c77e2d8db316.md) | 61 | `declaration-track:e62c16b86b08c77e2d8db3166cf2116f474890fc5125666d7d5c5a77855785d4` |
| 7 | `def` | [centerStarEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/centerstarembedding--94eddcee0f4b3d13a8486630.md) | 72 | `declaration-track:94eddcee0f4b3d13a84866309906dfb14aa1851d4a253f13a3884cf70fcca2eb` |
| 8 | `theorem` | [star_centerToCentroidCenter](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/star-centertocentroidcenter--f536cca17b2a03f89725d7ce.md) | 80 | `result-track:f536cca17b2a03f89725d7ced04e2f47997d9652dbea73029457ccbe7c684b42` |
| 9 | `def` | [starCenterToCentroidCenter](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starcentertocentroidcenter--70762831452881da85676d39.md) | 93 | `declaration-track:70762831452881da85676d3916298fb81cadee115d17aea3bed4c1afa7ee466e` |
| 10 | `def` | [starCenterToCentroid](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starcentertocentroid--ca9c168cf159c2d07141a8ad.md) | 101 | `declaration-track:ca9c168cf159c2d07141a8adf50509ae304ba1a391a4006b074c0fe52cd69dee` |
| 11 | `lemma` | [starCenterToCentroid_apply](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starcentertocentroid-apply--a3e76239ff337adade20e3d0.md) | 104 | `result-track:a3e76239ff337adade20e3d04d5d1eab602231aa6371b040f8bc18d592978281` |
| 12 | `def` | [starRingOfCommCentroidHom](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starringofcommcentroidhom--c97929256774d28fe30e370e.md) | 111 | `declaration-track:c97929256774d28fe30e370e1fb7e6d0cbd57157eff1c3d44ade0da8f30c18e5` |
| 13 | `def` | [starCenterIsoCentroid](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starcenterisocentroid--fbeb2b1a917eb7a332498a34.md) | 124 | `declaration-track:fbeb2b1a917eb7a332498a3452707e9da4d33d43425fa76efb95fbb1197b5bff` |
| 14 | `lemma` | [starCenterIsoCentroid_apply](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starcenterisocentroid-apply--c3e11cc9ef9511f63dbe2075.md) | 135 | `result-track:c3e11cc9ef9511f63dbe20759fa92e87b7cf452d1a3332260ce04d14850288aa` |
| 15 | `lemma` | [starCenterIsoCentroid_symm_apply_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variant604c2ad7dd4bc6f052348bb412a8341e287ac7c6728709b8cba07ffb131e7b50.lean/declarations/starcenterisocentroid-symm-apply-coe--29130c5a38e80bfc50dc3362.md) | 139 | `result-track:29130c5a38e80bfc50dc336229388b49f1672b4e0fa5abe3df682a4d9f0c2761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
