# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIso.Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7320e7e430def912fa8fbe8c07f8ef18891a035",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7320e7e430def912fa8fbe8c07f8ef18891a035`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso--3514c52f4a85d2bb51ae9348.md) | 41 | `declaration-track:3514c52f4a85d2bb51ae93486a236fc499914b4dd850993b1ea37662786f22c5` |
| 2 | `instance` | [QuasiIso.isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-isiso--781524cb96fc5b4735745bec.md) | 45 | `declaration-track:781524cb96fc5b4735745bec1084f73e53650d45580ed873943b8edfed153307` |
| 3 | `lemma` | [quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff--97ed7188b32e4736eb22193b.md) | 47 | `result-track:97ed7188b32e4736eb22193b77b1f908fc82308b85b1479022a859fcbae33300` |
| 4 | `instance` | [quasiIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-of-isiso--32aa7314ff6813842bd5c30e.md) | 55 | `declaration-track:32aa7314ff6813842bd5c30edc0527c8824bfcfdc94e012f8cf3cabcc9a4878c` |
| 5 | `instance` | [quasiIso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-comp--c659e1269ba4c423fb6b52fd.md) | 58 | `declaration-track:c659e1269ba4c423fb6b52fde6bb957955f5d0df9314b10854fbaff7a44335b8` |
| 6 | `lemma` | [quasiIso_of_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-of-comp-left--60ca78924988acbb1c85a5fb.md) | 64 | `result-track:60ca78924988acbb1c85a5fb32884c9494f7be100423e14a7c03ee89482784b7` |
| 7 | `lemma` | [quasiIso_iff_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-comp-left--4f81cf324643c3640e354d41.md) | 71 | `result-track:4f81cf324643c3640e354d41c50180b0d4ed9b40a2b6e88414939ea24c34c20f` |
| 8 | `lemma` | [quasiIso_of_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-of-comp-right--0085a373ca4c93ba4d3201e5.md) | 79 | `result-track:0085a373ca4c93ba4d3201e514b9f61af05554cbbdb9b24318e148148992c57b` |
| 9 | `lemma` | [quasiIso_iff_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-comp-right--82f8d42238453fbdc7d2a147.md) | 86 | `result-track:82f8d42238453fbdc7d2a14719c189defcd7a6939a67ae02219777ba2ffb3678` |
| 10 | `lemma` | [quasiIso_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-of-arrow-mk-iso--52228d6b9d7b43afdd581bd0.md) | 94 | `result-track:52228d6b9d7b43afdd581bd07f45ea700da6161e87e395f954c51b04a255a00b` |
| 11 | `lemma` | [quasiIso_iff_of_arrow_mk_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-of-arrow-mk-iso--499bbe071e8f4969d5dca9f6.md) | 104 | `result-track:499bbe071e8f4969d5dca9f6e406980bd62fae998cdaff68122e7d085b5d2ac7` |
| 12 | `lemma` | [LeftHomologyMapData.quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/lefthomologymapdata-quasiiso-iff--de4a632184473586d11712ef.md) | 108 | `result-track:de4a632184473586d11712efefe940df9fbe6b13546634e144f9113deef5a64f` |
| 13 | `lemma` | [RightHomologyMapData.quasiIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/righthomologymapdata-quasiiso-iff--1cb03d482f3cea298025e0b4.md) | 120 | `result-track:1cb03d482f3cea298025e0b4fe663b4c13ebcf1450f2b5f1025ae5d9b79364aa` |
| 14 | `lemma` | [quasiIso_iff_isIso_leftHomologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-isiso-lefthomologymap--de90fe90961a00c15eb35e89.md) | 132 | `result-track:de90fe90961a00c15eb35e89a885cc80f2d44ff0bcdf96d141beacfb6601b014` |
| 15 | `lemma` | [quasiIso_iff_isIso_rightHomologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-isiso-righthomologymap--5d850f4f0f9cc44b185f61bc.md) | 138 | `result-track:5d850f4f0f9cc44b185f61bcb8f096ec20f1946827e209dc710949ad8c0338d8` |
| 16 | `lemma` | [quasiIso_iff_isIso_homologyMap'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-isiso-homologymap--a1cb5157cd62feb3767d6395.md) | 144 | `result-track:a1cb5157cd62feb3767d63951facbef2ac7e0e5b42535d28fd25af32676d26a0` |
| 17 | `lemma` | [quasiIso_of_epi_of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-of-epi-of-isiso-of-mono--78b35a4f259b7aea9d143f6a.md) | 150 | `result-track:78b35a4f259b7aea9d143f6af36eb736ac4752175f35d28f73fe4e6a56efe452` |
| 18 | `lemma` | [quasiIso_opMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-opmap-iff--348c2cfce0162ff1002a366d.md) | 157 | `result-track:348c2cfce0162ff1002a366d668465744b3f5618b8a0be0a506436fb453bd648` |
| 19 | `lemma` | [quasiIso_opMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-opmap--15a2974c96a93285f7e7b03d.md) | 168 | `result-track:15a2974c96a93285f7e7b03de76ab9c384d207e66f4576f63fcdcb5c3640b75a` |
| 20 | `lemma` | [quasiIso_unopMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-unopmap--0e9d389ffa6ec864851283b4.md) | 173 | `result-track:0e9d389ffa6ec864851283b4dce8f44e960e2e9634b07ce545eda3943bfe77bb` |
| 21 | `lemma` | [quasiIso_iff_isIso_liftCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-isiso-liftcycles--b01238411253b2c784f75d7d.md) | 182 | `result-track:b01238411253b2c784f75d7d85cc32abf8452de52da9db4dd71a37f84273aeb0` |
| 22 | `lemma` | [quasiIso_iff_isIso_descOpcycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant187355802f8eb322fb135070aaa979377052823080f1760a680f7e036260c9d7.lean/declarations/quasiiso-iff-isiso-descopcycles--9e996ac2f9905599f7780b49.md) | 193 | `result-track:9e996ac2f9905599f7780b4935620c26c1a83eb7b4af304e82fb0884d102eca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
