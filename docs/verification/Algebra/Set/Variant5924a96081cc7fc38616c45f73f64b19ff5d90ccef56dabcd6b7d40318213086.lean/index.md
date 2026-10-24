# Verification target: GRWTSK.Algebra.Set.Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb534b5cb16cabd5c57f6ca11b233dc0f5bc6e18",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/index.md) · [Full source](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb534b5cb16cabd5c57f6ca11b233dc0f5bc6e18`.

Source path: `GRWTSK/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_pi₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-pi--952e0c77a64d8261c4746488.md) | 42 | `result-track:952e0c77a64d8261c474648865ab11d8ca45b1d031bddcb9841b9660f4f96e11` |
| 2 | `lemma` | [smul_set_pi₀'](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-pi--02a195ba9f826b6d1a633fef.md) | 47 | `result-track:02a195ba9f826b6d1a633fef3a6ecf0be0f5b2a40978e909a96e79f2b81a7f9c` |
| 3 | `def` | [smulZeroClassSet](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smulzeroclassset--5a3594eefc9fdbf72d6038bc.md) | 57 | `declaration-track:5a3594eefc9fdbf72d6038bca98ceac1bf7acaba2028e5652d8b81df428bc16e` |
| 4 | `lemma` | [smul_zero_subset](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-zero-subset--7635f56d8ec1fc5a01adeda0.md) | 62 | `result-track:7635f56d8ec1fc5a01adeda0ffd06396bcd01137bacb84eb5aad9b458686e841` |
| 5 | `lemma` | [Nonempty.smul_zero](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/nonempty-smul-zero--e82128686904686db97e1802.md) | 64 | `result-track:e82128686904686db97e1802d1418c98a18c2a3c5751e183581f48a5c1321f7c` |
| 6 | `lemma` | [zero_mem_smul_set](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/zero-mem-smul-set--a3aa5b50329a7e1787dc345f.md) | 67 | `result-track:a3aa5b50329a7e1787dc345f35d5c1f2fd3b63b5c53319313d135ab3269f15e2` |
| 7 | `lemma` | [zero_smul_subset](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/zero-smul-subset--4373b806148ffef5364300f0.md) | 79 | `result-track:4373b806148ffef5364300f081ce27ecc293e099c88fa3fbdfb9cd4f631a769c` |
| 8 | `lemma` | [Nonempty.zero_smul](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/nonempty-zero-smul--efe1d338e8b55d696d7af110.md) | 81 | `result-track:efe1d338e8b55d696d7af1106ce432c594427287a707c81c8ec3e39622a8914f` |
| 9 | `lemma` | [zero_smul_set](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/zero-smul-set--0ccc194f8aea78602424e934.md) | 85 | `result-track:0ccc194f8aea78602424e9345b089f5237c6473b7c652d0d93faa37cc22acb69` |
| 10 | `lemma` | [zero_smul_set_subset](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/zero-smul-set-subset--e0551fed5f96ee25a55b898d.md) | 88 | `result-track:e0551fed5f96ee25a55b898de1873756b35bed4f8a660248f3864c0e75f905e7` |
| 11 | `lemma` | [subsingleton_zero_smul_set](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/subsingleton-zero-smul-set--97b1a126c579565cf0893f1e.md) | 91 | `result-track:97b1a126c579565cf0893f1ea534fdb39615b414c46f978b070ec009034fedec` |
| 12 | `def` | [distribSMulSet](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/distribsmulset--f03583cffb617db088dafdaa.md) | 99 | `declaration-track:f03583cffb617db088dafdaa364ba6349306f45df3f73a6d54e920f3c692d723` |
| 13 | `def` | [distribMulActionSet](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/distribmulactionset--17fe6b0456fedb941013328a.md) | 108 | `declaration-track:17fe6b0456fedb941013328a9f4ebecbccdc739d16656b9d5f67d38026e03f87` |
| 14 | `def` | [mulDistribMulActionSet](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/muldistribmulactionset--11119b84e692fb295a7a0268.md) | 115 | `declaration-track:11119b84e692fb295a7a026867bbf936e428e24d8aee174dcf6f954f57088dda` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/instance--e2b195de129e2507ac7cb208.md) | 122 | `declaration-track:e2b195de129e2507ac7cb208f151078fe88fc68db138fa4d7ae936549636bf08` |
| 16 | `lemma` | [smul_mem_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-mem-smul-set-iff--a1dff11d5fc750bfb63ab970.md) | 135 | `result-track:a1dff11d5fc750bfb63ab970453ee8b7103cc016b8afc1f263aabc825ce3ae63` |
| 17 | `lemma` | [mem_smul_set_iff_inv_smul_mem₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/mem-smul-set-iff-inv-smul-mem--6894bd8e63f2430b7459b273.md) | 138 | `result-track:6894bd8e63f2430b7459b273da6570e0635d1a86c24aa47f9a1f9615c53beeea` |
| 18 | `lemma` | [mem_inv_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/mem-inv-smul-set-iff--d4a8c7408ff1abc217a411ef.md) | 141 | `result-track:d4a8c7408ff1abc217a411ef28b242d9afd94cd9ef8e720a9e138bde7b88cd4b` |
| 19 | `lemma` | [preimage_smul₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/preimage-smul--9157999cd82bbe0c3a35ad76.md) | 144 | `result-track:9157999cd82bbe0c3a35ad76d899bc80646f1781f6ac92970078d7501133b3ce` |
| 20 | `lemma` | [preimage_smul_inv₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/preimage-smul-inv--d3d6d42ca61eb71b459c18cf.md) | 147 | `result-track:d3d6d42ca61eb71b459c18cf642f1013db8cd4f3cfd80c3e26b285daa0c24b3d` |
| 21 | `lemma` | [smul_set_subset_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-subset-smul-set-iff--4caae78d27308ffea5a9760e.md) | 151 | `result-track:4caae78d27308ffea5a9760ed347d6cf40fa36705bb13796740ee66e55b99168` |
| 22 | `lemma` | [smul_set_subset_iff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-subset-iff--bff70d8d35bfe6eef033239d.md) | 154 | `result-track:bff70d8d35bfe6eef033239d5b61912a1b74762d6fa41f6d8e8241d3605128a7` |
| 23 | `lemma` | [subset_smul_set_iff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/subset-smul-set-iff--39f19ee723560a6db8f51d26.md) | 157 | `result-track:39f19ee723560a6db8f51d2614b04ab45301985f50fe451e47a03a748a82b082` |
| 24 | `lemma` | [smul_set_inter₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-inter--9aa60fe5a47f2c7e4aee57ff.md) | 160 | `result-track:9aa60fe5a47f2c7e4aee57ffb4de28760634d8800a7a6228d4827df5a5a48626` |
| 25 | `lemma` | [smul_set_sdiff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-sdiff--3b9e51dcb775161d2e3228f9.md) | 163 | `result-track:3b9e51dcb775161d2e3228f9e03da34c0df8059ae25ca3a9df45317525539584` |
| 26 | `lemma` | [smul_set_symmDiff₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-symmdiff--55f6d51d9d7ef6636fc49dcf.md) | 167 | `result-track:55f6d51d9d7ef6636fc49dcfc18689d0cfcc8d55e352dc97c49e5af9307b9030` |
| 27 | `lemma` | [smul_set_univ₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-set-univ--aa09a8883329bec697e442ef.md) | 170 | `result-track:aa09a8883329bec697e442ef5303af7263fa919a299e903d55c637187c439bff` |
| 28 | `lemma` | [smul_univ₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-univ--2176ef07875899dbe3ddc21a.md) | 173 | `result-track:2176ef07875899dbe3ddc21aa8b15877e444eda33ec2cef6bcf3aad185cd771a` |
| 29 | `lemma` | [smul_univ₀'](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/smul-univ--bbaa64cb36e148ef91658823.md) | 177 | `result-track:bbaa64cb36e148ef91658823d48b5a06e09901c5e21444714f9430af8e4adf80` |
| 30 | `lemma` | [inv_smul_set_distrib₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/inv-smul-set-distrib--73520a9d7ff53c89b87faf27.md) | 181 | `result-track:73520a9d7ff53c89b87faf2749aa8bd762025166349f6f8b6a1e215183023c2f` |
| 31 | `lemma` | [inv_op_smul_set_distrib₀](../../../../mathematics/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/declarations/inv-op-smul-set-distrib--54106146dde29c4c1c4f17a2.md) | 187 | `result-track:54106146dde29c4c1c4f17a22febd0947e630ff09c78739b5eb0e59b4ad2d137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
