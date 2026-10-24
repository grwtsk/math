# Verification target: GRWTSK.Algebra.Ideal.Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7074c615cbcdc641cff6af0b6784b73ce44c4372",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7074c615cbcdc641cff6af0b6784b73ce44c4372`.

Source path: `GRWTSK/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Submodule` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk'_mem_iff](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/mk-mem-iff--6eaf9baa441431158f611c3b.md) | 39 | `result-track:6eaf9baa441431158f611c3bd566446aa1caf4ec76aecfee88bf19ccb90164cc` |
| 2 | `def` | [map_ideal](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/map-ideal--b3dc4edd7fae19af357aa739.md) | 52 | `declaration-track:b3dc4edd7fae19af357aa739ba1338517d10611661aef357c253068d4579d27b` |
| 3 | `theorem` | [mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/mem-map-algebramap-iff--7e4d6c9e1c82e9e9c1f1481e.md) | 55 | `result-track:7e4d6c9e1c82e9e9c1f1481ec34d7a670072c291cc5085e5f802fb10a26f6dcf` |
| 4 | `lemma` | [mk'_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/mk-mem-map-algebramap-iff--eff2fa76065e8b1b7d92ea0e.md) | 68 | `result-track:eff2fa76065e8b1b7d92ea0e71329e065abb54b9a96361a890f78fefc25dafa1` |
| 5 | `lemma` | [algebraMap_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/algebramap-mem-map-algebramap-iff--81ac00cf5531f16cb4b27b0a.md) | 76 | `result-track:81ac00cf5531f16cb4b27b0aa3d6868af927f4879dc9fbf48f5d6c5372af75bd` |
| 6 | `lemma` | [map_algebraMap_ne_top_iff_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/map-algebramap-ne-top-iff-disjoint--06fdf34d51cfde1e0ecc7734.md) | 81 | `result-track:06fdf34d51cfde1e0ecc773415e776131f74f56a0d3e3a3d4dd21b0daa68c57a` |
| 7 | `theorem` | [map_inf](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/map-inf--c122667cacd74bfc902de7ca.md) | 89 | `result-track:c122667cacd74bfc902de7cad5afbc65cab931b30f5fa34068f53ab7b4ad8c76` |
| 8 | `def` | [mapFrameHom](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/mapframehom--d45498a788525ec25a6f7884.md) | 101 | `declaration-track:d45498a788525ec25a6f7884364c72f7b02878da4f727faab4fdfc90f7093436` |
| 9 | `lemma` | [mapFrameHom_apply](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/mapframehom-apply--54955badd0ee3fbf3b173ee0.md) | 108 | `result-track:54955badd0ee3fbf3b173ee0d6b6b35dca98556a10863247f86abb43117d7b3d` |
| 10 | `theorem` | [map_under](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/map-under--99f552bbba67955c56892a7a.md) | 113 | `result-track:99f552bbba67955c56892a7a50a87b905acce7c404f26ab909458a8a798645cf` |
| 11 | `theorem` | [under_map_of_isPrimary_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/under-map-of-isprimary-disjoint--770bb9e8edb6be6f996016d5.md) | 126 | `result-track:770bb9e8edb6be6f996016d52f13f845f87cee5f031f0926a70554ef01182b55` |
| 12 | `theorem` | [under_map_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/under-map-of-isprime-disjoint--45f2b35103b7d7094e4f831d.md) | 148 | `result-track:45f2b35103b7d7094e4f831dc6c8b9fa4569d3dfafe6dde499f3b6ae7196bbc3` |
| 13 | `theorem` | [liesOver_map_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/liesover-map-of-isprime-disjoint--36a486d5c1bdace1d8d3e6f4.md) | 155 | `result-track:36a486d5c1bdace1d8d3e6f40bbf1acafdbb2fe14c07717ee2470f0a39c7c2ef` |
| 14 | `def` | [orderEmbedding](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/orderembedding--42e0305a834afcc72daa5e9f.md) | 161 | `declaration-track:42e0305a834afcc72daa5e9fa551a9a750e601113f0d46ea1c0317a30d69c4fd` |
| 15 | `theorem` | [under_le_under_iff](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/under-le-under-iff--947b60ee807f447800ed15ab.md) | 171 | `result-track:947b60ee807f447800ed15abc05aa63487204074fe3761f4723ebe45ac79c452` |
| 16 | `theorem` | [isPrime_iff_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/isprime-iff-isprime-disjoint--ea75557142b5b981d9a31f61.md) | 181 | `result-track:ea75557142b5b981d9a31f6147f6f6d47bbea00677dcbe7566d1e424cf409e73` |
| 17 | `theorem` | [isPrime_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/isprime-of-isprime-disjoint--c12e6b4ecb0acbff067a9bc7.md) | 209 | `result-track:c12e6b4ecb0acbff067a9bc78e8ccfe3d558b97ea7644ff6052b9e2332dc8f20` |
| 18 | `lemma` | [isMaximal_of_isMaximal_under](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/ismaximal-of-ismaximal-under--9e1309fe1661184e068346ae.md) | 215 | `result-track:9e1309fe1661184e068346ae8d28eec0ec08ec95c43080150ff5e5de020c3552` |
| 19 | `theorem` | [isMaximal_of_isMaximal_disjoint](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/ismaximal-of-ismaximal-disjoint--e39495007c1f165400e0af9e.md) | 218 | `result-track:e39495007c1f165400e0af9ea2d3012dc9773d5b0809e339102c1d1d4b94ac47` |
| 20 | `theorem` | [disjoint_under_iff](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/disjoint-under-iff--bebc1f7d21c49891a686154c.md) | 223 | `result-track:bebc1f7d21c49891a686154c206a368906e67e6cb5e54f0beb62588c832ac2c7` |
| 21 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/orderisoofprime--5c0f2bb0aaf813fa23b83d06.md) | 236 | `declaration-track:5c0f2bb0aaf813fa23b83d0618ca32275485312a95fb249bd752b778e7741939` |
| 22 | `def` | [primeSpectrumOrderIso](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/primespectrumorderiso--8cbd52225ed10373c43eb351.md) | 251 | `declaration-track:8cbd52225ed10373c43eb3518085ba2defb9c91a55a6394221307f5a3ced3bb5` |
| 23 | `lemma` | [map_radical](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/map-radical--4be85410b020b1f56c9253c5.md) | 257 | `result-track:4be85410b020b1f56c9253c5ed0638baff5b464cce2c137a3bedaa4db76c7374` |
| 24 | `theorem` | [ideal_eq_iInf_under_map_away](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/ideal-eq-iinf-under-map-away--8d7d7052e705be0c7cf09a12.md) | 266 | `result-track:8d7d7052e705be0c7cf09a12ecdf337da9923d4ad34db6f9e6cd43c92b94c238` |
| 25 | `lemma` | [map_eq_top_of_not_subset](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/map-eq-top-of-not-subset--bfb66fad87720b8dfb7f0a0a.md) | 287 | `result-track:bfb66fad87720b8dfb7f0a0a0a9d5335e76316e5f47dc8f8a1e69f041181fc13` |
| 26 | `theorem` | [surjective_quotientMap_of_maximal_of_localization](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/surjective-quotientmap-of-maximal-of-localization--e80133acee3e1c7fb181aa72.md) | 306 | `result-track:e80133acee3e1c7fb181aa72d5b210035c71fa745f979a4603120b7a91364f32` |
| 27 | `theorem` | [bot_lt_under_prime](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/bot-lt-under-prime--7e9cc834e74c51fc12ac5b49.md) | 341 | `result-track:7e9cc834e74c51fc12ac5b495505b9e7024e65a4b72c469bd0f44857525a06ff` |
| 28 | `lemma` | [_root_.Module.IsTorsionFree.of_isLocalization](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/root-module-istorsionfree-of-islocalization--b9740db5730d84b06087774d.md) | 353 | `result-track:b9740db5730d84b06087774d1cbbd1d3685279d36a0362a4a2da3f36163d6c1d` |
| 29 | `lemma` | [of_surjective](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/of-surjective--f90a5f7db06cfe4f94dcd154.md) | 378 | `result-track:f90a5f7db06cfe4f94dcd154a2f9b39c6e0e0ecd640ca3e9659ccc85f0a884b1` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/instance--3ed270e995dcf69dd7055a19.md) | 400 | `declaration-track:3ed270e995dcf69dd7055a192e9cc95820125a45b995d6771e4deb2d386b85d6` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.lean/declarations/instance--7d1ff3bc2bb212b51f8aca66.md) | 406 | `declaration-track:7d1ff3bc2bb212b51f8aca66c002fbabd6b0fd098a00f9a2e596504f311b677c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
