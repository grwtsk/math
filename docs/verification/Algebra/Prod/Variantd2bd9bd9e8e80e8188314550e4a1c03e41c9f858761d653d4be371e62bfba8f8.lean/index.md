# Verification target: GRWTSK.Algebra.Prod.Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "038622a4fcf4e5e2f5a767511d6b6552198bdb2a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `038622a4fcf4e5e2f5a767511d6b6552198bdb2a`.

Source path: `GRWTSK/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean.json)

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
| 1 | `class` | [HasAntidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/hasantidiagonal--98eb33aaf89cd257295d7885.md) | 64 | `declaration-track:98eb33aaf89cd257295d7885fedf1d57ee6aa130268a6a00cbcd7371ae531e63` |
| 2 | `class` | [HasMulAntidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/hasmulantidiagonal--b57315285bae87530a4a9536.md) | 76 | `declaration-track:b57315285bae87530a4a9536dfa66b91903085f24f9e647c17439135f39762b1` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/instance--a77e04e59406da2d0f58fb18.md) | 95 | `declaration-track:a77e04e59406da2d0f58fb18c0488bdfd36c418a204c7eeac5e92f7c63ae06b0` |
| 4 | `lemma` | [nonempty_antidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/nonempty-antidiagonal--89403ccd2be7a1476f8c5dd1.md) | 102 | `result-track:89403ccd2be7a1476f8c5dd12c2029a1eadfe3d69f152cdab398c548450af8c9` |
| 5 | `lemma` | [congr](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/congr--cd47473807ab2a7ef4d60557.md) | 110 | `result-track:cd47473807ab2a7ef4d605572647b8a3ac660e06e79e7bb92a3ff33de787ee48` |
| 6 | `theorem` | [swap_mem_mulAntidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/swap-mem-mulantidiagonal--4acfccab3d80ae76b72e5c7e.md) | 114 | `result-track:4acfccab3d80ae76b72e5c7ee886d2167334faf654a6c59d9400be4da8a8b1e0` |
| 7 | `theorem` | [map_prodComm_mulAntidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/map-prodcomm-mulantidiagonal--1ae6065bf74d78784d8f39e7.md) | 119 | `result-track:1ae6065bf74d78784d8f39e70fea39705932371ef36930798b9cd754d3b5f4e0` |
| 8 | `theorem` | [map_swap_mulAntidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/map-swap-mulantidiagonal--0cb4d0f3103dd1d2b788279d.md) | 125 | `result-track:0cb4d0f3103dd1d2b788279d878cb6c46cccd9d46a3dd3db84e808c5f0a888f7` |
| 9 | `theorem` | [mulAntidiagonal_congr](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonal-congr--5f01d83df051f5d1c4ca9d82.md) | 140 | `result-track:5f01d83df051f5d1c4ca9d8274bd77bb3a4cd009f2877b35b8bdb8af0872e52b` |
| 10 | `theorem` | [mulAntidiagonal_subtype_ext](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonal-subtype-ext--6203db89d8c1e8f6fb504ce2.md) | 151 | `result-track:6203db89d8c1e8f6fb504ce21db7a5d91796134f04d23acad0b5913442313cfb` |
| 11 | `lemma` | [mulAntidiagonal_congr'](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonal-congr--7524e9c6354f121c245e086c.md) | 165 | `result-track:7524e9c6354f121c245e086cafbadfa37b1fff933299dbf3efa164bd2653d504` |
| 12 | `theorem` | [mulAntidiagonal_one](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonal-one--6847c3aca44b9098e2cc62d1.md) | 177 | `result-track:6847c3aca44b9098e2cc62d12f76fcdd20bbac89c8f316a9184a41941ae4cfb5` |
| 13 | `theorem` | [mulAntidiagonal.fst_le](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonal-fst-le--fcdd4b8c4ac80d8272552455.md) | 182 | `result-track:fcdd4b8c4ac80d8272552455a4498ff7b2a6bc15b3daefca4be6d74dccdf5f56` |
| 14 | `theorem` | [mulAntidiagonal.snd_le](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonal-snd-le--b1b0a063eafa4cc337bbf7df.md) | 188 | `result-track:b1b0a063eafa4cc337bbf7df14e734d55c8e3f80e1e9ceeb639869e2fe491665` |
| 15 | `theorem` | [filter_fst_eq_antidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/filter-fst-eq-antidiagonal--d6e6465ba7d3106f0e9bfe55.md) | 204 | `result-track:d6e6465ba7d3106f0e9bfe551c94c2397dad80db57ed914b68f4966052176639` |
| 16 | `theorem` | [filter_snd_eq_antidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/filter-snd-eq-antidiagonal--320e0b0e4ea6a7e17671af00.md) | 218 | `result-track:320e0b0e4ea6a7e17671af0046164de89d8ade33244b07901f09f177573a4300` |
| 17 | `def` | [sigmaMulAntidiagonalEquivProd](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/sigmamulantidiagonalequivprod--38fab14c089f90116359627e.md) | 234 | `declaration-track:38fab14c089f90116359627e36773a042bc82ba63ade094d687f74e43d3bf7af` |
| 18 | `abbrev` | [mulAntidiagonalOfLocallyFinite](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mulantidiagonaloflocallyfinite--afe7947f333633b67b96ab8a.md) | 257 | `declaration-track:afe7947f333633b67b96ab8adc2829768b95bdd042cdd1f3ff3145233c8d1806` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/instance--d0f23196172ebaef13a8df18.md) | 273 | `declaration-track:d0f23196172ebaef13a8df186748b9a7afacd92e3506372ffab27762dbf3ee8d` |
| 20 | `lemma` | [mem_mulAntidiagonal_ofAdd_iff_toAdd_mem_antidiagonal](../../../../mathematics/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/declarations/mem-mulantidiagonal-ofadd-iff-toadd-mem-antidiagonal--45d31249961567db64185da0.md) | 278 | `result-track:45d31249961567db64185da02fb5a04b3c1176456fe4a4ef29d7bd6b6595da32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
