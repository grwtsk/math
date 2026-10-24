# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Preimage.Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14554261bd32302154cac3c876eb5ed2e4897755",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14554261bd32302154cac3c876eb5ed2e4897755`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage--e2d64a47fad008bcc50dc958.md) | 36 | `declaration-track:e2d64a47fad008bcc50dc9586b4730ba7856ecafb12ce3fb3087f7147ed7f476` |
| 2 | `theorem` | [mem_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/mem-preimage--56fbf50fdacf37ba6723623f.md) | 40 | `result-track:56fbf50fdacf37ba6723623f60def1f3fdec4a2d98640a5725ee1633b6eca32d` |
| 3 | `theorem` | [coe_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/coe-preimage--a147ac12e3c3fc26b6c5eb25.md) | 45 | `result-track:a147ac12e3c3fc26b6c5eb2503291fabefee475de71599b8ed82021ed6c2ebbd` |
| 4 | `theorem` | [preimage_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-empty--b3919e85473d59898f11d579.md) | 50 | `result-track:b3919e85473d59898f11d579fdb34cca1367cb74deeb7511be6d9a4922065a3a` |
| 5 | `theorem` | [preimage_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-univ--f0a0b32a3d86c4beb01cc195.md) | 54 | `result-track:f0a0b32a3d86c4beb01cc195c5af7c9abc641907356393d25689444adf7d208a` |
| 6 | `theorem` | [preimage_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-inter--2a335b62a12a02f51abbd4b8.md) | 58 | `result-track:2a335b62a12a02f51abbd4b8ac02d310bbf1268719b29fb6261601b7143ee532` |
| 7 | `theorem` | [preimage_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-union--dc5efc7a49a5ee5fe995c9b7.md) | 66 | `result-track:dc5efc7a49a5ee5fe995c9b7d7548f994e272d3669d6eee724b21d57ff18028b` |
| 8 | `theorem` | [preimage_compl'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-compl--67edf1405c4e906e625d2b68.md) | 73 | `result-track:67edf1405c4e906e625d2b6855a80806d09a0bfbdb6b058fb86e42cfaa0122c1` |
| 9 | `theorem` | [preimage_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-compl--e26037b9bec02c45e7847624.md) | 79 | `result-track:e26037b9bec02c45e78476244cd2ac70acb743b550a4b584c468e0948affae12` |
| 10 | `lemma` | [preimage_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-map--12a04b52dec8d5586d72d92f.md) | 85 | `result-track:12a04b52dec8d5586d72d92f5e83b6df91252b85cd5419fed23211cd88be9809` |
| 11 | `theorem` | [monotone_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/monotone-preimage--dce90433c06be2d1a4fe5ba9.md) | 88 | `result-track:dce90433c06be2d1a4fe5ba904875ee967dc6d216d80ae1273916d19b97ae9cb` |
| 12 | `theorem` | [image_subset_iff_subset_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/image-subset-iff-subset-preimage--2735712dc506005015d1af94.md) | 92 | `result-track:2735712dc506005015d1af94687c7f1da27ec63414485a5335ff0c575b497206` |
| 13 | `theorem` | [map_subset_iff_subset_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/map-subset-iff-subset-preimage--65fd0926fd2225ae066e1073.md) | 96 | `result-track:65fd0926fd2225ae066e1073c014cddbec74ef75b7282c413aa1c05edc38ac5f` |
| 14 | `lemma` | [card_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/card-preimage--bafa30434d6cd54cbf0184da.md) | 100 | `result-track:bafa30434d6cd54cbf0184da08663fbcb8b8ba0e1cd5f0bd4c67e41ddab6270f` |
| 15 | `theorem` | [image_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/image-preimage--7d3fedb2fab763b9c77dcd72.md) | 104 | `result-track:7d3fedb2fab763b9c77dcd725e45ece4ce01384bb863bce5239e12642fb8e278` |
| 16 | `theorem` | [image_preimage_of_bij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/image-preimage-of-bij--3404d5e20c3b3824973ac633.md) | 110 | `result-track:3404d5e20c3b3824973ac63385da46ee4ecb22f0f2aa211f968ec479b542d14c` |
| 17 | `lemma` | [preimage_subset_of_subset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-subset-of-subset-image--d77cdc819dcfe8672c0cff0a.md) | 114 | `result-track:d77cdc819dcfe8672c0cff0a67f8ce97ff05cdbd9f9d88b0a4e6aa1ee92d9524` |
| 18 | `theorem` | [preimage_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-subset--5ea1bdff31e9361bc3572001.md) | 118 | `result-track:5ea1bdff31e9361bc35720015f3a7ce3c8b1a4a5ae91113dc89e8388f680adb5` |
| 19 | `theorem` | [subset_map_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/subset-map-iff--6e973c7ee9a4ba7bb003577f.md) | 121 | `result-track:6e973c7ee9a4ba7bb003577f1588be84079204fcd2e9feb70ccef00123014e2a` |
| 20 | `theorem` | [sigma_preimage_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/sigma-preimage-mk--d955dadabe66d904660c9d5b.md) | 126 | `result-track:d955dadabe66d904660c9d5bad2e70f8ca07d1deab1c92270097efbeac4b497e` |
| 21 | `theorem` | [sigma_preimage_mk_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/sigma-preimage-mk-of-subset--d2ee1574dc2a948a516b6c1d.md) | 131 | `result-track:d2ee1574dc2a948a516b6c1d312a4631bd0acfc3504d156de28876a604af693c` |
| 22 | `theorem` | [sigma_image_fst_preimage_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/sigma-image-fst-preimage-mk--0e47909f9875d5d8d384eee9.md) | 136 | `result-track:0e47909f9875d5d8d384eee9934b0620d2e26c5ef3c9451f007c602db74ba798` |
| 23 | `lemma` | [preimage_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-inl--c29ffc329a3a9f6cefc6d6cf.md) | 141 | `result-track:c29ffc329a3a9f6cefc6d6cff3cfacbd3bf1f9a6d1a7a0af7da0f8ebf7a7a674` |
| 24 | `lemma` | [preimage_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/preimage-inr--fdc6bb5730647073788c0d2c.md) | 145 | `result-track:fdc6bb5730647073788c0d2c322cdc9a49defb51073267b43b448d94266606f2` |
| 25 | `def` | [restrictPreimageFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/restrictpreimagefinset--9b969cfb08294fbf79c82fc5.md) | 157 | `declaration-track:9b969cfb08294fbf79c82fc560d63156e455ca199c05768e955fa0d05eb86098` |
| 26 | `lemma` | [Finset.restrict_comp_piCongrLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/declarations/finset-restrict-comp-picongrleft--21a5c58a79e784e43ec378a5.md) | 167 | `result-track:21a5c58a79e784e43ec378a5561fe81740c98b1debf2cd991b236b18452b059c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
