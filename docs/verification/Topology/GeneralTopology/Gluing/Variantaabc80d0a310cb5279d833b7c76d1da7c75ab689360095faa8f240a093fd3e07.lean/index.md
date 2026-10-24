# Verification target: GRWTSK.Topology.GeneralTopology.Gluing.Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d742846b153613845bea1363bff216a2232062f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d742846b153613845bea1363bff216a2232062f`.

Source path: `GRWTSK/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GlueData` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Opens` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Generalize` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/gluedata--62f1603e5eddd883386cdaeb.md) | 93 | `declaration-track:62f1603e5eddd883386cdaeb6cfe082f5f25a2824ad70c2c985f1f5810eb35bf` |
| 2 | `theorem` | [π_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/surjective--8d042c9915516172e9367596.md) | 103 | `result-track:8d042c9915516172e9367596916b142b4e8a534b5f9d08c1e1ba42f2d4d87b62` |
| 3 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/isopen-iff--55f1d819bec7b25b87052de4.md) | 106 | `result-track:55f1d819bec7b25b87052de46a7c08b685d1f651c171976e7f27a2bf32ef50a8` |
| 4 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/jointly-surjective--a0178cf1405be225d9990394.md) | 113 | `result-track:a0178cf1405be225d99903947a95fb3eb68a0d4abcba05a615a8c90765d09ee8` |
| 5 | `def` | [Rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/rel--3ee129ce3f6cdacec4d21762.md) | 119 | `declaration-track:3ee129ce3f6cdacec4d21762471dc4d5ed22aeafe07ed7f2e425a597318b4835` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/rel-equiv--4fa9babdcb4ddd8770123f60.md) | 122 | `result-track:4fa9babdcb4ddd8770123f60e1a04f3bed14ccc56cb8caaff644cadbbf2a9c92` |
| 7 | `theorem` | [eqvGen_of_π_eq](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/eqvgen-of-eq--7f69d868fedb2bb468459126.md) | 152 | `result-track:7f69d868fedb2bb46845912636821d5c707ba4bf0c1a93d97ae8beda286c253c` |
| 8 | `theorem` | [ι_eq_iff_rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/eq-iff-rel--6436d9d5da91b8c0fdd56f21.md) | 186 | `result-track:6436d9d5da91b8c0fdd56f21a094063d1bd336c50dc7e85a5ad5dd9ee911d6ae` |
| 9 | `theorem` | [ι_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/injective--2e9ba2d5ebc1558b471211e3.md) | 216 | `result-track:2e9ba2d5ebc1558b471211e3eba94e1ef52384988f963f10f4a44cd7e915737e` |
| 10 | `instance` | [ι_mono](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/mono--68a7d472ab84039ce3491b70.md) | 224 | `declaration-track:68a7d472ab84039ce3491b705ad7684eb2e4d85fa65ed805b91e79139e9814b1` |
| 11 | `theorem` | [image_inter](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/image-inter--16871f6654b76ef4dabf12bb.md) | 227 | `result-track:16871f6654b76ef4dabf12bbeedf6d599d2ebf840c34a9aa003e560975afd604` |
| 12 | `theorem` | [preimage_range](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/preimage-range--a206d98c5b5fb9a181dbf0b7.md) | 240 | `result-track:a206d98c5b5fb9a181dbf0b78bd146b6bce2cf9b84e27f7e8b671182eb3d0acd` |
| 13 | `theorem` | [preimage_image_eq_image](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/preimage-image-eq-image--d333912e55a7e2d0b7d0fd86.md) | 245 | `result-track:d333912e55a7e2d0b7d0fd86b88be6aae4f4cc40f21f7a958e8b3dc72539de97` |
| 14 | `theorem` | [preimage_image_eq_image'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/preimage-image-eq-image--61696fc758018793bed4bd24.md) | 257 | `result-track:61696fc758018793bed4bd248a4b6a1722e85dd483a16f81a02b6e5d4ea5b6a3` |
| 15 | `theorem` | [open_image_open](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/open-image-open--53cc8410fd448337bbbcd036.md) | 268 | `result-track:53cc8410fd448337bbbcd03629a0545a11d024036cf2fa7dc61ea812537ec52e` |
| 16 | `theorem` | [ι_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/isopenembedding--038d2599c985856e3be138f6.md) | 276 | `result-track:038d2599c985856e3be138f6467770c54e2390826581c93597744c26f20b8517` |
| 17 | `structure` | [MkCore](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/mkcore--fc18c26d4f71ce2c50fa95ad.md) | 293 | `declaration-track:fc18c26d4f71ce2c50fa95ad11c725dd94fb61ec6169d1607349a8cf3cd4dd83` |
| 18 | `theorem` | [MkCore.t_inv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/mkcore-t-inv--72142d9ebf5c8118086c342d.md) | 310 | `result-track:72142d9ebf5c8118086c342de3d3e045e5db79ce709d7a8ce774e2cb3416cbc5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/instance--8cf57bbd3a9e7a591d2c9b7f.md) | 317 | `declaration-track:8cf57bbd3a9e7a591d2c9b7fe4b6f3dbb91445d155e9cbb87af4dc0ccc197916` |
| 20 | `def` | [MkCore.t'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/mkcore-t--d1889380698644561f65f757.md) | 321 | `declaration-track:d1889380698644561f65f75765c214306348e8f277cabf30b13fc1ef5361502b` |
| 21 | `def` | [mk'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/mk--54ec9517007fcb45201bf56f.md) | 334 | `declaration-track:54ec9517007fcb45201bf56f0b67a71000642a66442897a271c765f77a1d0ee9` |
| 22 | `def` | [ofOpenSubsets](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/ofopensubsets--fd8f2850f1d6a42402faf97a.md) | 369 | `declaration-track:fd8f2850f1d6a42402faf97ad0bdd1c4047fdd7f3ab17041931d800be375c18f` |
| 23 | `def` | [fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/fromopensubsetsglue--88e80ac1ec2b008422cbe12c.md) | 384 | `declaration-track:88e80ac1ec2b008422cbe12c416b37d1ef3286c4832908b26777c5634c4d800a` |
| 24 | `theorem` | [ι_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/fromopensubsetsglue--42be858433882c8eaf00fb4d.md) | 390 | `result-track:42be858433882c8eaf00fb4d710d5d7025d18bc9a025f22fc25e64ada229c194` |
| 25 | `theorem` | [fromOpenSubsetsGlue_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/fromopensubsetsglue-injective--35b3691dbfa6f211dbc3960a.md) | 394 | `result-track:35b3691dbfa6f211dbc3960ad8703754ffeb960cdff3637f02d64e888fc7f976` |
| 26 | `theorem` | [fromOpenSubsetsGlue_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/fromopensubsetsglue-isopenmap--0294eb2855876ad66e62dec8.md) | 405 | `result-track:0294eb2855876ad66e62dec8a738404fe8aef30407ee2337a283440f6b3418fd` |
| 27 | `theorem` | [fromOpenSubsetsGlue_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/fromopensubsetsglue-isopenembedding--b6a8d48fe839a3919a50b6a3.md) | 424 | `result-track:b6a8d48fe839a3919a50b6a3b2f1a9ca4f930741768e89df26518e61b38eb935` |
| 28 | `theorem` | [range_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/range-fromopensubsetsglue--c2bee30025bacddfb2540253.md) | 428 | `result-track:c2bee30025bacddfb25402538b4171463f216edcc6c906238f2ce6e1851e743d` |
| 29 | `def` | [openCoverGlueHomeo](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/declarations/opencovergluehomeo--c569e920a2314c33e197f419.md) | 440 | `declaration-track:c569e920a2314c33e197f41926c9c3fb6c350dc7f573eca34ca4c010bbf5e4dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
