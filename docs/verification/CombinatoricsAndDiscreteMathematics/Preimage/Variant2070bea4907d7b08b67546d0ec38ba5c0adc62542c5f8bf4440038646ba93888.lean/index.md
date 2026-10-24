# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Preimage.Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14f177b110d018e68d3d90c4ddfca35f6a26f91e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14f177b110d018e68d3d90c4ddfca35f6a26f91e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage--f3b3db86b69ec576086c102b.md) | 28 | `declaration-track:f3b3db86b69ec576086c102b961c81c7d53b3b2c31599149373538b7985233c9` |
| 2 | `theorem` | [mem_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/mem-preimage--de2efbccfebfe52767ff5b6e.md) | 32 | `result-track:de2efbccfebfe52767ff5b6e8cb2bfb36ffca7345d8be087e7a073c1a299a11e` |
| 3 | `theorem` | [coe_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/coe-preimage--9377eeb3a9a84f3af6adb82c.md) | 37 | `result-track:9377eeb3a9a84f3af6adb82cba4cb16232c18833c5af036f6f16291caad1a836` |
| 4 | `theorem` | [preimage_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-empty--a9b87e6848695434d973cfaa.md) | 42 | `result-track:a9b87e6848695434d973cfaa5d656c570aba1e9de03da7995ab8c17334891e12` |
| 5 | `theorem` | [preimage_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-univ--9712784863dc403d9db73dbe.md) | 46 | `result-track:9712784863dc403d9db73dbeb2ec605884c0566ea497293d3d94117abe771827` |
| 6 | `theorem` | [preimage_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-inter--85e898280fe9e42bc0dfefda.md) | 50 | `result-track:85e898280fe9e42bc0dfefdafe9c3433236b07fefac5a92504e2c36286f734e6` |
| 7 | `theorem` | [preimage_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-union--a4ca3c250299c6832efab87d.md) | 58 | `result-track:a4ca3c250299c6832efab87d870e0da10b82f5ac27e10fca42f5fe9d46571d01` |
| 8 | `theorem` | [preimage_compl'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-compl--653b286116bdd3f5fd03b9b8.md) | 65 | `result-track:653b286116bdd3f5fd03b9b81209ded404762fea90bb3cb0ca7d0d2be2f0408d` |
| 9 | `theorem` | [preimage_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-compl--b525ff559cf49a9b65dd003a.md) | 71 | `result-track:b525ff559cf49a9b65dd003a5109ebf2db241e08c5c25fec9a16663ec691149a` |
| 10 | `lemma` | [preimage_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-map--1e8bba19c81960fe04491538.md) | 77 | `result-track:1e8bba19c81960fe044915382147e14d9da57e2ad50e918b7deb8722bbc2e337` |
| 11 | `theorem` | [monotone_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/monotone-preimage--27fbaf4d6f57f6fd6bd36215.md) | 80 | `result-track:27fbaf4d6f57f6fd6bd36215b742f2f6865cbb99cc4b7b79e4773a22efa7f7e7` |
| 12 | `theorem` | [image_subset_iff_subset_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/image-subset-iff-subset-preimage--efb67d78bccda51faa67db7a.md) | 84 | `result-track:efb67d78bccda51faa67db7a330c4f98b7e4554ea86fcde2aa575303dd27598b` |
| 13 | `theorem` | [map_subset_iff_subset_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/map-subset-iff-subset-preimage--ae78220e4a8473d7757ab876.md) | 88 | `result-track:ae78220e4a8473d7757ab876c7cdd890dbda119a19cf937dbcbf8c57a60f365b` |
| 14 | `lemma` | [card_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/card-preimage--69dec1ebf4b12835127537b0.md) | 92 | `result-track:69dec1ebf4b12835127537b08510ffb46651f16818e47fd489ed19f62630ca37` |
| 15 | `theorem` | [image_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/image-preimage--0907827a71e64800f6527997.md) | 96 | `result-track:0907827a71e64800f65279979bcaee32fce6fef6edf3e02988d8f609db52cb44` |
| 16 | `theorem` | [image_preimage_of_bij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/image-preimage-of-bij--75be31b2a361b85ea00795b3.md) | 102 | `result-track:75be31b2a361b85ea00795b39ada7bef5adeea93e4e55f67ec9662a8cfcff95d` |
| 17 | `lemma` | [preimage_subset_of_subset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-subset-of-subset-image--8f6954419e26e9ccfa1780db.md) | 106 | `result-track:8f6954419e26e9ccfa1780db3aa38830485109945fef4b80415b3e4c144cdc80` |
| 18 | `theorem` | [preimage_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-subset--f4e4bcaa872c3430aa5a4346.md) | 110 | `result-track:f4e4bcaa872c3430aa5a43461039efad286bb4458694579b925dbfe5d89c721b` |
| 19 | `theorem` | [subset_map_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/subset-map-iff--06b213d4b7082bc43a382800.md) | 113 | `result-track:06b213d4b7082bc43a3828004a936d7cd99cb81977a7583d06143a5e21c307fb` |
| 20 | `theorem` | [sigma_preimage_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/sigma-preimage-mk--a215245325b645d09e32822a.md) | 118 | `result-track:a215245325b645d09e32822acd6641a3bbd25c0f3475aa0d8da900ce6b8a49ff` |
| 21 | `theorem` | [sigma_preimage_mk_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/sigma-preimage-mk-of-subset--fb3a8e0b4dc1c420a2c08bee.md) | 123 | `result-track:fb3a8e0b4dc1c420a2c08beecf7dfb8574754941024931666897a65d48f7085f` |
| 22 | `theorem` | [sigma_image_fst_preimage_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/sigma-image-fst-preimage-mk--f947049a2cb2e4799b5069a7.md) | 128 | `result-track:f947049a2cb2e4799b5069a7b761cdf4e6c00d428fbeb65930acbb41defbf93c` |
| 23 | `lemma` | [preimage_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-inl--8776e30bac643f722118620b.md) | 133 | `result-track:8776e30bac643f722118620babc505b27b2913a0759f015557f9285f67ec8992` |
| 24 | `lemma` | [preimage_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/preimage-inr--afd506bd11fae9a51293606f.md) | 137 | `result-track:afd506bd11fae9a51293606fde7b57db88c1e6b315df6ded82de2e65290bbde7` |
| 25 | `def` | [restrictPreimageFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/restrictpreimagefinset--5308225e33485135c3df074b.md) | 149 | `declaration-track:5308225e33485135c3df074b36b5c673934df1fcb3bf778d5c0f8e4f986d09b4` |
| 26 | `lemma` | [Finset.restrict_comp_piCongrLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Preimage/Variant2070bea4907d7b08b67546d0ec38ba5c0adc62542c5f8bf4440038646ba93888.lean/declarations/finset-restrict-comp-picongrleft--ca3c92c385f285a25d4b8d45.md) | 159 | `result-track:ca3c92c385f285a25d4b8d456ca34cfc3e4bec3f44de06971fd97696bf6de9f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
