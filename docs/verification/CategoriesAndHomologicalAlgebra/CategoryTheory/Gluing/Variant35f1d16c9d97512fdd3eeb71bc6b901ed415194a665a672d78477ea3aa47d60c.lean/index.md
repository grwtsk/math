# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Gluing.Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e6d1d416ea9780fe285b3c8057f66c02528deb1",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e6d1d416ea9780fe285b3c8057f66c02528deb1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Gluing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.OpenImmersion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace.HasColimits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/gluedata--0ef5a03cda499ea53e275edd.md) | 101 | `declaration-track:0ef5a03cda499ea53e275edd03b8aa95305f37dbe9998b67b8e17be3b64c8d07` |
| 2 | `abbrev` | [toTopGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/totopgluedata--1664b33821ddfc7514541f2c.md) | 126 | `declaration-track:1664b33821ddfc7514541f2ccb24b2e0de265b32f53fe063a6562978c28193bf` |
| 3 | `theorem` | [ι_isOpenEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isopenembedding--7eb3b8db95a761fcc65e358d.md) | 130 | `result-track:7eb3b8db95a761fcc65e358d0af369a1a1fc742821bd47b3e05ee6c069ed4a75` |
| 4 | `theorem` | [pullback_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/pullback-base--43892697ca45cdf0457789b6.md) | 135 | `result-track:43892697ca45cdf0457789b638ef8aac5cd9937e078f667f6ae93b025af3c992` |
| 5 | `theorem` | [f_invApp_f_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/f-invapp-f-app--7c5b3e9e39e11c359f869bad.md) | 147 | `result-track:7c5b3e9e39e11c359f869badff0058b8faf8ff49696789423a3d723ba6329beb` |
| 6 | `theorem` | [snd_invApp_t_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/snd-invapp-t-app--b3c73cbd7a2ce9696959527d.md) | 175 | `result-track:b3c73cbd7a2ce9696959527d30a09474c9dbad286bee0ec01181f5c47b1bba48` |
| 7 | `theorem` | [snd_invApp_t_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/snd-invapp-t-app--f36a57215c06afeacad78055.md) | 225 | `result-track:f36a57215c06afeacad78055a8ffe1f35f58964faf7502282bbfee6723fd7562` |
| 8 | `theorem` | [ι_image_preimage_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/image-preimage-eq--f6137475ae6d63ccfd0ce819.md) | 237 | `result-track:f6137475ae6d63ccfd0ce81974929321c64bdb93f0746a853190b3a334ffc261` |
| 9 | `def` | [opensImagePreimageMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/opensimagepreimagemap--09d982d57f2fd43c7f2a650e.md) | 263 | `declaration-track:09d982d57f2fd43c7f2a650e166b74df3920b4ea0ef8d230514793ca3cfb5290` |
| 10 | `theorem` | [opensImagePreimageMap_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/opensimagepreimagemap-app--af6e88286302dcb67104aeb2.md) | 272 | `result-track:af6e88286302dcb67104aeb2aef8b8ecacf94433843b5704f6465b95a38d7559` |
| 11 | `theorem` | [opensImagePreimageMap_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/opensimagepreimagemap-app--5671bd82f2c624d0eb5da34e.md) | 290 | `result-track:5671bd82f2c624d0eb5da34e8b46046fd26470cd7ea5b190f303f33b107b4c3b` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/opensimagepreimagemap-app-assoc--4123a4c3a18ac671a2534094.md) | 298 | `result-track:4123a4c3a18ac671a2534094d3f1572f35b1d780ec9a532a46771aa875382199` |
| 13 | `abbrev` | [diagramOverOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/diagramoveropen--80160db05fd47d147467c333.md) | 309 | `declaration-track:80160db05fd47d147467c333273bb59fab8b0de7aabdcde9d0feb5fae0fe0eb6` |
| 14 | `abbrev` | [diagramOverOpenπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/diagramoveropen--bb94c4eaf89cf7f08060ac8d.md) | 316 | `declaration-track:bb94c4eaf89cf7f08060ac8dfae4ee4ec672e2cccffe23deb17ac62dc5488d64` |
| 15 | `def` | [ιInvAppπApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/invapp-app--d2e7d5353e49d79af65d59b0.md) | 321 | `declaration-track:d2e7d5353e49d79af65d59b092b64467cbdcb1b7260e81a9444ca1f9dc8cfdad` |
| 16 | `def` | [ιInvApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/invapp--07c7ac0361c91610b5bbbe48.md) | 343 | `declaration-track:07c7ac0361c91610b5bbbe487ab174d6edd305c9713a8d527fc9df692d323f20` |
| 17 | `theorem` | [ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/invapp--9759db798d0540673040775e.md) | 396 | `result-track:9759db798d0540673040775eb2361281cfc3cbaa310dd4d993096d6b6470f7e7` |
| 18 | `abbrev` | [ιInvAppπEqMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/invapp-eqmap--0f7494b53c6759085a236247.md) | 428 | `declaration-track:0f7494b53c6759085a23624710e0126cbd1c8bd86b04c13ba3cf2c9dab1cdf98` |
| 19 | `theorem` | [π_ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/invapp--b2a86ad5459e423636959bbe.md) | 432 | `result-track:b2a86ad5459e423636959bbe37a06f5ce19a7c47981ff2404c9c37806498416d` |
| 20 | `theorem` | [π_ιInvApp_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/invapp-eq-id--a56be62a03b75e9025e6c044.md) | 466 | `result-track:a56be62a03b75e9025e6c044fa1186b18afee37dcae48abb3274610159567e1c` |
| 21 | `instance` | [componentwise_diagram_π_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/componentwise-diagram-isiso--e283b36408b9039f7b0f0090.md) | 481 | `declaration-track:e283b36408b9039f7b0f009089e5cf062e433735adde1eb59df362137095dc03` |
| 22 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isopenimmersion--cb84005eae37fab90e299a27.md) | 489 | `declaration-track:cb84005eae37fab90e299a27172927a994258be15cf8e439d404faa4701d0778` |
| 23 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/vpullbackconeislimit--e70f271383eb11bcda0f8f5d.md) | 500 | `declaration-track:e70f271383eb11bcda0f8f5d69591b2375f44f23a1d14b4bf8c30116faeefe29` |
| 24 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/jointly-surjective--e0afb44b642ec20e614a0e19.md) | 525 | `result-track:e0afb44b642ec20e614a0e19b0093848014e81cb82098839fc44a58708bdd810` |
| 25 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/gluedata--b7aa04725e788ce309f042ed.md) | 552 | `declaration-track:b7aa04725e788ce309f042edcd0a5ae17a1e898e623e8054b1f0738956c1d10d` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/topresheafedspacegluedata--f0f34ab5fcf7af166c336f72.md) | 565 | `declaration-track:f0f34ab5fcf7af166c336f72b0661c7246215350bfb6912147b4d7d80b489fa1` |
| 27 | `abbrev` | [isoPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isopresheafedspace--6d2148e13338fbeec66cae58.md) | 572 | `declaration-track:6d2148e13338fbeec66cae5841fa64f8ce9a909b4aaa703d8d3eacdd6d5dd604` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isopresheafedspace-inv--6a42902ae0c24c3cea1c3ed6.md) | 576 | `result-track:6a42902ae0c24c3cea1c3ed60c0d411c3392912d5b0c1b0a2909952a8021c5ba` |
| 29 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isopenimmersion--49341270d67944411c6f5ff2.md) | 580 | `declaration-track:49341270d67944411c6f5ff28c72564afb3c240d400ff84217e498353d3f5a28` |
| 30 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/jointly-surjective--eb84108d2d09663d3b387ad6.md) | 585 | `result-track:eb84108d2d09663d3b387ad6250a06dc82ad4458cbd7b53b96fc14a7042e35cd` |
| 31 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/vpullbackconeislimit--01d769d1cd5b1e021c91684b.md) | 595 | `declaration-track:01d769d1cd5b1e021c91684b5bcf8fd36a974dfe9d561e6112c552c19800e82a` |
| 32 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/gluedata--1f649a62f54e495b7c3e6526.md) | 623 | `declaration-track:1f649a62f54e495b7c3e65263a2bb8e4c759d5097a52d29bc6630030c89baeab` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/tosheafedspacegluedata--10354366a30f06537cb05d34.md) | 635 | `declaration-track:10354366a30f06537cb05d3436eaabf1c54dba28d8465cc20db76911a16e7e11` |
| 34 | `abbrev` | [isoSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isosheafedspace--428f6b86ff5eeae2e4fdee6f.md) | 640 | `declaration-track:428f6b86ff5eeae2e4fdee6f86573e8482b693b20e93a3bfd135e4230ed4c7e2` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isosheafedspace-inv--43f3b52245c7e248935cef6a.md) | 643 | `result-track:43f3b52245c7e248935cef6ad2a884479439e4b6fefda2003a3f265d986df029` |
| 36 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/isopenimmersion--8aea952f4d592fa872028244.md) | 647 | `declaration-track:8aea952f4d592fa872028244af2035040df01c556ce7d6d9a12eea617c8ec692` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/instance--28bcb4f1846a9f5744830bf6.md) | 653 | `declaration-track:28bcb4f1846a9f5744830bf62a3cfeac248a5ff5c6006d8e9948144c96d9efd0` |
| 38 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/jointly-surjective--1e2297e6d106c6732872ba02.md) | 656 | `result-track:1e2297e6d106c6732872ba02463431354a76a6ea23a79bab49b07616742d2778` |
| 39 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/declarations/vpullbackconeislimit--2cba1888e13031167a10c2a0.md) | 668 | `declaration-track:2cba1888e13031167a10c2a0e9f356e4166cda0f8c669afb5ab950e9d5539f67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
