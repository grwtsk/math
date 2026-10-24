# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53228fe9b1f384fabd4e145d72429aa336aadaf7",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53228fe9b1f384fabd4e145d72429aa336aadaf7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/shortcomplex--3367b42d0c9ce5a57f2bedaf.md) | 29 | `declaration-track:3367b42d0c9ce5a57f2bedaf00ea5c892077e2a4ea5e149cf898161637a60d12` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/hom--b8b7690d8f21e93416f1ffde.md) | 52 | `declaration-track:b8b7690d8f21e93416f1ffde8587f63ab928b7c45b6d5281be6cec180e91607c` |
| 3 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/hom-id--53217b002ab8406e23211b40.md) | 71 | `declaration-track:53217b002ab8406e23211b400875a7d3dd3b504b21481a024c9ff4bcca2e57dd` |
| 4 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/hom-comp--bc35e5e915a416222802951b.md) | 78 | `declaration-track:bc35e5e915a416222802951b8284701010f21b5d4ef948848085d504b45e057c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/instance--fa8ab9b3d37c5c24d6b5ac72.md) | 83 | `declaration-track:fa8ab9b3d37c5c24d6b5ac7299b21cab873c937d230dea2de7364c8c213dc3eb` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/hom-ext--bda85bcf57b0ad2d6c7013eb.md) | 89 | `result-track:bda85bcf57b0ad2d6c7013ebbe9fb12e96a6981446ce404210ced2d18eb2ab92` |
| 7 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/hommk--444d0ac4c5563ec160ddddf4.md) | 95 | `declaration-track:444d0ac4c5563ec160ddddf4b6e861b268052d42c2353c8eb88066fe077fb134` |
| 8 | `lemma` | [id_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/id--7a488a2859a1da56d0ff9980.md) | 99 | `result-track:7a488a2859a1da56d0ff99806975840de541beb7fb56959019b6840bb652e8af` |
| 9 | `lemma` | [id_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/id--fb23b4fabf4a8125f6e83c6f.md) | 100 | `result-track:fb23b4fabf4a8125f6e83c6fdd444c6f3d749d9ebade7493335c16f4219d8923` |
| 10 | `lemma` | [id_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/id--b88c7cc96f31cba41ca89622.md) | 101 | `result-track:b88c7cc96f31cba41ca89622ba72bfb6df2dbe7503f6f1dd88d4864be86e4465` |
| 11 | `lemma` | [comp_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/comp--ef59e37f7c5b0eb5ddef1fca.md) | 102 | `result-track:ef59e37f7c5b0eb5ddef1fca968a3fc0e356d19c76696336af579541a55f556e` |
| 12 | `lemma` | [comp_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/comp--9dd41db60cca8d65e27bb145.md) | 104 | `result-track:9dd41db60cca8d65e27bb1455e61e048b4a61f9fe8b76dd8f69deaa40c60658c` |
| 13 | `lemma` | [comp_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/comp--cc54f142f5074b7a8bcc15b4.md) | 106 | `result-track:cc54f142f5074b7a8bcc15b4f36a49cbbc4c07a84d0d03c416d37ecdc80c00fc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/instance--07ee895726f8e40c542be612.md) | 111 | `declaration-track:07ee895726f8e40c542be6126746b94cc7a4510101dfec43c87c09ef45492607` |
| 15 | `lemma` | [zero_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/zero--49c3be35c112bbba21f4aa51.md) | 115 | `result-track:49c3be35c112bbba21f4aa512f1872a029242a8076027626138d74b3bd3ff0a8` |
| 16 | `lemma` | [zero_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/zero--a84b97ee73df46147c0aaadc.md) | 116 | `result-track:a84b97ee73df46147c0aaadc561a62c8643ef63cb4f723d48f7ba3b23265b6fe` |
| 17 | `lemma` | [zero_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/zero--6a76a418a19f2bad953d8c04.md) | 117 | `result-track:6a76a418a19f2bad953d8c0419d5e4a7a3d70854de6b667307732ac75313adb5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/instance--f2db819a32b459ed65a83590.md) | 121 | `declaration-track:f2db819a32b459ed65a83590e9004e28cf373d7d5cce2666ac09b7b244688431` |
| 19 | `def` | [π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/anonymous--c3e5aeafc713a565e9d03a1e.md) | 125 | `declaration-track:c3e5aeafc713a565e9d03a1e99fa8d16bbf93cccdea6771eac951b884ba59b34` |
| 20 | `def` | [π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/anonymous--93e38e67d79e6e5ae362419f.md) | 131 | `declaration-track:93e38e67d79e6e5ae362419fcc23cbacac43d2fb7b2a24d280af4c7e42d216cf` |
| 21 | `def` | [π₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/anonymous--3766b7b531200efddcafa36a.md) | 137 | `declaration-track:3766b7b531200efddcafa36a1991ab13d2a8280269cd5ad8f411c53e36dd60b4` |
| 22 | `instance` | [preservesZeroMorphisms_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/preserveszeromorphisms--e0a7154335a63e104b5a2078.md) | 141 | `declaration-track:e0a7154335a63e104b5a20786d0ca5073771699bb0b04f3bdfa04325633fc3c0` |
| 23 | `instance` | [preservesZeroMorphisms_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/preserveszeromorphisms--475b5ea913e8aa9866e5a04a.md) | 142 | `declaration-track:475b5ea913e8aa9866e5a04a32a95bcae3bdc6916fbc376be698986b77c15e59` |
| 24 | `instance` | [preservesZeroMorphisms_π₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/preserveszeromorphisms--f86a35a7dd3cf39f1813dc19.md) | 143 | `declaration-track:f86a35a7dd3cf39f1813dc19fba24e3a21c62e07a747c01957d26675e77e2ab2` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/instance--e48305da89879d35bdc59ef4.md) | 145 | `declaration-track:e48305da89879d35bdc59ef455e4b178be33290435bc3212dc4bdf4e782e3ad6` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/instance--c229abe30c22eafb258fe4aa.md) | 146 | `declaration-track:c229abe30c22eafb258fe4aa73986c28a16d3ef1bdf814cbe986657286411ecd` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/instance--80bb89c24c53e0f8679e7bde.md) | 147 | `declaration-track:80bb89c24c53e0f8679e7bde75403d6bd749a315c7994ed82a287636372c54f9` |
| 28 | `def` | [π₁Toπ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/to--3e3ae589e8e27f29b3dd7eeb.md) | 150 | `declaration-track:3e3ae589e8e27f29b3dd7eebe282368b9d3cbb9d33210a3ddefe89959c8f21d9` |
| 29 | `def` | [π₂Toπ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/to--c3dcb42f6c0f960a9a0a70d0.md) | 154 | `declaration-track:c3dcb42f6c0f960a9a0a70d095d8286afcb6a982f707d2ee39f5e19110f2eccd` |
| 30 | `lemma` | [π₁Toπ₂_comp_π₂Toπ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/to-comp-to--20cdfe2409837d0a0e14b4b5.md) | 158 | `result-track:20cdfe2409837d0a0e14b4b5dca6a04a9444b16d742717bde2c8d774489a1e44` |
| 31 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/map--116b1ad9c62ffded6ea1bdfa.md) | 166 | `declaration-track:116b1ad9c62ffded6ea1bdfa09e3b2063ff7127cef01b13c2434993b35c06f85` |
| 32 | `def` | [mapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/mapnattrans--38815335094944f3fddfec81.md) | 172 | `declaration-track:38815335094944f3fddfec818a3326b2c275daac4ca06a8a4f8dbd63ddc9e2e0` |
| 33 | `def` | [mapNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/mapnatiso--27838c27ecc2a94ac084eedf.md) | 181 | `declaration-track:27838c27ecc2a94ac084eedfbcfb0836daea19167f52bac199b79fe8b5385cf4` |
| 34 | `def` | [_root_.CategoryTheory.Functor.mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/root-categorytheory-functor-mapshortcomplex--f6b242939c494f2ce1e65265.md) | 189 | `declaration-track:f6b242939c494f2ce1e6526549e6b42b1a70f3a84eb2d3df52cfb9099b3c2d48` |
| 35 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/isomk--3e8b95062d1464116d5f5af6.md) | 205 | `declaration-track:3e8b95062d1464116d5f5af6d05a9a5530b387ae5ba752b6d97ff13c3a273735` |
| 36 | `lemma` | [isIso_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/isiso-of-isiso--46b7fc1880aea855f5738db0.md) | 216 | `result-track:46b7fc1880aea855f5738db0106ab39b7f742725943d6a1b0fb1cbca0738cb63` |
| 37 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/op--7b48acc1a397a19d3ca0b4d4.md) | 221 | `declaration-track:7b48acc1a397a19d3ca0b4d49a77a4b2a9978af82bcb8399ad4b9799550fa489` |
| 38 | `def` | [opMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/opmap--0723eef5a10b970ad5ddd189.md) | 226 | `declaration-track:0723eef5a10b970ad5ddd189590291401242746c2bfb881ea393f7c16d6ce7f1` |
| 39 | `lemma` | [opMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/opmap-id--d544c831bd9ba55726fa5fef.md) | 238 | `result-track:d544c831bd9ba55726fa5fef57500f0200ca37797243bd96e43b715349f3f8dd` |
| 40 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/unop--11edd022a332140016c8b11c.md) | 242 | `declaration-track:11edd022a332140016c8b11c34ae428c29ea03f147ec7d5bc1dc301b67824cdc` |
| 41 | `def` | [unopMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/unopmap--3f93c3cd03c33fb8796cc241.md) | 247 | `declaration-track:3f93c3cd03c33fb8796cc2416cc1a31b29ef777b0b5d683a8abbe6b4242ed32a` |
| 42 | `lemma` | [unopMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/unopmap-id--265672e9e643983d1e8e33f4.md) | 259 | `result-track:265672e9e643983d1e8e33f4c06a7c82d345e2ed988b4572f2330a1153510e76` |
| 43 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/opfunctor--2e5d646b3e43a5db02e8faad.md) | 265 | `declaration-track:2e5d646b3e43a5db02e8faad4d4c117cc5cf3123c820dba104715852363465bc` |
| 44 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/unopfunctor--96560a80d734e9c70d1755cf.md) | 271 | `declaration-track:96560a80d734e9c70d1755cfe5113542c0ea91953377f0284ab7a2a53c279fa0` |
| 45 | `def` | [opEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/opequiv--3999da87b170dead99e67d02.md) | 277 | `declaration-track:3999da87b170dead99e67d02c3909411142a376d669db371a188b60eaa1c7563` |
| 46 | `abbrev` | [unopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/unopop--2ca92948c4dc0751d3eaf845.md) | 286 | `declaration-track:2ca92948c4dc0751d3eaf845b04c6c18bd7bb0b8900db4e364526650f5ad3d9e` |
| 47 | `abbrev` | [opUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean/declarations/opunop--6fcad276f8fe4f2b05c9e93c.md) | 289 | `declaration-track:6fcad276f8fe4f2b05c9e93c847acaa71b2dbe3b23618d0425935964760e2a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
