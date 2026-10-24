# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c10048c98afc5c53c3006a223c5ef3cc6f1d28",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c10048c98afc5c53c3006a223c5ef3cc6f1d28`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelIso.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.NodupEquivFin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort--995b0491c2067af3472bbe9e.md) | 33 | `declaration-track:995b0491c2067af3472bbe9e9f439cade68b01254d9ada2c607d538c95eceb06` |
| 2 | `theorem` | [sort_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-sorted--7f9c5ff04ca0b30fa6df5993.md) | 38 | `result-track:7f9c5ff04ca0b30fa6df599348a737b1fdad4a2e23ffabcf9a1f659b85372366` |
| 3 | `theorem` | [sort_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-eq--1a293b4d5b0bdcab779cc0f9.md) | 43 | `result-track:1a293b4d5b0bdcab779cc0f957ffe0cec2f1f5a950f737082b1775edc547d211` |
| 4 | `theorem` | [sort_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-nodup--b7ec9b3171f9c676db65a52e.md) | 48 | `result-track:b7ec9b3171f9c676db65a52e5dc006dc28debe61a4b7c81e4c4409d479b60aae` |
| 5 | `theorem` | [sort_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-tofinset--e6443bcfc79ba35141b284ae.md) | 53 | `result-track:e6443bcfc79ba35141b284ae7cde1f7f206e51bc853aee1c3955c39ab7ff1e66` |
| 6 | `theorem` | [mem_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/mem-sort--345b1bf117bf0c0e6f38a565.md) | 58 | `result-track:345b1bf117bf0c0e6f38a565cd79e2efcdecaacf392c5b13f55c0082d87c8e84` |
| 7 | `theorem` | [length_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/length-sort--2af99f38bfa397a94af856c9.md) | 63 | `result-track:2af99f38bfa397a94af856c91b43136666e3dd5f5becbc0f6bc689a3df72cf30` |
| 8 | `theorem` | [sort_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-empty--91b6b3da7ef57dfa1ff54cef.md) | 68 | `result-track:91b6b3da7ef57dfa1ff54cef945a19ddff5901d4cfa8a55227e389d401c71b3e` |
| 9 | `theorem` | [sort_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-singleton--30a74c2fef25219261a01835.md) | 73 | `result-track:30a74c2fef25219261a01835713711500c4057fcf407c9a5b12346284b196f23` |
| 10 | `theorem` | [sort_perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-perm-tolist--d61a9b5abcb81e97192b6184.md) | 77 | `result-track:d61a9b5abcb81e97192b61844b218e12561afa60548cfcc98e474eb54f67116a` |
| 11 | `theorem` | [sort_sorted_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sort-sorted-lt--678109e5ac98ee1fce668422.md) | 88 | `result-track:678109e5ac98ee1fce668422e2e0b413ceceed19c1faa7c4107a836f5031e1e5` |
| 12 | `theorem` | [sorted_zero_eq_min'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sorted-zero-eq-min-aux--8fb9af6076925c52e1424235.md) | 92 | `result-track:8fb9af6076925c52e14242351c35bd98be0c930743faae11772a9b8418604f62` |
| 13 | `theorem` | [sorted_zero_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sorted-zero-eq-min--7c41f72c7be32f98236a7873.md) | 104 | `result-track:7c41f72c7be32f98236a787337163d76992117e6baa7a7221fb2440539e6519a` |
| 14 | `theorem` | [min'_eq_sorted_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/min-eq-sorted-zero--3f395eb7159f2e4253fe185a.md) | 109 | `result-track:3f395eb7159f2e4253fe185ac5002bd007a1f4ce87eb73c438184a445b135563` |
| 15 | `theorem` | [sorted_last_eq_max'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sorted-last-eq-max-aux--ec9b745c29f4894e2f17626e.md) | 114 | `result-track:ec9b745c29f4894e2f17626ea637de28fb9f3a8137313c8b9375b378e1ddfd1e` |
| 16 | `theorem` | [sorted_last_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/sorted-last-eq-max--8f0cc20becdaf6e7c69ac326.md) | 128 | `result-track:8f0cc20becdaf6e7c69ac326b57ce28391275feda24fedac57686cfabc6cfc44` |
| 17 | `theorem` | [max'_eq_sorted_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/max-eq-sorted-last--382945563d3e61af0c6691e6.md) | 135 | `result-track:382945563d3e61af0c6691e6103a45edbeba2f279f08ec255ade125b7ab8ec8a` |
| 18 | `def` | [orderIsoOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderisooffin--c96494abc5e76019b4bd3729.md) | 146 | `declaration-track:c96494abc5e76019b4bd3729865b02d0d51e47cfb8092d04ac62704cf290c161` |
| 19 | `def` | [orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin--17053f1515cc068486b66c6d.md) | 155 | `declaration-track:17053f1515cc068486b66c6df0654384d48494ea1763a359addb5c22cc005cfd` |
| 20 | `theorem` | [coe_orderIsoOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/coe-orderisooffin-apply--530eb09e10b6642d662dcffe.md) | 160 | `result-track:530eb09e10b6642d662dcffe98fc1e1bc26b373c71177d909313a1d9ae7ea488` |
| 21 | `theorem` | [orderIsoOfFin_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderisooffin-symm-apply--5b1fe0e247afac88710abb8f.md) | 165 | `result-track:5b1fe0e247afac88710abb8ff512e8194857afe4e1a8dac5bc1631dc7f45e5c1` |
| 22 | `theorem` | [orderEmbOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-apply--826a0a80d1dbdf4be3dcbd03.md) | 170 | `result-track:826a0a80d1dbdf4be3dcbd036d34ecef12fbfe39bcf462cf7d83686426fa49b5` |
| 23 | `theorem` | [orderEmbOfFin_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-mem--d0f6bbba8c1d8c9f594f3b6b.md) | 177 | `result-track:d0f6bbba8c1d8c9f594f3b6b698abde09d690ca71d1d11a51615e6a0a7dbd842` |
| 24 | `theorem` | [range_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/range-orderemboffin--4d22377cc3372fcfcbdf1a1b.md) | 183 | `result-track:4d22377cc3372fcfcbdf1a1b978d40d568ccb0e35f8160a995ac92896f148f8c` |
| 25 | `theorem` | [orderEmbOfFin_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-zero--04727cdd2898c591ebbdbe81.md) | 192 | `result-track:04727cdd2898c591ebbdbe815f1aa9258986923e3c0fb1b8c546f3305e3a98b3` |
| 26 | `theorem` | [orderEmbOfFin_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-last--38dcdffd36f921d9cc10b6a0.md) | 198 | `result-track:38dcdffd36f921d9cc10b6a01680672a1626814381d05cd5e04dc29e55efc80d` |
| 27 | `theorem` | [orderEmbOfFin_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-singleton--32ad0d4bf5cde40ab1d38fbc.md) | 206 | `result-track:32ad0d4bf5cde40ab1d38fbc1905539b280dadda88740d123f44da201978c0b9` |
| 28 | `theorem` | [orderEmbOfFin_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-unique--ab4527820394d81ff1584012.md) | 213 | `result-track:ab4527820394d81ff158401214de7996be26fb0a04fe468bd90283c2ebeb9626` |
| 29 | `theorem` | [orderEmbOfFin_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-unique--fe1c68f2026d7e8e974cddf2.md) | 225 | `result-track:fe1c68f2026d7e8e974cddf29d510e5b61bb39ba9c342ab7713d797459cb5b39` |
| 30 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderemboffin-eq-orderemboffin-iff--54f9fda943ba8e5c05351c2a.md) | 234 | `result-track:54f9fda943ba8e5c05351c2a3b3bbb31d320815964bf6143428286c5c27539d0` |
| 31 | `def` | [orderEmbOfCardLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderembofcardle--16add30260b4232b69dba265.md) | 244 | `declaration-track:16add30260b4232b69dba265f3479220a3ab5d466cd75a77bbea84850d5aca8b` |
| 32 | `theorem` | [orderEmbOfCardLe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/orderembofcardle-mem--a839ea6fbcc6279536577dd9.md) | 248 | `result-track:a839ea6fbcc6279536577dd9f8cee9739bca70ced0d805b431771ea9f3baf54a` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean/declarations/instance--ac5ee09c7afad18496222bfd.md) | 256 | `declaration-track:ac5ee09c7afad18496222bfd07d9164b34e0fe10326ed469595c3bbb0f732136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
