# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.IntervalDyadic.Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b77f3102dc0f912b0389995fefcaf7161365b344`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Dyadic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalDyadic](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/intervaldyadic--c406d4d78278a223aa7475a2.md) | 47 | `declaration-track:c406d4d78278a223aa7475a23acae5daa433752b83af2fb4eb9425a927066638` |
| 2 | `def` | [toSet](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/toset--77b1077d30f5bcbfbeb4559f.md) | 61 | `declaration-track:77b1077d30f5bcbfbeb4559f06c1f68b5d697445ac99d691b32a6cb96d9085e2` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/instance--a16973880e3b33e9e723d46b.md) | 64 | `declaration-track:a16973880e3b33e9e723d46b6602b000e0d9bb24aa21ffe2cf4210b16b61a184` |
| 4 | `theorem` | [mem_def](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-def--6cccb3d2f8fa13a865f74f14.md) | 68 | `result-track:6cccb3d2f8fa13a865f74f14c4e44898630d69b04976d255817d21c83d65ed77` |
| 5 | `def` | [toIntervalRat](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/tointervalrat--ce98ad69b85ffe440fdc6f9d.md) | 74 | `declaration-track:ce98ad69b85ffe440fdc6f9d08a38e749df1b422957ef3552ff134d3aba3a6db` |
| 6 | `theorem` | [mem_toIntervalRat](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-tointervalrat--1ad5189e298e39a3dd76c274.md) | 78 | `result-track:1ad5189e298e39a3dd76c27423f125e30cc1c38d38a816770858122f59b88a7b` |
| 7 | `def` | [singleton](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/singleton--ce8b3f8f6adc67280cfe6f9b.md) | 85 | `declaration-track:ce8b3f8f6adc67280cfe6f9b5fc355a5c98f0d6ee9e12dcc47a0fb52e97c2210` |
| 8 | `theorem` | [mem_singleton](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-singleton--ed4fae1affdb61de6ff44c32.md) | 88 | `result-track:ed4fae1affdb61de6ff44c326e7764f203229d35a9ec6cf2c74cc88ea014a29c` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/instance--c4cad46b581acc8770914c97.md) | 93 | `declaration-track:c4cad46b581acc8770914c977b29d16917fab05faa6d24a17ccd3c50ef5414f2` |
| 10 | `def` | [mk?](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mk--2d10b2af63ce44a906e9db79.md) | 97 | `declaration-track:2d10b2af63ce44a906e9db79faa5f6ff14f813c18b0ecdd744fc9925b2c1d10f` |
| 11 | `def` | [width](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/width--626672a0df23f28470be08b0.md) | 101 | `declaration-track:626672a0df23f28470be08b019c7a28853f9af9cc5334ce68107bb4b36139906` |
| 12 | `def` | [midpoint](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/midpoint--4abc082bab2a2e95c82de2e0.md) | 104 | `declaration-track:4abc082bab2a2e95c82de2e05aea55855d4ae4f9a0c2b3d27ab1d7e575c8a0a3` |
| 13 | `def` | [roundOut](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/roundout--6205100af4f74bea6925da92.md) | 117 | `declaration-track:6205100af4f74bea6925da9299afcc3c90531198bfe3a0ae426aef83d3fabef0` |
| 14 | `theorem` | [roundOut_contains](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/roundout-contains--0496d5e00a4ab2db55caf7b4.md) | 128 | `result-track:0496d5e00a4ab2db55caf7b484d4cae170c203f1af2bb5d253d9fc210fa67fda` |
| 15 | `def` | [neg](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/neg--e83f681d432170efcf522f96.md) | 146 | `declaration-track:e83f681d432170efcf522f96e95eb4f6c515ccd71071affe305fcc0076c84d7a` |
| 16 | `theorem` | [mem_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-neg--297f7f1b95f2f01c16f54cd1.md) | 154 | `result-track:297f7f1b95f2f01c16f54cd14032f1d4b892b6b4c4243ca66bf17cf26a820fed` |
| 17 | `def` | [add](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/add--d17f2b571be2fbce84c027e4.md) | 162 | `declaration-track:d17f2b571be2fbce84c027e44dceaea8f10a2c101a7f6d1cd69bfcbd7109a7ce` |
| 18 | `theorem` | [mem_add](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-add--88ab8c2c4b8f80963a9f636e.md) | 170 | `result-track:88ab8c2c4b8f80963a9f636e30c123d9d89d02da52118316d4dadd6e68f96dd8` |
| 19 | `def` | [addRounded](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/addrounded--a2e8ea5db25e92822a491302.md) | 177 | `declaration-track:a2e8ea5db25e92822a491302b9ac1b5eca0ee61d6726d840b649ad37f09647a5` |
| 20 | `def` | [sub](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/sub--c8041d203d6fe337e1efa427.md) | 183 | `declaration-track:c8041d203d6fe337e1efa4275074968f2ec6fc275cad41b5e5f70d5c4c8231fe` |
| 21 | `theorem` | [mem_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-sub--f65c1c4fbb564c64bd58e241.md) | 186 | `result-track:f65c1c4fbb564c64bd58e241c207540df19db0d34e0760ca483b237ae6b7a897` |
| 22 | `def` | [mul](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mul--5c6937ca69492c5be7e5b42c.md) | 201 | `declaration-track:5c6937ca69492c5be7e5b42c18a5b22dc68a784c3263e0a21e9d93d38b1d58c7` |
| 23 | `def` | [mulFast](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mulfast--6074932e18b9cb247fdfc75d.md) | 212 | `declaration-track:6074932e18b9cb247fdfc75d113e795c85223cf17610e0c1442f895886f58e80` |
| 24 | `theorem` | [mem_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-mul--fd0f1ec77172638d65faf396.md) | 274 | `result-track:fd0f1ec77172638d65faf39673b341af25f783261fd9e39434e040170f07e93e` |
| 25 | `theorem` | [min4_toRat](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/min4-torat--e5e81002892f12a5fbd4e302.md) | 302 | `result-track:e5e81002892f12a5fbd4e302b76155aa54da6ea3ed6feaf6e50d46f0c876cce2` |
| 26 | `theorem` | [max4_toRat](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/max4-torat--fd40e5343e405f807502e200.md) | 307 | `result-track:fd40e5343e405f807502e2000a789672da06ab2aca05b33128b80bfefc052c5c` |
| 27 | `theorem` | [toRat_nonneg_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/torat-nonneg-of-le--f9da5bf1843ecdcee85b97b6.md) | 312 | `result-track:f9da5bf1843ecdcee85b97b652c1c691dca7b650aa8da2ade80dc96ca4ee9619` |
| 28 | `theorem` | [toRat_nonpos_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/torat-nonpos-of-le--4405849b70e388f4bf77679e.md) | 316 | `result-track:4405849b70e388f4bf77679e0b2625476b2cde0fc681485cb11232728c458e4d` |
| 29 | `theorem` | [toRat_neg_of_not_le](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/torat-neg-of-not-le--d7d27a53679e07a1807dd96e.md) | 320 | `result-track:d7d27a53679e07a1807dd96e102b368bd296603bc3ef2d279db7e633b0618eea` |
| 30 | `theorem` | [toRat_pos_of_not_le](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/torat-pos-of-not-le--8460df212659e2463d1383c3.md) | 324 | `result-track:8460df212659e2463d1383c3f9ffffaea6ba0f91b45f173ed999df0854b02f1b` |
| 31 | `theorem` | [mulFast_lo](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mulfast-lo--766af93a6a6d08807be5930c.md) | 328 | `result-track:766af93a6a6d08807be5930c0c869ede536d859f811a6db10e3bed5267629119` |
| 32 | `theorem` | [mulFast_hi](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mulfast-hi--1cc15ae09670332736900c22.md) | 372 | `result-track:1cc15ae09670332736900c22a84de9a92c10d2b919c048f3b5c53f5c0ddb6464` |
| 33 | `theorem` | [mem_mulFast](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-mulfast--4ff4f182f71468822986779c.md) | 418 | `result-track:4ff4f182f71468822986779cef36a9f9ed1d51ae0e7175488e8b85a905d8837f` |
| 34 | `def` | [mulRounded](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mulrounded--96e64f46cc917f25803ce596.md) | 426 | `declaration-track:96e64f46cc917f25803ce5962c1425eadae49d436ddb5ca4a63d52fd266fa0a4` |
| 35 | `def` | [mulNormalized](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mulnormalized--88b2875ed9928ceb9074abfb.md) | 430 | `declaration-track:88b2875ed9928ceb9074abfb76f043c580d6092c4309d20d0b8acc696ffda92d` |
| 36 | `def` | [scale](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/scale--c0e85100b729c0944882257a.md) | 442 | `declaration-track:c0e85100b729c0944882257a6cf9f036aa3101d8746e082c9577c523a4b19255` |
| 37 | `def` | [scale2](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/scale2--ed1c3a7f00a21738013cae52.md) | 463 | `declaration-track:ed1c3a7f00a21738013cae52a39e21188aa06d67ae06f9d9e9e0058ec192de6d` |
| 38 | `def` | [sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/sqrt--cd665b9b98437a933bcbdf4c.md) | 475 | `declaration-track:cd665b9b98437a933bcbdf4c2fe5aee1dc5d17580140e9db6e61095d82d633a1` |
| 39 | `theorem` | [sqrt_le_max_one](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/sqrt-le-max-one--eeb7bf67b5f9509f517030fd.md) | 488 | `result-track:eeb7bf67b5f9509f517030fd913164997595e8c4be209bb51d5709c0ce1c57ab` |
| 40 | `theorem` | [mem_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-sqrt--040b67f1ed9b04aff7839129.md) | 510 | `result-track:040b67f1ed9b04aff78391291a08311e7eed8f6ddd535d40d1263077e157fa0d` |
| 41 | `theorem` | [mem_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-sqrt--812a64a093d9fd3953d1a3a1.md) | 527 | `result-track:812a64a093d9fd3953d1a3a1b423ef8808c291eb97e7248b72bb776f62e27d2f` |
| 42 | `def` | [containsZero](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/containszero--22ea08045307b6d6f366f78a.md) | 545 | `declaration-track:22ea08045307b6d6f366f78a23a44f346bcc773c0237695762eb8f111dc64e06` |
| 43 | `def` | [isPositive](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/ispositive--a6d017ae4dff899b714fc4d2.md) | 549 | `declaration-track:a6d017ae4dff899b714fc4d216e47cdb85038b40d3ef56ff2f8ce1fb90edeadf` |
| 44 | `def` | [isNegative](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/isnegative--959170431988c6ebf1326387.md) | 553 | `declaration-track:959170431988c6ebf1326387c21ccfd848607547ef92aad25d72b31b99a7d577` |
| 45 | `def` | [subset](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/subset--3db4db1b7e1839f627caad11.md) | 557 | `declaration-track:3db4db1b7e1839f627caad1155164f19e0db581b6975ea9e834b17b4267f426c` |
| 46 | `def` | [upperBoundedBy](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/upperboundedby--8fa64d661f27707bb8fb0aea.md) | 561 | `declaration-track:8fa64d661f27707bb8fb0aea779428b9ac3655864a79029a765c78fc509f99c7` |
| 47 | `def` | [lowerBoundedBy](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/lowerboundedby--e847af0051880517269f528c.md) | 565 | `declaration-track:e847af0051880517269f528c65f3492f285deb49b25e1c32042faaa8cd8cb2eb` |
| 48 | `def` | [ofIntervalRat](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/ofintervalrat--815e6cab90bb3cda96be22f9.md) | 571 | `declaration-track:815e6cab90bb3cda96be22f9e876ecaa1a4ee640fbbbab0c15122624795e0436` |
| 49 | `theorem` | [mem_ofIntervalRat](../../../../mathematics/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/declarations/mem-ofintervalrat--21d276f9cb3d52a2778063f6.md) | 595 | `result-track:21d276f9cb3d52a2778063f6ca774a3f0f699ee57bf7427bcda4dff624cc7a65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
