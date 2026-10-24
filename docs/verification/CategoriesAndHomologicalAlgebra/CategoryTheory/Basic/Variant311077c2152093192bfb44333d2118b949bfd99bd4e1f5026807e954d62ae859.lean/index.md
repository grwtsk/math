# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51f352a5d7c31d24e54ce38e116f54207fa71066",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51f352a5d7c31d24e54ce38e116f54207fa71066`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MvPFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/mvpfunctor--1ee5d6409a3028c6368a30da.md) | 34 | `declaration-track:1ee5d6409a3028c6368a30da50c97b5b17b43708747da07ddaabde1a87307e82` |
| 2 | `def` | [Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/obj--5f6629b29b6d770a88b044e6.md) | 48 | `declaration-track:5f6629b29b6d770a88b044e66b4827d8fd2853c33ad6dc6c680eba30869b4290` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/instance--82359c133d2be4f535d0f4da.md) | 51 | `declaration-track:82359c133d2be4f535d0f4da0ba687e14a12ad6c7dc0c0c2cb22eed43be2ed7e` |
| 4 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/map--e71d7139f4055f6c145cf22f.md) | 55 | `declaration-track:e71d7139f4055f6c145cf22fd6a57657d34468cc5b3bd9736fbacb1ad0cd7539` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/instance--9bc54d5a1b10882235140331.md) | 57 | `declaration-track:9bc54d5a1b10882235140331f048290aa5be8b6d8c85ba1118a07e65bff83f4d` |
| 6 | `instance` | [Obj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/obj-inhabited--fa7bf2669d0e627c03135530.md) | 60 | `declaration-track:fa7bf2669d0e627c03135530255e7abe21426f76c75e073580913e25caa7dacb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/instance--8914448d29e42d19deb41a72.md) | 64 | `declaration-track:8914448d29e42d19deb41a728f78de903bbbe65367c4306e5ed99e869ddf6240` |
| 8 | `theorem` | [map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/map-eq--6ffe1c7eec9d6851aa50f84a.md) | 67 | `result-track:6ffe1c7eec9d6851aa50f84a340bd5f54e7193cb55fb91feb27ca48894177128` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/id-map--da237940c8da78788194f1f7.md) | 71 | `result-track:da237940c8da78788194f1f7f45072777f14526e85a22838bf8976e07b85c4ff` |
| 10 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp-map--387ef16862e7dea8b16f51c1.md) | 74 | `result-track:387ef16862e7dea8b16f51c10a3d247e4f527f0b825341b27ac6763ee63c8017` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/instance--4a994854c547052e82d6fa27.md) | 78 | `declaration-track:4a994854c547052e82d6fa27372792afa458a075dc8f2f9c5f9cade44f73bb55` |
| 12 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/const--a1c57b8ac2030024be7ee80b.md) | 83 | `declaration-track:a1c57b8ac2030024be7ee80b8ff902222e14860db706971a69733bacc2002ccd` |
| 13 | `def` | [const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/const-mk--61142d23fa8fb2f64ff1b61c.md) | 92 | `declaration-track:61142d23fa8fb2f64ff1b61c0ac5a14576a70fba40ede4d46cea202f8bbf988d` |
| 14 | `def` | [const.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/const-get--c0376de069eb73ec0c7c9df4.md) | 98 | `declaration-track:c0376de069eb73ec0c7c9df47c01763364fabe24ed5dec2ffbf44f2de3c4fec0` |
| 15 | `theorem` | [const.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/const-get-map--26bab822b66acc22a0c45ae1.md) | 102 | `result-track:26bab822b66acc22a0c45ae13a172e8b317c2abfa382014f59ad9704b66a577a` |
| 16 | `theorem` | [const.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/const-get-mk--d1c4ac80dc0ee730b78691d5.md) | 107 | `result-track:d1c4ac80dc0ee730b78691d5831b93a963a9d6ef807402654bab92f30acb5744` |
| 17 | `theorem` | [const.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/const-mk-get--be5d9708facdb62a3bfcc3ac.md) | 110 | `result-track:be5d9708facdb62a3bfcc3acb2e8587f26bcfeadd352003aaddb7be3cb6ebb6b` |
| 18 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp--d25cb052a9850b4b443bb8ca.md) | 118 | `declaration-track:d25cb052a9850b4b443bb8ca614269d0238e50aa7ab0e1126bc28c1e9d5de136` |
| 19 | `def` | [comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp-mk--efedf097694403e6130c1a0f.md) | 125 | `declaration-track:efedf097694403e6130c1a0f843e83edb04d3b81d379c1e3604cec73b582183a` |
| 20 | `def` | [comp.get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp-get--d540847ce5f40ed09cc48e7b.md) | 129 | `declaration-track:d540847ce5f40ed09cc48e7bc552747b5d9d55584ee44985d660864592b8e300` |
| 21 | `theorem` | [comp.get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp-get-map--ccb34fa62637b6cfaf414427.md) | 132 | `result-track:ccb34fa62637b6cfaf414427635be2a8e118b2610052b249c315cb6e895aaef0` |
| 22 | `theorem` | [comp.get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp-get-mk--861a79609369e33d2f9edb68.md) | 137 | `result-track:861a79609369e33d2f9edb6823901a58426c6f8c84d472f2828d35aec87e349c` |
| 23 | `theorem` | [comp.mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/comp-mk-get--130e73edc9e75ccb134347ae.md) | 141 | `result-track:130e73edc9e75ccb134347ae75bfd12ab635b9466e4d01a9f643f21bcb5554ed` |
| 24 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/liftp-iff--24d842e1a254a9347b55c988.md) | 147 | `result-track:24d842e1a254a9347b55c988142d15e3b2292d3920bbf1790a45dc918365ff49` |
| 25 | `theorem` | [liftP_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/liftp-iff--2a6608de469bd56548a83c2f.md) | 159 | `result-track:2a6608de469bd56548a83c2f1b27b349449674a395ff40980d31b616005f7810` |
| 26 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/liftr-iff--a46cbeb971ebbde3a20ce321.md) | 167 | `result-track:a46cbeb971ebbde3a20ce3213247150ddc0f642e68615fe6e93bcf369967ca0f` |
| 27 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/supp-eq--960d8bfeba354dd192457a96.md) | 190 | `result-track:960d8bfeba354dd192457a96eb9ac99606e2fee12e5f2d30bab9ee86b4c7704d` |
| 28 | `def` | [drop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/drop--b02f2af2eb110e47270c5904.md) | 216 | `declaration-track:b02f2af2eb110e47270c5904c8e01399893750f757de6d274abbbc2e90206121` |
| 29 | `def` | [last](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/last--ceabe2f80bdc864638d1eddc.md) | 222 | `declaration-track:ceabe2f80bdc864638d1eddcdd5f0a00b8fa239c616d3834ce5df10b306187cb` |
| 30 | `abbrev` | [appendContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant311077c2152093192bfb44333d2118b949bfd99bd4e1f5026807e954d62ae859.lean/declarations/appendcontents--e51e236d374c4fa5649ff9cb.md) | 227 | `declaration-track:e51e236d374c4fa5649ff9cbdbacd212777a9c93b5edc6a211f2ee6370ba5722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
