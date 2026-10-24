# Verification target: GRWTSK.Topology.GeneralTopology.Nat.Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fdc2ca609ff443ae8079ced89c6ed28b4a03af6`.

Source path: `GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean.json)

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
| 1 | `instance` | [instHasAntidiagonal](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/insthasantidiagonal--a893206ceeb5ad14bc677fe2.md) | 33 | `declaration-track:a893206ceeb5ad14bc677fe2bf7466b753065e16fe76e73f404cc10d8987fe23` |
| 2 | `def` | [finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag--9b2ee383c2002ea841fe654f.md) | 57 | `declaration-track:9b2ee383c2002ea841fe654fa343a0aaa1e952a360ed3edac15451664a1cd12a` |
| 3 | `theorem` | [mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/mem-finmulantidiag--29754ea4ff62e5a55ccff4b0.md) | 66 | `result-track:29754ea4ff62e5a55ccff4b0a30561e1d9011088516423335475f6c0695ea966` |
| 4 | `theorem` | [finMulAntidiag_zero_right](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag-zero-right--6db7ec6da7ea5f731975378a.md) | 87 | `result-track:6db7ec6da7ea5f731975378ad09a620c5ae480e050666470ba556e718a5a4a49` |
| 5 | `theorem` | [finMulAntidiag_one](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag-one--dcbf102e2ec57d37d6da4d06.md) | 90 | `result-track:dcbf102e2ec57d37d6da4d063b4fa5831ad5146b28b82bdfe24adacc270b31a8` |
| 6 | `theorem` | [finMulAntidiag_zero_left](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag-zero-left--cbd7fdf623886616133f8522.md) | 97 | `result-track:cbd7fdf623886616133f8522c7766c858adc0a1da57313f8631c18ada34a348d` |
| 7 | `theorem` | [dvd_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/dvd-of-mem-finmulantidiag--c794f52812e75575efe48bef.md) | 102 | `result-track:c794f52812e75575efe48befa2eedbdc87528b3945911ad7ba67cb1d24b1f1fe` |
| 8 | `theorem` | [ne_zero_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/ne-zero-of-mem-finmulantidiag--a13f33d9f293be62a83b4ce5.md) | 108 | `result-track:a13f33d9f293be62a83b4ce58aa07b894fb5b6762c35101c6ebb710dff443e20` |
| 9 | `theorem` | [prod_eq_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/prod-eq-of-mem-finmulantidiag--324e0a7edf4a6d5822de0152.md) | 112 | `result-track:324e0a7edf4a6d5822de0152a865dec26afe8d5e388286fc12912b32885d6bbc` |
| 10 | `theorem` | [finMulAntidiag_eq_piFinset_divisors_filter](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag-eq-pifinset-divisors-filter--8f4f7c114cbe72c5d5935352.md) | 116 | `result-track:8f4f7c114cbe72c5d5935352d25d0b8780206a3ff0e6e193dbf54723dd45bcf8` |
| 11 | `lemma` | [image_apply_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/image-apply-finmulantidiag--577dbf19d3faddbdcea2e217.md) | 129 | `result-track:577dbf19d3faddbdcea2e217671b6b7cb881d498f8d09d17d029ba5876a96c88` |
| 12 | `lemma` | [image_piFinTwoEquiv_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/image-pifintwoequiv-finmulantidiag--644740a384dc32bf77e2d30b.md) | 151 | `result-track:644740a384dc32bf77e2d30b542d548a128065a1e4c8a80998646f52b6dea3ee` |
| 13 | `lemma` | [finMulAntidiag_existsUnique_prime_dvd](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag-existsunique-prime-dvd--e797972853613951e34f2769.md) | 156 | `result-track:e797972853613951e34f27696a7be43472edc5f7793f4cb1fca926decb786350` |
| 14 | `def` | [primeFactorsPiBij](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/primefactorspibij--abc4b646f192b56c26c2628c.md) | 172 | `declaration-track:abc4b646f192b56c26c2628c2703f7c0d3ff42b67c8de4703b420bb2bf096c5c` |
| 15 | `theorem` | [primeFactorsPiBij_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/primefactorspibij-img--386d30fddf334c9624c25c55.md) | 176 | `result-track:386d30fddf334c9624c25c553c999ac3677878b00b73cf23b48ad01256b4af52` |
| 16 | `theorem` | [primeFactorsPiBij_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/primefactorspibij-inj--0f7c007a77aaeaaba4910be4.md) | 186 | `result-track:0f7c007a77aaeaaba4910be4f48cac5b470a1707df6be3c174cea9d9b7a0af7c` |
| 17 | `theorem` | [primeFactorsPiBij_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/primefactorspibij-surj--0b38b6e42cc7155a2661de6c.md) | 209 | `result-track:0b38b6e42cc7155a2661de6c0ee8475fbfcabb61617f2c5f3f30c307245a6b44` |
| 18 | `theorem` | [card_finMulAntidiag_pi](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/card-finmulantidiag-pi--e1defbc528f5c6979154a224.md) | 228 | `result-track:e1defbc528f5c6979154a22412cb7d7d20c07327ed673273b14dec6373b94c4e` |
| 19 | `theorem` | [card_finMulAntidiag_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/card-finmulantidiag-of-squarefree--af1f79cbcfdba533ff5c22b7.md) | 235 | `result-track:af1f79cbcfdba533ff5c22b7ad9be88e8b9e66cb278ba875ee491a791ee7233b` |
| 20 | `theorem` | [finMulAntidiag_three](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/finmulantidiag-three--0c5752ed19428245e3eb5cb4.md) | 241 | `result-track:0c5752ed19428245e3eb5cb4a69f10e23bef8bade731baf8e7a74f6a4c7e77d9` |
| 21 | `def` | [f](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/f--2ad2148113f7442505be9072.md) | 251 | `declaration-track:2ad2148113f7442505be9072ebcedd016b2cd4914167217b87828a5a19c49e5c` |
| 22 | `theorem` | [f_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/f-img--032840e46abca4015da4841d.md) | 253 | `result-track:032840e46abca4015da4841dcea86c101a3775641cffefca0c5afacdd7ef1d22` |
| 23 | `theorem` | [f_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/f-inj--d28ba24e0791b8498e61babb.md) | 266 | `result-track:d28ba24e0791b8498e61babb4eed193df455d43b10a1204a7d4315c30b9de338` |
| 24 | `theorem` | [f_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/f-surj--585ebaee781c622dfa639bd4.md) | 284 | `result-track:585ebaee781c622dfa639bd43d4fdbc8cebe199587c0d695d04639035e8d320f` |
| 25 | `theorem` | [card_pair_lcm_eq](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/declarations/card-pair-lcm-eq--2317ea425e513338252a6a66.md) | 308 | `result-track:2317ea425e513338252a6a669805a9d4b70df673477ebb51fa65c68a729fdb7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
