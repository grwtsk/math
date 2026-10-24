# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a63dc54c692c7c3be8f04ba5eff3450ffcd9c5d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Range` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact--e755a21dd9a956b074d6ff77.md) | 39 | `declaration-track:e755a21dd9a956b074d6ff77a602ddec729eeb66476a8f417c22d707916b6b35` |
| 2 | `lemma` | [apply_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/apply-apply-eq-zero--908c7e89041675f5bc72437a.md) | 45 | `result-track:908c7e89041675f5bc72437ac7186f4fe35b5df7d54f4600707896474a1d12c7` |
| 3 | `lemma` | [comp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/comp-eq-zero--01c5f6d4afdcf127afbd2650.md) | 48 | `result-track:01c5f6d4afdcf127afbd2650a50b6190cb2db8b470c1be06b77c61dd09552830` |
| 4 | `lemma` | [of_comp_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/of-comp-of-mem-range--71bdce7e1dd4c9e0b95e9332.md) | 51 | `result-track:71bdce7e1dd4c9e0b95e9332767d89aa73d513c524cc49a12f73eea735b4cc33` |
| 5 | `lemma` | [comp_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/comp-injective--fd03f74bb98ffbe7c42b8bff.md) | 56 | `result-track:fd03f74bb98ffbe7c42b8bff0f65b02276465bb49495071756a4a77ef685d23c` |
| 6 | `lemma` | [of_comp_eq_zero_of_ker_in_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/of-comp-eq-zero-of-ker-in-range--f9e01a22dd6ecb338a5a272a.md) | 64 | `result-track:f9e01a22dd6ecb338a5a272ab86e3c3d91fdc0f76cb158e33c5da5d21966e037` |
| 7 | `lemma` | [iff_rangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/iff-rangefactorization--832028ae1538f5a39492601b.md) | 74 | `result-track:832028ae1538f5a39492601b8ec90d7b86bd5c3f7dbb70497386b9b173d7ef59` |
| 8 | `lemma` | [rangeFactorization](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/rangefactorization--86b33b13617c0f85036ecf85.md) | 86 | `result-track:86b33b13617c0f85036ecf85631073cafeebcefaf169b015e398be5fa82a81c9` |
| 9 | `lemma` | [exact_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-iff--f8251ccbb2b92bcf321da140.md) | 103 | `result-track:f8251ccbb2b92bcf321da1405ec00a18544b005f18c5de8931743c6a2e9809e3` |
| 10 | `lemma` | [exact_of_comp_eq_zero_of_ker_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-of-comp-eq-zero-of-ker-le-range--b6b877d1e3e29a0fad6fdb08.md) | 107 | `result-track:b6b877d1e3e29a0fad6fdb08f11b7787a2f480dba7c15bac81ab47cae7886b05` |
| 11 | `lemma` | [exact_of_comp_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-of-comp-of-mem-range--cc92782012a41c5174cef211.md) | 111 | `result-track:cc92782012a41c5174cef2114cc2f0b342778e58e594a70039b146ea5981c0bc` |
| 12 | `lemma` | [exact_iff_of_surjective_of_bijective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-iff-of-surjective-of-bijective-of-injective--c5db9b7bb1059b8919d5deec.md) | 120 | `result-track:c5db9b7bb1059b8919d5deec8c31e0b6f58b35826a0facb702eefa9d614003d8` |
| 13 | `lemma` | [addMonoidHom_ker_eq](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/addmonoidhom-ker-eq--b62edd1c4d29547205d00b03.md) | 159 | `result-track:b62edd1c4d29547205d00b038e50444f7e609189baa0dc821250ee3bebe9271f` |
| 14 | `lemma` | [addMonoidHom_comp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/addmonoidhom-comp-eq-zero--b4d6f8399a21d481b5becf8c.md) | 163 | `result-track:b4d6f8399a21d481b5becf8c2851c72a164c002034f813e317444b385841e05c` |
| 15 | `lemma` | [iff_of_ladder_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/iff-of-ladder-addequiv--ceef3ccbf93b996365ddb9af.md) | 173 | `result-track:ceef3ccbf93b996365ddb9afaa8e062095eb956eb912a840a20432b712fad3c3` |
| 16 | `lemma` | [of_ladder_addEquiv_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/of-ladder-addequiv-of-exact--65e0bdf2f283a9b8a299eb37.md) | 178 | `result-track:65e0bdf2f283a9b8a299eb375a6ecf2d1a4526dd4561a8089fa2e0fc9e53c408` |
| 17 | `lemma` | [of_ladder_addEquiv_of_exact'](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/of-ladder-addequiv-of-exact--42fd0a5df95ae77326932be8.md) | 182 | `result-track:42fd0a5df95ae77326932be8443839a8c8a9b55df77fbffb313381d3a282e874` |
| 18 | `lemma` | [iff_addMonoidHom_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/iff-addmonoidhom-rangerestrict--7c966ae138d34f0a1104937e.md) | 190 | `result-track:7c966ae138d34f0a1104937e91f26c18f497b49598164658c3910ed5778da95c` |
| 19 | `lemma` | [exact_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-iff--5ec3324c8f07500b48d48d7e.md) | 212 | `result-track:5ec3324c8f07500b48d48d7eb554934cba202e4045478181eff23b84aeb952a1` |
| 20 | `lemma` | [exact_of_comp_eq_zero_of_ker_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-of-comp-eq-zero-of-ker-le-range--17511162c57ce4c90c407cb0.md) | 216 | `result-track:17511162c57ce4c90c407cb087641d72596c0287bd8e792a20c2868fcb5beb11` |
| 21 | `lemma` | [exact_of_comp_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-of-comp-of-mem-range--d30d29d3bbc1c8b8dfbdf3f4.md) | 220 | `result-track:d30d29d3bbc1c8b8dfbdf3f484575adf61b21faeb7d82e487d263ae4cd803cc5` |
| 22 | `lemma` | [exact_subtype_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-subtype-mkq--86138a902e57fefddd92a85e.md) | 229 | `result-track:86138a902e57fefddd92a85e2e806903aebd94393cb3255815254c067c7df32f` |
| 23 | `lemma` | [exact_map_mkQ_range](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-map-mkq-range--231a813b0f85a860290474ad.md) | 233 | `result-track:231a813b0f85a860290474ad9b3dd74e262d58b96ef19809447b5367d069abc3` |
| 24 | `lemma` | [exact_subtype_ker_map](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-subtype-ker-map--1f7b39ce827b6e3f72b6b446.md) | 237 | `result-track:1f7b39ce827b6e3f72b6b446eb0e07e12840f4b64c9722776446ec2743eb3bfc` |
| 25 | `lemma` | [exact_zero_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-zero-iff-injective--3575fac065c22ef66b853f66.md) | 242 | `result-track:3575fac065c22ef66b853f664fb9d8936096819c387e255cd48d03be90d47a7e` |
| 26 | `lemma` | [exact_zero_iff_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-zero-iff-surjective--0a35bbc36fa5e2e484f6d73b.md) | 251 | `result-track:0a35bbc36fa5e2e484f6d73b33d2b838af2dc8ce99a4bcc07d5157f1c579aa8e` |
| 27 | `lemma` | [LinearEquiv.conj_exact_iff_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/linearequiv-conj-exact-iff-exact--0c80809da45b13a7cea7b149.md) | 260 | `result-track:0c80809da45b13a7cea7b1499015ae72849491bcf61ea5fbe66dffb6117842c6` |
| 28 | `lemma` | [Exact.linearMap_ker_eq](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-linearmap-ker-eq--d178f2e75e83ab5479d04eb6.md) | 269 | `result-track:d178f2e75e83ab5479d04eb64544a17788669322488ebd627766dac7d3d854fa` |
| 29 | `lemma` | [Exact.linearMap_comp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-linearmap-comp-eq-zero--b3ae9100a013934d9254a9fd.md) | 272 | `result-track:b3ae9100a013934d9254a9fd29ea38da2c26391f6e773bf727a7c1e02f039b50` |
| 30 | `lemma` | [Surjective.comp_exact_iff_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/surjective-comp-exact-iff-exact--1e0af1459fdf6fcd8533ec87.md) | 275 | `result-track:1e0af1459fdf6fcd8533ec870700bbb7d50d2eca357537b6b3feb876b34b2e94` |
| 31 | `lemma` | [Injective.comp_exact_iff_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/injective-comp-exact-iff-exact--e6ae96b947ce6d198ee1f98b.md) | 280 | `result-track:e6ae96b947ce6d198ee1f98b99731d942404d5db4328ebf910fe4d9d70a66b3c` |
| 32 | `lemma` | [iff_of_ladder_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/iff-of-ladder-linearequiv--1fbcaffed3eee1d0273b391b.md) | 290 | `result-track:1fbcaffed3eee1d0273b391b21963839368e79fbd7d1b565b0983ea3d024a5f8` |
| 33 | `lemma` | [of_ladder_linearEquiv_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/of-ladder-linearequiv-of-exact--09ff4d0cc947e9a12d293c3d.md) | 297 | `result-track:09ff4d0cc947e9a12d293c3d27b3515a332efb74e262eef3a1aee0ebbc011c45` |
| 34 | `lemma` | [iff_linearMap_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/iff-linearmap-rangerestrict--6b3886fbe41daadb8d0dec79.md) | 304 | `result-track:6b3886fbe41daadb8d0dec79a7ce9e1a8c43ac2c51adedc28268f586af1cae3a` |
| 35 | `def` | [Exact.splitSurjectiveEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-splitsurjectiveequiv--51c7e8e2920f93dab52c209b.md) | 329 | `declaration-track:51c7e8e2920f93dab52c209bc5869997230ad6842bb9dfc556572f0b99879a82` |
| 36 | `def` | [Exact.splitInjectiveEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-splitinjectiveequiv--c160bd4c7ab26723d750f108.md) | 365 | `declaration-track:c160bd4c7ab26723d750f108b76941fa016b18d2adfbcac44cbea1a99ecc21eb` |
| 37 | `theorem` | [Exact.split_tfae'](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-split-tfae--6546693a9a7e769d243ab8a6.md) | 398 | `result-track:6546693a9a7e769d243ab8a684f4e5dca390bd9886939cf8b4321abdb60cd365` |
| 38 | `theorem` | [Exact.split_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-split-tfae--558b13d0e3e3621bd067fe7c.md) | 418 | `result-track:558b13d0e3e3621bd067fe7c25b0a5711439a2cd386d6287a8beeb283b72861f` |
| 39 | `lemma` | [Exact.inr_fst](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-inr-fst--745b2b4e07ac305716bd8251.md) | 438 | `result-track:745b2b4e07ac305716bd82518e3e778df527c9b5d9fe14ab86ab06bbf0960792` |
| 40 | `lemma` | [Exact.inl_snd](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-inl-snd--e7bebe6455863c0584c74408.md) | 443 | `result-track:e7bebe6455863c0584c74408cf7554c0c7525e30833b83247eb0b1393d6adb60` |
| 41 | `lemma` | [Exact.exact_mapQ_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-exact-mapq-iff--fa4894e0a40ffaf2a3cbbc9c.md) | 463 | `result-track:fa4894e0a40ffaf2a3cbbc9cc0d4e67e6081cccd34aeda25366243d48bd1354b` |
| 42 | `lemma` | [exact_iff_of_surjective_of_bijective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/exact-iff-of-surjective-of-bijective-of-injective--ce25c5ece699320f1876d336.md) | 482 | `result-track:ce25c5ece699320f1876d336cb8225f016213eb823d7affc3ec9ca92721b6469` |
| 43 | `lemma` | [surjective_range_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/surjective-range-liftq--a49361827c2b8be7f0b84c60.md) | 497 | `result-track:a49361827c2b8be7f0b84c6049389fe2a654a73985c10b1657afe1e6da01279b` |
| 44 | `lemma` | [ker_eq_bot_range_liftQ_iff](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/ker-eq-bot-range-liftq-iff--48507867c597ca1ae6ee6310.md) | 503 | `result-track:48507867c597ca1ae6ee6310a09ae8a4838541ba8480792d0770e3877cf101a8` |
| 45 | `lemma` | [injective_range_liftQ_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/injective-range-liftq-of-exact--02bb62f7b64c653fd28f1f35.md) | 513 | `result-track:02bb62f7b64c653fd28f1f358fb7dc915f555eb4958906779e52b6072cc9c7fb` |
| 46 | `def` | [Function.Exact.linearEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant0cc27a99006f7ddf04d2b206fbd4cbab11d199c514ac7f7452c5cf342a9e5bb5.lean/declarations/function-exact-linearequivofsurjective--100faacfcf96613b564a297f.md) | 522 | `declaration-track:100faacfcf96613b564a297fe47bba58b530c7463cec35d1d1fefaa3302b1b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
