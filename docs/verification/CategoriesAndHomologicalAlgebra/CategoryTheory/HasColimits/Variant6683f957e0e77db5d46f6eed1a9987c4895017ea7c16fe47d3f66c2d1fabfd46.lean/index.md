# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasColimits.Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f30ce3951fc6d5176ac2cd390b25bb7643718bc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f30ce3951fc6d5176ac2cd390b25bb7643718bc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.OpenImmersion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isColimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/iscolimit-exists-rep--7df7377734587e821c8983a2.md) | 42 | `result-track:7df7377734587e821c8983a284f84b4397191f27c639102545f98a69761ae35d` |
| 2 | `theorem` | [colimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/colimit-exists-rep--f1de92a6a64cdb5895fbd018.md) | 47 | `result-track:f1de92a6a64cdb5895fbd0186de5dfaa0dd5bb4df663cfeaadf0c8c46ea201d1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/instance--78a7da835bf9068e5cc4c1f7.md) | 52 | `declaration-track:78a7da835bf9068e5cc4c1f72d01cb39072a8b25a05f12b4521ba7e40e017bb8` |
| 4 | `def` | [coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coproduct--3700f9fccc70a8080122628f.md) | 67 | `declaration-track:3700f9fccc70a8080122628fa3192bbe2a2d4d7aa14616e1f30708ced0429564` |
| 5 | `def` | [coproductCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coproductcofan--d36f442d71fd7e8233632f5b.md) | 79 | `declaration-track:d36f442d71fd7e8233632f5b29f67b94e9320a317ced414d0738fc67146420bc` |
| 6 | `def` | [coproductCofanIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coproductcofaniscolimit--1ab16b2424cd60a5911df341.md) | 87 | `declaration-track:1ab16b2424cd60a5911df3417c782794cc982830cbba535ef86e8bf88932574f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/instance--c7f9e69d09f5c11a185e8043.md) | 115 | `declaration-track:c7f9e69d09f5c11a185e8043f3372ba50a40c2c2a787796145ef3fb37cd2cd58` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/instance--59b27923b37db2f7b2fee5a0.md) | 118 | `declaration-track:59b27923b37db2f7b2fee5a026eaa67174ef2c721b786bc407981322832e8b64` |
| 9 | `theorem` | [coequalizer_π_app_isLocalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coequalizer-app-islocalhom--d6d35a0517d94f8e1f1e3a96.md) | 133 | `result-track:d6d35a0517d94f8e1f1e3a968b939a825060620a002b87df6781a98706c56a92` |
| 10 | `def` | [imageBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/imagebasicopen--e3f0039e36e6432b1a4a5146.md) | 175 | `declaration-track:e3f0039e36e6432b1a4a5146d79ab15b54388060c44914d23dd6a611ec54cd87` |
| 11 | `theorem` | [imageBasicOpen_image_preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/imagebasicopen-image-preimage--ff3288f1548fb5590a37535b.md) | 179 | `result-track:ff3288f1548fb5590a37535b05ab835827866dad4259e0839e36599d5d322cc8` |
| 12 | `theorem` | [imageBasicOpen_image_open](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/imagebasicopen-image-open--7423b8a075ad8bb46e569570.md) | 208 | `result-track:7423b8a075ad8bb46e569570a42324b9205d9e6eb0bad6940b3413682d460788` |
| 13 | `theorem` | [coequalizer_π_stalk_isLocalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coequalizer-stalk-islocalhom--6140fe514a08587854c8b518.md) | 219 | `result-track:6140fe514a08587854c8b51817d289ed70daf11849ad74e868d95419cfbf2e85` |
| 14 | `def` | [coequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coequalizer--dfccd21f144ad29acd90a49c.md) | 254 | `declaration-track:dfccd21f144ad29acd90a49c69966c497eefe68f0d1d3151e6e8bde1781e40bc` |
| 15 | `def` | [coequalizerCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coequalizercofork--118565853f0f4ab8470dd157.md) | 262 | `declaration-track:118565853f0f4ab8470dd157fa83c2268f27fe0a467523a35a78ec6a2eb9d7e4` |
| 16 | `theorem` | [isLocalHom_stalkMap_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/islocalhom-stalkmap-congr--16e15fbfc3f0fd2295ee9347.md) | 268 | `result-track:16e15fbfc3f0fd2295ee934768fd3e4dc62ee07cb0a24ba33207d27fa998ba46` |
| 17 | `def` | [coequalizerCoforkIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/coequalizercoforkiscolimit--aa43d1949a397cf817553b92.md) | 274 | `declaration-track:aa43d1949a397cf817553b9227ea74ab4af2ba50434195ff19000dfdf00c814b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/instance--bc5e0f22cbbff1ade903a505.md) | 306 | `declaration-track:bc5e0f22cbbff1ade903a505a3295e8a6a5f8337e527ba80d515121936ebaffe` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/instance--6910f3db03e845743ec0c006.md) | 309 | `declaration-track:6910f3db03e845743ec0c00610ef729791880f3380e32b9dd44a06603610dbc7` |
| 20 | `instance` | [preservesCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/preservescoequalizer--2459551e8aaa007feba790cd.md) | 312 | `declaration-track:2459551e8aaa007feba790cde227bf5bc847b98f705325c2bd6cec275f3c5891` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/instance--f3867c706695b715bd509838.md) | 327 | `declaration-track:f3867c706695b715bd5098382ae5247b4b2b3bd51417dc2d9ee0e97afdbcae53` |
| 22 | `instance` | [preservesColimits_forgetToSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant6683f957e0e77db5d46f6eed1a9987c4895017ea7c16fe47d3f66c2d1fabfd46.lean/declarations/preservescolimits-forgettosheafedspace--16b9f5252fb78e2c050152a4.md) | 330 | `declaration-track:16b9f5252fb78e2c050152a442aa8a7da70738ccc8ba10c3762f251b0cfde6d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
