# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d59968f2fb19de4448e8eaa2cf9bc5ebcbfd3b19",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d59968f2fb19de4448e8eaa2cf9bc5ebcbfd3b19`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeSimplexQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/freesimplexquiver--ae87d300b4a2061f64377423.md) | 21 | `declaration-track:ae87d300b4a2061f6437742316a4b9ca9d1deca3eb14747156d92027e7ea561f` |
| 2 | `def` | [FreeSimplexQuiver.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/freesimplexquiver-mk--e53dbebb9333a192801e53f3.md) | 24 | `declaration-track:e53dbebb9333a192801e53f343ebe7205070b32de85f3545487f84c39d16e386` |
| 3 | `def` | [FreeSimplexQuiver.len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/freesimplexquiver-len--4bfb2d29b6e09a468790abae.md) | 27 | `declaration-track:4bfb2d29b6e09a468790abae6810fe299a233ec3e01a3cfa82bebafcbceecb00` |
| 4 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/hom--36e5c197e4ca7f6ee10d647c.md) | 32 | `declaration-track:36e5c197e4ca7f6ee10d647ce9f3cf28dc62f65ea897db63dadf696387ab408b` |
| 5 | `instance` | [quiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/quiv--b5eb7c0dd04d151bf87eb51d.md) | 36 | `declaration-track:b5eb7c0dd04d151bf87eb51db0c1b1bd8c22c5c9c61020db8e6523fc28747704` |
| 6 | `abbrev` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/anonymous--b5200ed8e0eb4ea1ad100a5d.md) | 40 | `declaration-track:b5200ed8e0eb4ea1ad100a5d3647be1d74ac9fc28f6ecfcee33e06bb59c24948` |
| 7 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/anonymous--b9e026f24b1200defb0aa353.md) | 44 | `declaration-track:b9e026f24b1200defb0aa353dc0e0609a186262ba0882ed44fe133d98be40e32` |
| 8 | `inductive` | [homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/homrel--2459c6838f6a616b8532cf4f.md) | 49 | `declaration-track:2459c6838f6a616b8532cf4ff6f3e8b3fc23f212cab36eaac81604f6ead31414` |
| 9 | `def` | [SimplexCategoryGenRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/simplexcategorygenrel--4b095cb9ef8273ee1b6b2243.md) | 71 | `declaration-track:4b095cb9ef8273ee1b6b2243204f3e72f080762d1df04e6b4f5c139119eb71c6` |
| 10 | `def` | [SimplexCategoryGenRel.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/simplexcategorygenrel-mk--45a4e796469eda645d79ae04.md) | 75 | `declaration-track:45a4e796469eda645d79ae04badf10bc6cfa8417ad0467c855a1daeb7d1fd520` |
| 11 | `abbrev` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/anonymous--b86652306874e30dcc2ccdb5.md) | 81 | `declaration-track:b86652306874e30dcc2ccdb583a3719612f4591f787b52b194a931ee3c551ef9` |
| 12 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/anonymous--ff49cea09435eb675597ac0d.md) | 85 | `declaration-track:ff49cea09435eb675597ac0dd86b9ec9e9f5c43ecffb221044604f70434d8751` |
| 13 | `def` | [len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/len--831f8e86c98d3de407cf649a.md) | 89 | `declaration-track:831f8e86c98d3de407cf649ac7517ec8fb68a987f3e721685032ee1f01efdc4a` |
| 14 | `lemma` | [mk_len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/mk-len--d6bb510e35e05f0846832bb2.md) | 92 | `result-track:d6bb510e35e05f0846832bb255260ae43caee9fb5afb10e8ab380671ee6c3804` |
| 15 | `inductive` | [faces](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/faces--7439e3551c8e9fe7eae9bf92.md) | 97 | `declaration-track:7439e3551c8e9fe7eae9bf9292e11cfd1617eaa5972e29c4e360697274234f01` |
| 16 | `inductive` | [degeneracies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/degeneracies--dd0a2a7200803112fcac79ab.md) | 101 | `declaration-track:dd0a2a7200803112fcac79abe7aeb2ad199761f724e6e3b8401716fe0ef8a4fb` |
| 17 | `abbrev` | [generators](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/generators--4091196e4adaadc3793bf98e.md) | 105 | `declaration-track:4091196e4adaadc3793bf98ed10751626ceeeabfec2eea0f8413c3a34989b322` |
| 18 | `lemma` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/anonymous--a8cf73c9cadc277e6cffe31d.md) | 109 | `result-track:a8cf73c9cadc277e6cffe31d9a432271cfe27b2af360a4e1dafb40aa4d327136` |
| 19 | `lemma` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/anonymous--d6c447c435226e51b29bc305.md) | 111 | `result-track:d6c447c435226e51b29bc305cd7b94f0465e17f2a8faca160eded11c4327ec07` |
| 20 | `lemma` | [multiplicativeClosure_isGenerator_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/multiplicativeclosure-isgenerator-eq-top--cdb6d2cdb0ce961d7f30383c.md) | 116 | `result-track:cdb6d2cdb0ce961d7f30383ca43e41418dccae128e20cc27d70a91f102b9319e` |
| 21 | `lemma` | [hom_induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/hom-induction--ced3899457966931298e8aa3.md) | 128 | `result-track:ced3899457966931298e8aa3857332a3883e0c8a356ff2dab72923c1cd0c0f5a` |
| 22 | `lemma` | [hom_induction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/hom-induction--f2e87b152c5d5ce9c9e6d2af.md) | 153 | `result-track:f2e87b152c5d5ce9c9e6d2af543813831cb256c6babc6b1554a9a3b488529f5c` |
| 23 | `def` | [rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/rec--8a690b3052c608ee8964c86b.md) | 180 | `declaration-track:8a690b3052c608ee8964c86b1bcdebc69f2cdf37e74fcd027200416c44b73baa` |
| 24 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/ext--fa524c0b8d20aa5da9e7bba7.md) | 188 | `result-track:fa524c0b8d20aa5da9e7bba7db3676ecf30b79a5b6217d6d8432f94ccd8486a3` |
| 25 | `theorem` | [δ_comp_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp--16826e3dc3c371277f20d92d.md) | 199 | `result-track:16826e3dc3c371277f20d92d5451180ed086f6a7634dfd0436fa3b21352109c7` |
| 26 | `theorem` | [δ_comp_σ_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp-of-le--64ee0509340305a4bbaa219d.md) | 205 | `result-track:64ee0509340305a4bbaa219d094396e222d166adffe13d094825c374fb95151e` |
| 27 | `theorem` | [δ_comp_σ_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp-self--53b69bfa8a79f2ad23fc8b7d.md) | 211 | `result-track:53b69bfa8a79f2ad23fc8b7d22ce9ea31f238556521a4b3b6c2d0c98292c9f06` |
| 28 | `theorem` | [δ_comp_σ_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp-succ--6927be6143cd03315f4d24c3.md) | 217 | `result-track:6927be6143cd03315f4d24c3c0b2c6817cc3d1362b08b5c5f4745d1f92fb9c69` |
| 29 | `theorem` | [δ_comp_σ_of_gt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp-of-gt--99b34f9662eb1773699645f8.md) | 222 | `result-track:99b34f9662eb1773699645f8b2a7921bc81f34041cd5de927c46081cdb7fcbc0` |
| 30 | `theorem` | [σ_comp_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp--7bf65142dfe6e89238ff6323.md) | 228 | `result-track:7bf65142dfe6e89238ff6323caef8569b301895d2f18c949c0c2e15709412313` |
| 31 | `lemma` | [δ_comp_δ_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp-nat--1cd804f3799778a5e9e8013a.md) | 234 | `result-track:1cd804f3799778a5e9e8013a2f1786fa4db3d1f7bd91039e3097d6ac5c9ed3b4` |
| 32 | `lemma` | [σ_comp_σ_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/comp-nat--580ddeab0e18d9237516096f.md) | 239 | `result-track:580ddeab0e18d9237516096faf66eb2838e469c0501f0b70ad0141b1651e9d19` |
| 33 | `def` | [toSimplexCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/tosimplexcategory--edd0710c8d20d43452382313.md) | 247 | `declaration-track:edd0710c8d20d43452382313ce5f409ca5546791639ea4592ea0a4cfc0ffe25f` |
| 34 | `lemma` | [toSimplexCategory_obj_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/tosimplexcategory-obj-mk--b6a125c49b42f3b28ab2a83e.md) | 263 | `result-track:b6a125c49b42f3b28ab2a83ea53b5c7e0770de27a32bd188a864851160c57f35` |
| 35 | `lemma` | [toSimplexCategory_map_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/tosimplexcategory-map--465cb456e490122840bff309.md) | 266 | `result-track:465cb456e490122840bff309d3352243175c29486b5aac68285118d3ba14e9f5` |
| 36 | `lemma` | [toSimplexCategory_map_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/tosimplexcategory-map--8f5c385d1728951c16bd42cb.md) | 270 | `result-track:8f5c385d1728951c16bd42cb50da49ee5952a40983dd6acc419125d4a59656ed` |
| 37 | `lemma` | [toSimplexCategory_len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7c548655def68eb217db57223b4fe8f4bde8ae63cc1f0c99a3c60363dc900562.lean/declarations/tosimplexcategory-len--523c8dbfb0158201f44231c2.md) | 274 | `result-track:523c8dbfb0158201f44231c2d30ec76bb5a0f78d109c8656079a56ffbe833048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
