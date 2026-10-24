# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VanKampen.Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "234334143a3f956799e30609ae546e4762ce41b6",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `234334143a3f956799e30609ae546e4762ce41b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean.json)

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
| 1 | `def` | [IsUniversalColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit--3b2fb37061e98bfa9a2167e7.md) | 52 | `declaration-track:3b2fb37061e98bfa9a2167e7c3400dd45daea55c2378335a5046aeca956f41e9` |
| 2 | `def` | [IsVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit--4f3423931977216d29c6918f.md) | 63 | `declaration-track:4f3423931977216d29c6918fc9ad6a6bfcc687f5a28667919ce6d4f27dc9ad74` |
| 3 | `theorem` | [IsVanKampenColimit.isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-isuniversal--88d75de5f69f9e413240d19b.md) | 68 | `result-track:88d75de5f69f9e413240d19bfa5405f65d71fd415440960dc1a9749e90859048` |
| 4 | `def` | [IsUniversalColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-iscolimit--fcd66808292a8b3c90b8a094.md) | 74 | `declaration-track:fcd66808292a8b3c90b8a094344dfcc98d7c3871095d1aec1516d68eeb896aff` |
| 5 | `def` | [IsVanKampenColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-iscolimit--3767c8ecb67bcf7cf94144b7.md) | 82 | `declaration-track:3767c8ecb67bcf7cf94144b725819187c7b85c93b8cefa38d7f495b0f2f38544` |
| 6 | `theorem` | [IsInitial.isVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isinitial-isvankampencolimit--accf3558ca5bf792bb517fa9.md) | 86 | `result-track:accf3558ca5bf792bb517fa9da98ab805b84174d6316dcef2153383b2523dcb3` |
| 7 | `theorem` | [IsUniversalColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-of-iso--470a0dbe557a60f135b68b68.md) | 97 | `result-track:470a0dbe557a60f135b68b68cdcfabe32d278a1bc7866b051a164af299ab3a05` |
| 8 | `theorem` | [IsVanKampenColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-of-iso--f2073483a1ba1498fb8446b2.md) | 108 | `result-track:f2073483a1ba1498fb8446b297d35ce759ef006d3aca5bcf64405a183ed39c3c` |
| 9 | `theorem` | [IsVanKampenColimit.precompose_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-precompose-isiso--c23862ddc15dfebb31757acd.md) | 121 | `result-track:c23862ddc15dfebb31757acd6bf48b528dbb66a019ce0bafe4167a8a35855db4` |
| 10 | `theorem` | [IsUniversalColimit.precompose_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-precompose-isiso--cc954198433d9c9a54b26eec.md) | 134 | `result-track:cc954198433d9c9a54b26eec6a28934beb4c7db608167184b5b3b5b9bcce07cf` |
| 11 | `theorem` | [IsVanKampenColimit.precompose_isIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-precompose-isiso-iff--009a6b8db65c0144cdefcf47.md) | 145 | `result-track:009a6b8db65c0144cdefcf474f0e645250c966a8de65eb852b11380110588f51` |
| 12 | `theorem` | [IsUniversalColimit.of_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-of-mapcocone--5f536b05614bf20de346b225.md) | 151 | `result-track:5f536b05614bf20de346b225fcaad91369f3e891ca271cd2ac5f21827ca7fd13` |
| 13 | `theorem` | [IsVanKampenColimit.of_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-of-mapcocone--df82963dbcbf90f0414c4dcc.md) | 159 | `result-track:df82963dbcbf90f0414c4dcc16e1f19ba3448f4ff42d1cd38ae5e53ee7b47dba` |
| 14 | `theorem` | [IsVanKampenColimit.mapCocone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-mapcocone-iff--8cd74182ff2990551fd5e067.md) | 174 | `result-track:8cd74182ff2990551fd5e06730a3f12fdacb8236b159061f678cea2221e009b0` |
| 15 | `theorem` | [IsUniversalColimit.whiskerEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-whiskerequivalence--9c9ab3a123548362ac265331.md) | 183 | `result-track:9c9ab3a123548362ac2653319bd70ce9f0ceed2f3a0368f999b77fe10ad00f0c` |
| 16 | `theorem` | [IsUniversalColimit.whiskerEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-whiskerequivalence-iff--8b9896156ea9d6112dfb44d8.md) | 200 | `result-track:8b9896156ea9d6112dfb44d85a684b949a1740c786b0de491c5d3deb12766ae9` |
| 17 | `theorem` | [IsVanKampenColimit.whiskerEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-whiskerequivalence--b919dda1b458c9940e0693f7.md) | 207 | `result-track:b919dda1b458c9940e0693f7b5795e154915adf8ea4583bfbbb9b593d2fb635d` |
| 18 | `theorem` | [IsVanKampenColimit.whiskerEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-whiskerequivalence-iff--9ab74a677cc6c2d2f7044b3a.md) | 234 | `result-track:9ab74a677cc6c2d2f7044b3a0add649a36b1895db304796b2959cd523a3a3d23` |
| 19 | `theorem` | [isVanKampenColimit_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-of-evaluation--f1634638ebfa943de44cae2a.md) | 240 | `result-track:f1634638ebfa943de44cae2ab83348b343f214cc240eea6b6d9988146d7c2585` |
| 20 | `theorem` | [IsUniversalColimit.map_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-map-reflective--8c95b51d961a13fb5d4dc433.md) | 264 | `result-track:8c95b51d961a13fb5d4dc43346eac5d6111de8f09de9255ea4c36109a1ecc562` |
| 21 | `theorem` | [IsVanKampenColimit.map_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-map-reflective--9245523edba81292019559d3.md) | 361 | `result-track:9245523edba81292019559d36c6dd4adc65fe392023f6c5914fa2345d2acccba` |
| 22 | `theorem` | [hasStrictInitial_of_isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/hasstrictinitial-of-isuniversal--7193b1067639967e1adb3985.md) | 423 | `result-track:7193b1067639967e1adb39852588f982c2ee2ab041ac0146b1b074db5bdac3ae` |
| 23 | `theorem` | [isVanKampenColimit_of_isEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-of-isempty--baaeaa0977576613cd9fa16f.md) | 437 | `result-track:baaeaa0977576613cd9fa16f4d4cd426c04865c16a15b7048ee242949f5e7fcd` |
| 24 | `theorem` | [BinaryCofan.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/binarycofan-isvankampen-iff--dec6105d3123cb2273a4dc0c.md) | 456 | `result-track:dec6105d3123cb2273a4dc0c253a4f2e3ad5c504be94b840bad9bf33ea7f0585` |
| 25 | `theorem` | [BinaryCofan.isVanKampen_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/binarycofan-isvankampen-mk--29ac5f19c888cf6c0f3e44ba.md) | 488 | `result-track:29ac5f19c888cf6c0f3e44ba14e4f91e885760b3b5bdc96a90dea3297a3655eb` |
| 26 | `theorem` | [BinaryCofan.mono_inr_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/binarycofan-mono-inr-of-isvankampen--70429b60d74ec471653d92c1.md) | 528 | `result-track:70429b60d74ec471653d92c14822d6984ef8c320024ec639763772b0e84095db` |
| 27 | `theorem` | [BinaryCofan.isPullback_initial_to_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/binarycofan-ispullback-initial-to-of-isvankampen--4f6716e97ff6d9991a1a4e24.md) | 539 | `result-track:4f6716e97ff6d9991a1a4e24a46afab5ca9e4bccc0ed943388f7fc50438aad0c` |
| 28 | `theorem` | [isUniversalColimit_extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-extendcofan--a0d162ad81a414b86bcc227d.md) | 554 | `result-track:a0d162ad81a414b86bcc227dd18cc7c3a0d0ccaee8ace53a8930d30004bf78c2` |
| 29 | `theorem` | [isVanKampenColimit_extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isvankampencolimit-extendcofan--14f77109525fb3df33a6d898.md) | 613 | `result-track:14f77109525fb3df33a6d8984bda34a8539e12c0f1586f38a62ba43a2353555b` |
| 30 | `theorem` | [isPullback_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/ispullback-of-cofan-isvankampen--ec078caa714be2624a2980bb.md) | 684 | `result-track:ec078caa714be2624a2980bbf5037180bfd8cc3809f127476a1511a0f073517c` |
| 31 | `theorem` | [isPullback_initial_to_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/ispullback-initial-to-of-cofan-isvankampen--aef57db8b27a5af2bdb03621.md) | 713 | `result-track:aef57db8b27a5af2bdb036212643829186ee4fd25fac285dde0953576e48bed1` |
| 32 | `theorem` | [mono_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/mono-of-cofan-isvankampen--3260d017b22106c09fc4cc6e.md) | 726 | `result-track:3260d017b22106c09fc4cc6e75eb07f1afbe49a531ab5b8affc7f3cd2fd7819f` |
| 33 | `lemma` | [IsUniversalColimit.nonempty_isColimit_of_pullbackCone_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-nonempty-iscolimit-of-pullbackcone-left--4eab5004a4ac05071aa8d3bf.md) | 755 | `result-track:4eab5004a4ac05071aa8d3bf9fc2d716451e82037a97d09daf05d9ca35124828` |
| 34 | `lemma` | [IsUniversalColimit.nonempty_isColimit_of_isPullback_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-nonempty-iscolimit-of-ispullback-left--592379651b2efff7ea79f642.md) | 782 | `result-track:592379651b2efff7ea79f642c4a0994a2ff2b3483be65622581456eb4640b8b8` |
| 35 | `lemma` | [IsUniversalColimit.isPullback_of_isColimit_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-ispullback-of-iscolimit-left--ae40bde8903fd55b555c11f2.md) | 796 | `result-track:ae40bde8903fd55b555c11f2ae44bdfaf06d4cd8ec5d4ac8e9c890b9f496b384` |
| 36 | `lemma` | [IsUniversalColimit.nonempty_isColimit_of_pullbackCone_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-nonempty-iscolimit-of-pullbackcone-right--78556aa98b05fd7d202fdc1b.md) | 820 | `result-track:78556aa98b05fd7d202fdc1b74e949c1ccabd6792889169bf3d47deafb10ad47` |
| 37 | `lemma` | [IsUniversalColimit.nonempty_isColimit_of_isPullback_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-nonempty-iscolimit-of-ispullback-right--eb9604820375b7b7792ef75a.md) | 847 | `result-track:eb9604820375b7b7792ef75a841e3eb765f726143ccd70b55a411482e2f6445d` |
| 38 | `lemma` | [IsUniversalColimit.isPullback_of_isColimit_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-ispullback-of-iscolimit-right--cbcf8622f3ee024b273991e7.md) | 861 | `result-track:cbcf8622f3ee024b273991e7d81caa5b35c850167488f87f4e2d9281bb889103` |
| 39 | `lemma` | [IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-nonempty-iscolimit-prod-of-pullbackcone--cf5a44c3a716594f6569572e.md) | 888 | `result-track:cf5a44c3a716594f6569572e5895f56c4fe17624fe94eb65180a2a6e360ec61e` |
| 40 | `lemma` | [IsUniversalColimit.nonempty_isColimit_prod_of_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-nonempty-iscolimit-prod-of-ispullback--10729fa19a9beeb506d625d5.md) | 918 | `result-track:10729fa19a9beeb506d625d5168314df2f4114ae48e955483dbb2d9eff1aa044` |
| 41 | `lemma` | [IsUniversalColimit.isPullback_prod_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/declarations/isuniversalcolimit-ispullback-prod-of-iscolimit--35a74bbbb8a6ebd4b3728117.md) | 933 | `result-track:35a74bbbb8a6ebd4b3728117c2c1b507cee2693579592d27bce9f0e883420e11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
