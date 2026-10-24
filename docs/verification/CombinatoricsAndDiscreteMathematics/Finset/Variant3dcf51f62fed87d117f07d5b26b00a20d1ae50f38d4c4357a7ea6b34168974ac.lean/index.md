# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c61283366bc290982a0c2697dcc1c1115d7cc86",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c61283366bc290982a0c2697dcc1c1115d7cc86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Multiset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm--8599a4b83725eee12596e485.md) | 43 | `declaration-track:8599a4b83725eee12596e4856dd6cc5290b55d2141ce12d2ac0309e6d06a25aa` |
| 2 | `theorem` | [lcm_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-def--044e5ebe9030c96f8bc8912c.md) | 48 | `result-track:044e5ebe9030c96f8bc8912c5225d396733ba56bfc6e8807f00531ce33565511` |
| 3 | `theorem` | [lcm_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-empty--302ea28155175eaa3fb5c5ae.md) | 52 | `result-track:302ea28155175eaa3fb5c5ae19b73371184d38aa3ab0a26440e2f74db5b76918` |
| 4 | `theorem` | [lcm_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-dvd-iff--7d84e62277d55eb03e6aa990.md) | 56 | `result-track:7d84e62277d55eb03e6aa990675bc1e2511b5355df8f00c532f8234f7c4b9b67` |
| 5 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-dvd--a5d3c490797b250f8c5c0a51.md) | 61 | `result-track:a5d3c490797b250f8c5c0a51540e8b216f3ac2d333695d0a0f82a7d195477235` |
| 6 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/dvd-lcm--29ceed977f59d875d4a6c39f.md) | 64 | `result-track:29ceed977f59d875d4a6c39f6ed5a174b2d10c92749a4a964e7b57c98a37ed83` |
| 7 | `theorem` | [lcm_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-insert--6a91fb5d76de17441e75d6d1.md) | 68 | `result-track:6a91fb5d76de17441e75d6d12178fc12bf4ce5df36f30859be1b17c2eef85b12` |
| 8 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-singleton--3e6bb9e391bc6179ca48bad3.md) | 76 | `result-track:3e6bb9e391bc6179ca48bad3ddebed26259758f94a0887db377e0220f1fecfe1` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/normalize-lcm--abe92c9ee7d8857e8101252f.md) | 80 | `result-track:abe92c9ee7d8857e8101252f5c1fa528f808f6c2a0dabd998e0d78ae96ee6ef1` |
| 10 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-union--c62f1999c9c5df0245d0aac3.md) | 82 | `result-track:c62f1999c9c5df0245d0aac304059a28c3b23c0b6745e12d1a9bcff96efe965d` |
| 11 | `theorem` | [lcm_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-congr--9b9965e2d43ff2abf7789977.md) | 86 | `result-track:9b9965e2d43ff2abf7789977fced1056268c0808b0114e369c1bbb48e5af48ca` |
| 12 | `theorem` | [lcm_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-mono-fun--2e3ea5318c82276e95da2c74.md) | 91 | `result-track:2e3ea5318c82276e95da2c742a7c47c2b147d50386f44a5149ae01ebc5c0e69c` |
| 13 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-mono--c840f08f95ea5aa07d5338a0.md) | 94 | `result-track:c840f08f95ea5aa07d5338a066c8a0e749f993865fec7ecfac0ae33f4b0a9e68` |
| 14 | `theorem` | [lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-image--0b2fc11b94200a86ccdd1e3a.md) | 97 | `result-track:0b2fc11b94200a86ccdd1e3ae950e6a4a0066681df8115447ef8552d4825bbc8` |
| 15 | `theorem` | [lcm_eq_lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-eq-lcm-image--433b36d9b6e84f613ffd90a1.md) | 101 | `result-track:433b36d9b6e84f613ffd90a10e46ae081d064e878b4fb46c873672a17367235b` |
| 16 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/lcm-eq-zero-iff--db1f325fd118f3493479aa2b.md) | 104 | `result-track:db1f325fd118f3493479aa2bd88477e1a8eb1f8d685a5bb71c358613785ef1ce` |
| 17 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd--6e245ab31205d07cf6c442d7.md) | 116 | `declaration-track:6e245ab31205d07cf6c442d7bb8e139208ac5f5720fa80d8ee773af8f0bc131d` |
| 18 | `theorem` | [gcd_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-def--86c16a34f444c9c452c8efda.md) | 121 | `result-track:86c16a34f444c9c452c8efda456dc525006b67379f2435f3f17aa00bd182b248` |
| 19 | `theorem` | [gcd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-empty--ad61b2983577b4e1eb07285a.md) | 125 | `result-track:ad61b2983577b4e1eb07285a71a7d17ae2093c29ef28b5bdbf27270292820681` |
| 20 | `theorem` | [dvd_gcd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/dvd-gcd-iff--e6b9b4964bac5dde831d4454.md) | 128 | `result-track:e6b9b4964bac5dde831d4454a145e1c54d1fd5807c706a84db6c6a24cb0dfe9c` |
| 21 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-dvd--41c27156190788f6443c8a88.md) | 133 | `result-track:41c27156190788f6443c8a8812abd8a53abf057dcfed57d27100804e4c0577b7` |
| 22 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/dvd-gcd--e19bcc0378a7b63fc493cc59.md) | 136 | `result-track:e19bcc0378a7b63fc493cc599b20d1201fb0cef4d49107d12ac89bcc7aecf787` |
| 23 | `theorem` | [gcd_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-insert--3ec7407a8bbf67de433a7958.md) | 140 | `result-track:3ec7407a8bbf67de433a7958c212f37c756ec422a2145d97790a0fd87c494544` |
| 24 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-singleton--757885064ae1f9b2eab0abd3.md) | 148 | `result-track:757885064ae1f9b2eab0abd34dbc674b414bec0efc8c7aaaab020fb8b932f522` |
| 25 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/normalize-gcd--bb891d4521fd370685c57a20.md) | 152 | `result-track:bb891d4521fd370685c57a2034259c8432013300ce8fdb7b91d2f5ec55c5e66e` |
| 26 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-union--4e3507875572104adc2a7319.md) | 154 | `result-track:4e3507875572104adc2a73199b476695238bed392879e30156ebc8a60bd39001` |
| 27 | `theorem` | [gcd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-congr--fe67a74669e19912bc90f9e3.md) | 158 | `result-track:fe67a74669e19912bc90f9e3de5d04d9d3c7a5e4a6dfa60a4033673e17774dd1` |
| 28 | `theorem` | [gcd_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-mono-fun--45bf96f25e3334e678fc5b70.md) | 163 | `result-track:45bf96f25e3334e678fc5b70d4a698d9ddf9c2a61b0c930bae0ca03567561556` |
| 29 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-mono--573d1e380235406982b4046e.md) | 166 | `result-track:573d1e380235406982b4046ed104b2becb34a04073c21cab8e1852b993eed376` |
| 30 | `theorem` | [gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-image--a41ce3eb76ee9da2ac4572a5.md) | 169 | `result-track:a41ce3eb76ee9da2ac4572a5cff156e94ef6489338a4a75eada32de6277f2bc4` |
| 31 | `theorem` | [gcd_eq_gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-eq-gcd-image--d5857750dc1d9361c1605dc0.md) | 173 | `result-track:d5857750dc1d9361c1605dc00dc04295d36612470667c27d990c6ddae235ddf3` |
| 32 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-eq-zero-iff--04ce3ba87b19996c9baaf3fd.md) | 176 | `result-track:04ce3ba87b19996c9baaf3fde3780a84759f2b9d2de5d7ec4592d79fce25f8e7` |
| 33 | `theorem` | [gcd_eq_gcd_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-eq-gcd-filter-ne-zero--7f84e664dc4d890913f7228b.md) | 189 | `result-track:7f84e664dc4d890913f7228b58ca6d1baaf8a1155703ac645a9ef212f2489c21` |
| 34 | `theorem` | [gcd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-mul-left--dc43430cd0078a9cbf6949f3.md) | 204 | `result-track:dc43430cd0078a9cbf6949f397c37e352f526d0e4eb6b35f7b29b121702566a3` |
| 35 | `theorem` | [gcd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-mul-right--907dfb0e6c2640dbaa24401e.md) | 212 | `result-track:907dfb0e6c2640dbaa24401e6a239f7515d329412e90c60f94de99404f21a5a5` |
| 36 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/extract-gcd--6270c7b3faf1df6227c7d2f4.md) | 220 | `result-track:6270c7b3faf1df6227c7d2f4e81cdd12d43084e14ee1200bd1b6334775795b50` |
| 37 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/extract-gcd--15b840eb5f9714ef5204d0e8.md) | 227 | `result-track:15b840eb5f9714ef5204d0e87d266d20fb9e08bdcb1aa65c0ee3688296fd71a2` |
| 38 | `lemma` | [gcd_div_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-div-eq-one--0af1e62ec6abc712fb54749f.md) | 244 | `result-track:0af1e62ec6abc712fb54749fc4f2315ea3f74983464222fbc298e84a8944ed12` |
| 39 | `lemma` | [gcd_div_id_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-div-id-eq-one--3cefe367f6707a16febb9799.md) | 250 | `result-track:3cefe367f6707a16febb97996a6906cfe537c960c101e073584dffdd919ac157` |
| 40 | `theorem` | [gcd_eq_of_dvd_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3dcf51f62fed87d117f07d5b26b00a20d1ae50f38d4c4357a7ea6b34168974ac.lean/declarations/gcd-eq-of-dvd-sub--0188dce3589c23e82b91c086.md) | 263 | `result-track:0188dce3589c23e82b91c0867cee04cdf36242f8ff0dccf05df11032c9bf5acc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
