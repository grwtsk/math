# Verification target: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean.json)

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
| 1 | `class` | [IsAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/isanisotropic--3239106d59c7807c5043398f.md) | 81 | `declaration-track:3239106d59c7807c5043398fedb6d9b6e6bd6edc74dd58ec0f9cc7a64e66754f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/instance--7ad131c5db07712d86a84cda.md) | 85 | `declaration-track:7ad131c5db07712d86a84cda1089787a0827d2b55fc7ef9771193c5b8f68b642` |
| 3 | `lemma` | [isAnisotropic_of_isValuedIn](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/isanisotropic-of-isvaluedin--5fe3a44f30f9ab497bc434db.md) | 89 | `result-track:5fe3a44f30f9ab497bc434db0c87d5345ffbbb0783706434578873fd810f2d19` |
| 4 | `instance` | [instIsAnisotropicOfIsCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/instisanisotropicofiscrystallographic--7259625e5ee5696a8bc4dd01.md) | 96 | `declaration-track:7259625e5ee5696a8bc4dd01ace44c662cf6731aeea3b5a5502e1f039b5e8240` |
| 5 | `def` | [toInvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/toinvariantform--39bbcd633f7f6b193599f478.md) | 101 | `declaration-track:39bbcd633f7f6b193599f478cb412ba7a9ca32786dd5069de712da171cdeefc5` |
| 6 | `lemma` | [smul_coroot_eq_of_root_add_root_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/smul-coroot-eq-of-root-add-root-eq--2c20174e24eb91c6184831c1.md) | 107 | `result-track:2c20174e24eb91c6184831c1448140e415705578d1201fc9c733eff3db0d2308` |
| 7 | `lemma` | [finrank_range_polarization_eq_finrank_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/finrank-range-polarization-eq-finrank-span-coroot--bd893840f0e5ceeb57e287bc.md) | 149 | `result-track:bd893840f0e5ceeb57e287bca37a1f1ad4498ab3ca4e13adedee260deb5c0280` |
| 8 | `lemma` | [finrank_corootSpan_le](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/finrank-corootspan-le--b7e69a86d74af96a0b0d5727.md) | 170 | `result-track:b7e69a86d74af96a0b0d572793deac796150ca7911a37c2c7a282e386b950f61` |
| 9 | `lemma` | [finrank_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/finrank-corootspan-eq--a12539251aa75ce4e8fbef7a.md) | 175 | `result-track:a12539251aa75ce4e8fbef7a77f3b496a8220678d40f89c84fa3ecddbcc0d56b` |
| 10 | `lemma` | [polarizationIn_Injective](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/polarizationin-injective--067f7f0276586b843ab13a2b.md) | 179 | `result-track:067f7f0276586b843ab13a2bccfd8a3f53fcec0ab56ff7da3e15fe1388367776` |
| 11 | `lemma` | [exists_coroot_ne](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/exists-coroot-ne--f1244489986c3a8f3344060e.md) | 188 | `result-track:f1244489986c3a8f3344060eb773b82d77b4b3968dd795daaab7ee85578b0727` |
| 12 | `theorem` | [posRootForm_posForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/posrootform-posform-pos-of-ne-zero--659f0f112269b15098e1138e.md) | 205 | `result-track:659f0f112269b15098e1138e54af733f2f371aa4e6fb4c1b2e58304dc01f6cf1` |
| 13 | `lemma` | [posRootForm_rootFormIn_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/posrootform-rootformin-posdef--bef521ea6e275e622b4cc858.md) | 215 | `result-track:bef521ea6e275e622b4cc858e8a408ac1b43ff73f8c337dffc19eebe38409252` |
| 14 | `lemma` | [posRootForm_posForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/posrootform-posform-anisotropic--82003d1f3f23c9a1105be3f4.md) | 219 | `result-track:82003d1f3f23c9a1105be3f415f9a79acd512dc9f68715b1229238f1829349ce` |
| 15 | `lemma` | [posRootForm_posForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/posrootform-posform-nondegenerate--666c79f5a5aa585cff468ebf.md) | 224 | `result-track:666c79f5a5aa585cff468ebf46e773a9d29afc7e8be8b7c717d7bd6eec88c872` |
| 16 | `lemma` | [finrank_rootSpan_map_polarization_eq_finrank_corootSpan](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/finrank-rootspan-map-polarization-eq-finrank-corootspan--45a6fe5f4a68ea06b0bd57d0.md) | 241 | `result-track:45a6fe5f4a68ea06b0bd57d0e587ea7d97b13723978774bb9514f2f515c5a9bc` |
| 17 | `lemma` | [finrank_corootSpan_le'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/finrank-corootspan-le--52764dc32d042d546e858c35.md) | 246 | `result-track:52764dc32d042d546e858c35697a6f9be27f1ba8666ea9e599faaf67a70741ed` |
| 18 | `lemma` | [finrank_corootSpan_eq'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/finrank-corootspan-eq--bf32ea64ea78f37c4f4ffd46.md) | 252 | `result-track:bf32ea64ea78f37c4f4ffd4665397c003a72efd9291b65607c1f902bd2ea5c41` |
| 19 | `lemma` | [disjoint_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/disjoint-rootspan-ker-rootform--1b5a5d5a82ed18ec48715098.md) | 256 | `result-track:1b5a5d5a82ed18ec48715098d93ab803b231653a551f4582a51a5398ba47c8ba` |
| 20 | `lemma` | [disjoint_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/disjoint-corootspan-ker-corootform--0ed26228a6d1e569afcc5290.md) | 263 | `result-track:0ed26228a6d1e569afcc5290726780a1e50ed40dd3f37137920b998c9553c97a` |
| 21 | `lemma` | [rootForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootform-nondegenerate--2dcc13226b1a0d6c66c0ef52.md) | 267 | `result-track:2dcc13226b1a0d6c66c0ef529e33b350c205097ecea47e1125f73ea43d64004a` |
| 22 | `lemma` | [isCompl_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/iscompl-rootspan-ker-rootform--5e70143a5a81f4a66834b82b.md) | 278 | `result-track:5e70143a5a81f4a66834b82b3cedb0830e774493d444f2b170b560409106ff22` |
| 23 | `lemma` | [isCompl_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/iscompl-corootspan-ker-corootform--7ebe467c636b9eb05af8ec1a.md) | 291 | `result-track:7ebe467c636b9eb05af8ec1a7b948cd420d15e82a251e3f3acec0949090ebbe9` |
| 24 | `lemma` | [ker_rootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/ker-rootform-eq-dualannihilator--d52bf3c628153c40bf5225f4.md) | 295 | `result-track:d52bf3c628153c40bf5225f41ae5646259fe7fdc42d6e9d6d8732e99b294e632` |
| 25 | `lemma` | [ker_corootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/ker-corootform-eq-dualannihilator--9e56d27366236256ed8ca184.md) | 309 | `result-track:9e56d27366236256ed8ca1841f19df2de3ffa29d6ef596c792418007101885c3` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/instance--113585f7c714872e68c377c0.md) | 314 | `declaration-track:113585f7c714872e68c377c09f44c9e595bf6b6f2b7d87b52487c27df193f2c5` |
| 27 | `lemma` | [rootForm_restrict_nondegenerate_of_isAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootform-restrict-nondegenerate-of-isanisotropic--706835a309bbb53da565e328.md) | 325 | `result-track:706835a309bbb53da565e328a72d71d6f7b5e3bafd12174bae99f5f5163860f2` |
| 28 | `lemma` | [orthogonal_rootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/orthogonal-rootspan-eq--64169f8fd84971b44d5df647.md) | 330 | `result-track:64169f8fd84971b44d5df64711d0584809ab7a8a8ebdb10309d0c3146d436557` |
| 29 | `lemma` | [orthogonal_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/orthogonal-corootspan-eq--b838db16fd51cbec74992a83.md) | 342 | `result-track:b838db16fd51cbec74992a83ffcda22f1859bc7277c73ededead709ea5685920` |
| 30 | `lemma` | [rootSpan_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootspan-eq-top-iff--73ed70d6539774feb8ea4847.md) | 346 | `result-track:73ed70d6539774feb8ea48472a4c46c5dbd25be8260b8e66e0e48c0c9af1f024` |
| 31 | `def` | [PolarizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/polarizationequiv--a9d1796b5c330ae54ce2e107.md) | 360 | `declaration-track:a9d1796b5c330ae54ce2e107fab2781543c6ab862bfdbf2ab3d36040a464108c` |
| 32 | `lemma` | [polarizationEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/polarizationequiv-tolinearmap--17ff89437b5c035cea494d41.md) | 365 | `result-track:17ff89437b5c035cea494d41d60efc5877ba469aa459bbb3a54e4b63a4152367` |
| 33 | `lemma` | [polarizationEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/polarizationequiv-apply--3227aac761ed0b66c188ec48.md) | 375 | `result-track:3227aac761ed0b66c188ec483242a3e0e443d9c891b81dea25ccb8bfcfd2f68b` |
| 34 | `lemma` | [coroot_eq_polarizationEquiv_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/coroot-eq-polarizationequiv-apply-root--b23762fd0d14104f02b01f5c.md) | 379 | `result-track:b23762fd0d14104f02b01f5cdba9951fcf4b478418a17702f7d23ce32d501abe` |
| 35 | `lemma` | [polarizationEquiv_symm_apply_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/polarizationequiv-symm-apply-coroot--d3bfe95bfa09b500779b0907.md) | 386 | `result-track:d3bfe95bfa09b500779b090771988b207109f56ee9af6d9f243c950efc85c7c9` |
| 36 | `lemma` | [linearIndepOn_coroot_iff_aux](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/linearindepon-coroot-iff-aux--31f328909ccd7461f1c5da90.md) | 392 | `result-track:31f328909ccd7461f1c5da905dc23f3b81f57ddaeb368915eb56d5a41068588a` |
| 37 | `lemma` | [linearIndepOn_coroot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/linearindepon-coroot-iff--e2f12e4c76658dff7257c464.md) | 404 | `result-track:e2f12e4c76658dff7257c464c1022abfd7912fb1a20d3909c35ad634e404137d` |
| 38 | `instance` | [instIsAnisotropicOfLinearOrderedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/instisanisotropicoflinearorderedcommring--3cb352b623c4b3d71350f754.md) | 417 | `declaration-track:3cb352b623c4b3d71350f7543cb890cefbf6a4f2880b04a5b48efa8f39bab3be` |
| 39 | `lemma` | [zero_le_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/zero-le-rootform--f64845633c80a8314bf9b775.md) | 420 | `result-track:f64845633c80a8314bf9b7754f6102d296c10073c6b8b4fa3e98005c466cb733` |
| 40 | `lemma` | [rootForm_restrict_nondegenerate_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootform-restrict-nondegenerate-of-ordered--eb0a574afb318393b0a77410.md) | 425 | `result-track:eb0a574afb318393b0a774105c40b23eb51e7b2f27beff5fa7654a2afbfab1d5` |
| 41 | `lemma` | [rootForm_self_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootform-self-eq-zero-iff--5e959b0cc07c457c7399627c.md) | 430 | `result-track:5e959b0cc07c457c7399627ce3a2b5c1292961ae0fa9fdc16de7fbb7bda26dd5` |
| 42 | `lemma` | [eq_zero_of_mem_rootSpan_of_rootForm_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/eq-zero-of-mem-rootspan-of-rootform-self-eq-zero--54c386c97a07743c4464f7a6.md) | 434 | `result-track:54c386c97a07743c4464f7a69329a5f8086c3ce9705d9e4d5413364c108ba306` |
| 43 | `lemma` | [rootForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootform-pos-of-ne-zero--dd5adcc83fd43eee2d37035d.md) | 440 | `result-track:dd5adcc83fd43eee2d37035d8176676bd7c1c77958d01f484d1b89f3610c1dd6` |
| 44 | `lemma` | [rootForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/declarations/rootform-anisotropic--53a635d7a71b328b89fc9d86.md) | 446 | `result-track:53a635d7a71b328b89fc9d864e3887f38c40c2fa25aaf23b9eb43eca3a993e2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
