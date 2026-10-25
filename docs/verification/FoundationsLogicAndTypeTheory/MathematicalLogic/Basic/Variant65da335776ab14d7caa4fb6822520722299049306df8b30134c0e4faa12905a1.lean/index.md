# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "625bb186b736b5b9822fa3a9e679dfd7cb923f4e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `625bb186b736b5b9822fa3a9e679dfd7cb923f4e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean.json)

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
| 1 | `theorem` | [coe_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/coe-def--ba7a5ab7899d67056f377d1a.md) | 45 | `result-track:ba7a5ab7899d67056f377d1a86e27463815724383c14187162c515075d2f7cd0` |
| 2 | `theorem` | [mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/mem-map--cd935b2d4838b159a97a3cc3.md) | 48 | `result-track:cd935b2d4838b159a97a3cc38383ef8c29109e87a1680ae49d81bc1b46c5c1cd` |
| 3 | `theorem` | [mem_map_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/mem-map-of-injective--7e5c0dbff31e8ca55ae516bb.md) | 51 | `result-track:7e5c0dbff31e8ca55ae516bb837a940c5a5fff10bb61d2761f197bef56b426cb` |
| 4 | `theorem` | [forall_mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/forall-mem-map--2c9c8c1c9b97e73aff100806.md) | 55 | `result-track:2c9c8c1c9b97e73aff1008061e30dfbb435f3be9b28f510501bd2eb30c45af48` |
| 5 | `theorem` | [exists_mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/exists-mem-map--d01a063610472460f6a7f6dc.md) | 58 | `result-track:d01a063610472460f6a7f6dc5a0d5c83a0b68a6167687f7568e8029924beb48d` |
| 6 | `theorem` | [coe_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/coe-get--422751c3087111fce1699c28.md) | 61 | `result-track:422751c3087111fce1699c2839095e2c4ca1252210cfb038b04427436668d8a1` |
| 7 | `theorem` | [eq_of_mem_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/eq-of-mem-of-mem--38e0633a854ea9854f108bf7.md) | 64 | `result-track:38e0633a854ea9854f108bf7d526535abf8b1d7f2d2f0e174e88ddb48c25aa7d` |
| 8 | `theorem` | [Mem.leftUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/mem-leftunique--8c7080b82762d1995accaafe.md) | 67 | `result-track:8c7080b82762d1995accaafeb8a78c5f46d792d5fbbe27d52700299e21d9d713` |
| 9 | `theorem` | [some_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/some-injective--d18936ceb986f4493a3009c5.md) | 70 | `result-track:d18936ceb986f4493a3009c51f997cfefd577de08cfb14cb1ce95f82f14be886` |
| 10 | `theorem` | [map_comp_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-comp-some--f13075164db3e213303949e6.md) | 73 | `result-track:f13075164db3e213303949e65d840fb4239d0691e06d2e51f78e3f625da81e75` |
| 11 | `theorem` | [bind_congr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/bind-congr--4fff902ebbfbe874cfd59a76.md) | 77 | `result-track:4fff902ebbfbe874cfd59a7671ffaee18189d82521a6e96a11e209de7bd978b5` |
| 12 | `theorem` | [joinM_eq_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/joinm-eq-join--d73b4a47b93018b6143c675d.md) | 81 | `result-track:d73b4a47b93018b6143c675db0fefb56ad9aedf8afb97222651f8e3cde2591a1` |
| 13 | `theorem` | [bind_eq_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/bind-eq-bind--add4402d9aaa12fe5c78a9a7.md) | 84 | `result-track:add4402d9aaa12fe5c78a9a728b7bfe611660e514c11061aa5db96a40276f0c1` |
| 14 | `theorem` | [map_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-coe--dd864d175e35083f48833468.md) | 87 | `result-track:dd864d175e35083f488334686ee594f3055730e8cf2c1759a450b5bbbf0afb8f` |
| 15 | `theorem` | [map_coe'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-coe--75586640daf2ae5333785117.md) | 91 | `result-track:75586640daf2ae5333785117755d8748fc5c1247ae2071cf1fbc3e6f47e2a567` |
| 16 | `theorem` | [map_injective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-injective--38d8409f69c053820d9800bc.md) | 95 | `result-track:38d8409f69c053820d9800bc1705f0b2753ba4e5918c018a11ae78144c7e69d1` |
| 17 | `theorem` | [map_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-inj--b82b582a36654d478ff186b7.md) | 99 | `result-track:b82b582a36654d478ff186b75b58d0bbc0ab986ec22ee89c5aa5d874c06b8ee3` |
| 18 | `theorem` | [map_eq_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-eq-id--cd98aefb16fa59e969485928.md) | 103 | `result-track:cd98aefb16fa59e9694859285674e0466b1ae535c9e07ab7614cfe8b80bb49d6` |
| 19 | `theorem` | [map_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/map-comm--93235c33a5883f940183350a.md) | 106 | `result-track:93235c33a5883f940183350a8166ca23f3a0b6062b42e895d5662faa276d5235` |
| 20 | `theorem` | [mem_pmem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/mem-pmem--7f168efcde19d4bc499b7bba.md) | 114 | `result-track:7f168efcde19d4bc499b7bbab0780ff6a8eeb02c4719b6d5350b2fd8dc2eb5ac` |
| 21 | `theorem` | [pmap_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/pmap-bind--b01c8ec948f222004f52a0a4.md) | 119 | `result-track:b01c8ec948f222004f52a0a47cdf070d5c5db744eb916eb2810ec33040ce6adc` |
| 22 | `theorem` | [bind_pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/bind-pmap--fac21d8a2590c73197dd46a6.md) | 124 | `result-track:fac21d8a2590c73197dd46a6949b38ea0a220dbc19f869af550e2972e8db333a` |
| 23 | `theorem` | [pbind_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/pbind-eq-none--a3f92e14ca7a6e84610d085f.md) | 130 | `result-track:a3f92e14ca7a6e84610d085fcbd67e2646dcef53277b97a9523b9c2b72ff0a88` |
| 24 | `theorem` | [join_pmap_eq_pmap_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/join-pmap-eq-pmap-join--7c72305a6fcad4347d2924f3.md) | 134 | `result-track:7c72305a6fcad4347d2924f3c060d7a1aa5e60bb872ca708c4d5fbc213702f88` |
| 25 | `theorem` | [pmap_bind_id_eq_pmap_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/pmap-bind-id-eq-pmap-join--ae53508bc4bd1a6d34c1c9d2.md) | 138 | `result-track:ae53508bc4bd1a6d34c1c9d242b0b6b2d1afeb08ba95e63a032ca7d36a3856c8` |
| 26 | `theorem` | [seq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/seq-some--77894b3e293ee40ad994851b.md) | 146 | `result-track:77894b3e293ee40ad994851b2070309d67ff9e17c13eadd0aec6bc6ff07e9770` |
| 27 | `theorem` | [failure_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/failure-eq-none--c9a670c936c865ac7c4f2182.md) | 150 | `result-track:c9a670c936c865ac7c4f21829e8183cc53c952f00c5aa9fc09c2b025abdf3e42` |
| 28 | `theorem` | [guard_eq_some'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/guard-eq-some--f443049b75e9fa23c92c5e6a.md) | 153 | `result-track:f443049b75e9fa23c92c5e6ad35540acc9bc2d83cdf5c834a79334b059646dba` |
| 29 | `def` | [casesOn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/caseson--ad239a3d7a658756992f9846.md) | 158 | `declaration-track:ad239a3d7a658756992f98463a25f932a2c21abc2c49cd0a3f65426ea72a9e10` |
| 30 | `theorem` | [casesOn'_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/caseson-none--f2bc03116d8dcf3eaedc3a3d.md) | 163 | `result-track:f2bc03116d8dcf3eaedc3a3d41b734dcc44d677affdc7fbee482f55bb751f97f` |
| 31 | `theorem` | [casesOn'_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/caseson-some--b3777e5133f052ad1b11ed2f.md) | 167 | `result-track:b3777e5133f052ad1b11ed2f8af6293abb9aaf88401b4a698edb3022a31d0c14` |
| 32 | `theorem` | [casesOn'_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/caseson-coe--97636ea309ac976a8c15f331.md) | 171 | `result-track:97636ea309ac976a8c15f33132827d01bf0fc6403412452a433b0d9f3aee3cce` |
| 33 | `theorem` | [casesOn'_none_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/caseson-none-coe--a0d465824a1287bb8f7027d0.md) | 175 | `result-track:a0d465824a1287bb8f7027d0152d45720b085d91caae664151bf420655f769b9` |
| 34 | `lemma` | [casesOn'_eq_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/caseson-eq-elim--c81e2a72549fec3598f643dc.md) | 178 | `result-track:c81e2a72549fec3598f643dc9e2a7542ed983093429cfe805d7b8de1e4913456` |
| 35 | `theorem` | [orElse_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/orelse-eq-some--19dbbd7fda57347c772a4718.md) | 181 | `result-track:19dbbd7fda57347c772a4718c54d1084c9c14d80894baef58168b6c9a3497783` |
| 36 | `theorem` | [orElse_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/orelse-eq-none--aa95890194e087cb569d973c.md) | 185 | `result-track:aa95890194e087cb569d973c22f46f64db740e8aa95f64e9ebf63b1d9d9e0043` |
| 37 | `theorem` | [choice_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/choice-eq-none--9dcde8de92ece74785e5f845.md) | 190 | `result-track:9dcde8de92ece74785e5f845923937c5bb0f2fac249537375ba6d44bb2c749a0` |
| 38 | `theorem` | [elim_none_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/elim-none-some--fff47de7a38df6ee19e009a0.md) | 196 | `result-track:fff47de7a38df6ee19e009a096791123c27bcc40dd1eb8f4590d0dc3c795fddf` |
| 39 | `theorem` | [elim_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/elim-comp--0a1f6b7d465c6e3a3723d1ab.md) | 199 | `result-track:0a1f6b7d465c6e3a3723d1ab07d909ce94b493a5f1e8f81571cc34dab75f011a` |
| 40 | `theorem` | [elim_comp₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/elim-comp--982451a43a501bbc690a3006.md) | 202 | `result-track:982451a43a501bbc690a300685e4331a5f889af8189729792182324c1312a9ff` |
| 41 | `theorem` | [elim_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/elim-apply--5792ea2088348035cc170fa9.md) | 206 | `result-track:5792ea2088348035cc170fa9c32187381a5db36d5ef005172733be7d643797e7` |
| 42 | `lemma` | [elim'_update](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/elim-update--49495f617eb2e670c368aa95.md) | 211 | `result-track:49495f617eb2e670c368aa95575fe489151bc41dd802f5d655288d6c5a96197f` |
| 43 | `lemma` | [getD_comp_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/getd-comp-some--3d17142e1c47ea9582410aa5.md) | 220 | `result-track:3d17142e1c47ea9582410aa54ed036538a5b5a34f7041cd551c59e2155019838` |
| 44 | `theorem` | [none_eq_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/none-eq-map-iff--2d4d543bbfc6cd55fd7d95e8.md) | 225 | `result-track:2d4d543bbfc6cd55fd7d95e869f1c76b93c86b3989fcc0589568cf5b6127a9ce` |
| 45 | `theorem` | [some_eq_map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant65da335776ab14d7caa4fb6822520722299049306df8b30134c0e4faa12905a1.lean/declarations/some-eq-map-iff--a0fc065024d1f0b22d4c79ff.md) | 229 | `result-track:a0fc065024d1f0b22d4c79ffe51491b5210aa855bc58b29ce4cb6dae7b0af065` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
