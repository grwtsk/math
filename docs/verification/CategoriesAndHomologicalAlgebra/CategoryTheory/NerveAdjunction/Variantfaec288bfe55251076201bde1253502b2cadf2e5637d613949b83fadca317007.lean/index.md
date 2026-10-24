# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NerveAdjunction.Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b66ba77515d913ff2099e28f4f5e1ffffb26a1",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b66ba77515d913ff2099e28f4f5e1ffffb26a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.HomotopyCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplexCategory.MorphismProperty` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nerve₂Adj.counit.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-counit-app--9465ef47e87fa90705e4ac3d.md) | 50 | `declaration-track:9465ef47e87fa90705e4ac3da218c0c02de1747c37f9811c7da1ad284cf16e43` |
| 2 | `theorem` | [nerve₂Adj.counit.app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-counit-app-eq--f7e031c9de0c16e458bc1e61.md) | 62 | `result-track:f7e031c9de0c16e458bc1e61395b629d85c99e008f6a233ccbfb7d30911e4692` |
| 3 | `theorem` | [nerve₂Adj.counit.naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-counit-naturality--55a1c4f3670a1f3cf694b482.md) | 69 | `result-track:55a1c4f3670a1f3cf694b482bab9bf293585dd270b360c1c82fe5ae540992e66` |
| 4 | `def` | [nerve₂Adj.counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-counit--ccb9d0ea60862929514b4992.md) | 83 | `declaration-track:ccb9d0ea60862929514b4992f284302eeb66bd2450814c714f5a70e310c3ceec` |
| 5 | `def` | [toNerve₂.mk.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-app--8e7a3ab2e5ac52a79cf59df2.md) | 94 | `declaration-track:8e7a3ab2e5ac52a79cf59df2e302b882e8c0202f8d418255f53e22f9c2e46d76` |
| 6 | `theorem` | [toNerve₂.mk.app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-app-zero--0a55433cfb63830938ab8c30.md) | 103 | `result-track:0a55433cfb63830938ab8c30e6035fe5a9d762b6938f4b5610fbff4c5a0fd600` |
| 7 | `theorem` | [toNerve₂.mk.app_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-app-one--9840dd24ff666f41aacec413.md) | 105 | `result-track:9840dd24ff666f41aacec413aaa010fd54e57cfee5a03ddf57c81a15b21cb86f` |
| 8 | `theorem` | [toNerve₂.mk.app_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-app-two--97f9062b58c15f9f5abefcb3.md) | 108 | `result-track:97f9062b58c15f9f5abefcb3db673295aed1495f532a44c579affbbb6cf1388c` |
| 9 | `def` | [nerve₂.seagull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-seagull--8525784f4d58204bc2f0c446.md) | 113 | `declaration-track:8525784f4d58204bc2f0c446b7743887e822b2458240a11a94b9130340fa5b41` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/instance--fa00c487858e5a9d78567d5a.md) | 119 | `declaration-track:fa00c487858e5a9d78567d5add0c2ca9ca18d67acbddfdf82acea6148c2081e0` |
| 11 | `abbrev` | [toNerve₂.mk.naturalityProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-naturalityproperty--62ccf0478540ff7d59976b6f.md) | 140 | `declaration-track:62ccf0478540ff7d59976b6ff43b9b14a7c0c7176c4d747ce6022d84161779c5` |
| 12 | `lemma` | [ReflPrefunctor.congr_mk₁_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/reflprefunctor-congr-mk-map--974d7e9354e69e91be7ac426.md) | 143 | `result-track:974d7e9354e69e91be7ac4262b292a3d7cd1408a4ecc46a867bddb823288f73b` |
| 13 | `lemma` | [toNerve₂.mk_naturality_σ00](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-naturality-00--70b72c5bf33e7c07e8830423.md) | 151 | `result-track:70b72c5bf33e7c07e88304230ba0387ee3476b0f5aa5361f1afbbc3d402bf5ad` |
| 14 | `lemma` | [toNerve₂.mk_naturality_δ0i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-naturality-0i--c043c5fa1622be86102eaa1b.md) | 162 | `result-track:c043c5fa1622be86102eaa1bff3966256666d20fd37146439fb8dd287421721e` |
| 15 | `lemma` | [toNerve₂.mk_naturality_δ1i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-naturality-1i--dd64a11c9741105ea7794d57.md) | 172 | `result-track:dd64a11c9741105ea7794d577fcc2c1e9819a579f03c1f235f5d3ad1554a7df0` |
| 16 | `lemma` | [toNerve₂.mk_naturality_σ1i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-naturality-1i--48ea9e183df5b38f84d95aeb.md) | 221 | `result-track:48ea9e183df5b38f84d95aeb684ba91ffcaf11a44d55c4bae351df278c3aadd7` |
| 17 | `theorem` | [toNerve₂.mk_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk-naturality--ee695d97e8d1eed82a07ea60.md) | 247 | `result-track:ee695d97e8d1eed82a07ea60e299b00bd352b849668fe4669633824fde74520f` |
| 18 | `def` | [toNerve₂.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk--41d9f77c92bd4e3f0778b41e.md) | 260 | `declaration-track:41d9f77c92bd4e3f0778b41ec31b12f9bb8a38c39a9cae2adcd0af6c9a7cff74` |
| 19 | `def` | [toNerve₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-mk--d0c47e988dd82503d262220c.md) | 279 | `declaration-track:d0c47e988dd82503d262220c2298e685a04140494cf5a987175d8da4448fb1c5` |
| 20 | `theorem` | [oneTruncation₂_toNerve₂Mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/onetruncation-tonerve-mk--3fc694159202da67788eaa81.md) | 283 | `result-track:3fc694159202da67788eaa8126db2ae2dcf5e033243ce5d6cdf280df0937e0c4` |
| 21 | `theorem` | [toNerve₂.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/tonerve-ext--0bb4f5752b6c98a5bb79116c.md) | 304 | `result-track:0bb4f5752b6c98a5bb79116c47f56e78556e82e458c5be1f7e483919a260d7be` |
| 22 | `def` | [nerve₂Adj.unit.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-unit-app--2da2b3f3d02f2e6ed0abeb7c.md) | 326 | `declaration-track:2da2b3f3d02f2e6ed0abeb7c925766198e2c0dab6aac53e880d6895d2d597816` |
| 23 | `theorem` | [nerve₂Adj.unit.map_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-unit-map-app-eq--87616a314c25178ed12836de.md) | 334 | `result-track:87616a314c25178ed12836de837cdad40812f289a5ba60a5b47709b0a30e93a0` |
| 24 | `lemma` | [nerve₂Adj.unit.naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-unit-naturality--d21999fecb8798ff459b4a13.md) | 342 | `result-track:d21999fecb8798ff459b4a1393ed2ddc68f34e779fd3e0f38a2078bafc60a268` |
| 25 | `def` | [nerve₂Adj.unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-unit--0f7463d746a2072742f2905f.md) | 354 | `declaration-track:0f7463d746a2072742f2905fb81264121b1eacd7f426273da04f8f08f03b270a` |
| 26 | `def` | [nerve₂Adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj--09dce119ae0275268a878160.md) | 361 | `declaration-track:09dce119ae0275268a878160cff86258cbf22e1071255f79af1c5e848ec6ce51` |
| 27 | `instance` | [nerveFunctor₂.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctor-faithful--abe2544396265b344f3f3bf5.md) | 418 | `declaration-track:abe2544396265b344f3f3bf558bf90a27276a6209f403ed67d1dd4f8bcd1c0ea` |
| 28 | `instance` | [nerveFunctor₂.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctor-full--38d26e53b4f52f6b46803c0a.md) | 422 | `declaration-track:38d26e53b4f52f6b46803c0ad1034f9355206779e8a1a4942438a65407fa5dad` |
| 29 | `def` | [nerveFunctor₂.fullyfaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctor-fullyfaithful--1b660a745d5ade33866cbae5.md) | 488 | `declaration-track:1b660a745d5ade33866cbae520c54b16e8e1247a80cbea00095e625b22161151` |
| 30 | `instance` | [nerve₂Adj.reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerve-adj-reflective--cef127fd23a4b3ecd63ad1fc.md) | 491 | `declaration-track:cef127fd23a4b3ecd63ad1fc189aeb5468e6bc1880cc0fa1f1705aa40d662d11` |
| 31 | `def` | [nerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerveadjunction--fcfa2cb772cda1048e6b8653.md) | 498 | `declaration-track:fcfa2cb772cda1048e6b86532ceb9c83ff558f862481d9300f708014f354c2b7` |
| 32 | `instance` | [nerveFunctor.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctor-faithful--63256ee4a2fb23b846c19d0c.md) | 503 | `declaration-track:63256ee4a2fb23b846c19d0c066d0a326eb90217b1cbf6c68471b7feb9516a82` |
| 33 | `instance` | [nerveFunctor.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctor-full--377aaa16dfc870cd3d6f6f42.md) | 508 | `declaration-track:377aaa16dfc870cd3d6f6f4262946be6671f3f2f87062144c47ee6f627dcc4cf` |
| 34 | `def` | [nerveFunctor.fullyfaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctor-fullyfaithful--c245a43acaa5d6511954ca21.md) | 514 | `declaration-track:c245a43acaa5d6511954ca21d65ff888598a5fca9e10b0b5846de7be85f646db` |
| 35 | `instance` | [nerveAdjunction.isIso_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nerveadjunction-isiso-counit--a23a1dcf71b0772904da324b.md) | 517 | `declaration-track:a23a1dcf71b0772904da324bf114d36248bb782df7e1f3ade99dffc15b5463bf` |
| 36 | `def` | [nerveFunctorCompHoFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/nervefunctorcomphofunctoriso--efd9b8cd1ea68710cd486015.md) | 522 | `declaration-track:efd9b8cd1ea68710cd486015b86a82aa0511251733d393d011081002b8aa5227` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/declarations/instance--26de6eb2cd3e543779a01bb4.md) | 525 | `declaration-track:26de6eb2cd3e543779a01bb42b4fcd9bfe2cc8629468b05a5d6a2dad6290b661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
