# Verification target: GRWTSK.Algebra.Ideal.Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1521d90abd85c361b282cc6052c254b7663dd2a0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1521d90abd85c361b282cc6052c254b7663dd2a0`.

Source path: `GRWTSK/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Submodule` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk'_mem_iff](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/mk-mem-iff--22482f457f1d10e07f730b5c.md) | 47 | `result-track:22482f457f1d10e07f730b5c084f439a48ea2cd9ae2df6e816b5c28f61c86a0c` |
| 2 | `def` | [map_ideal](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/map-ideal--2ee3dbf707b1762af4b25a92.md) | 60 | `declaration-track:2ee3dbf707b1762af4b25a92b3410edcc8a97ff0cf4db0ecd55a5ce6de84d8ff` |
| 3 | `theorem` | [mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/mem-map-algebramap-iff--80787613504ef30702c58415.md) | 63 | `result-track:80787613504ef30702c58415b3cc29ef75a93b0800169678e899f4e366c88b1a` |
| 4 | `lemma` | [mk'_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/mk-mem-map-algebramap-iff--6a76a76ef3f460c61e28ccd9.md) | 76 | `result-track:6a76a76ef3f460c61e28ccd90cb6e58a3c3850d7d9c0533e2269eab9b877a425` |
| 5 | `lemma` | [algebraMap_mem_map_algebraMap_iff](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/algebramap-mem-map-algebramap-iff--a7d30b253f2f55818646f03a.md) | 84 | `result-track:a7d30b253f2f55818646f03a4c759622e3de630874dcfbfda16cc3594cc2d089` |
| 6 | `lemma` | [map_algebraMap_ne_top_iff_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/map-algebramap-ne-top-iff-disjoint--a62d02fd9a49526f73b6f7f5.md) | 89 | `result-track:a62d02fd9a49526f73b6f7f5875d30ca69b2d383bf0b3c803377eb93588458ad` |
| 7 | `theorem` | [map_inf](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/map-inf--cfd25dde0bd87a4b217352c1.md) | 97 | `result-track:cfd25dde0bd87a4b217352c1b7e6f13a5d337037c52bc79b59725cd39ebc758e` |
| 8 | `def` | [mapFrameHom](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/mapframehom--f98dcf95ae32a6cf019307a3.md) | 109 | `declaration-track:f98dcf95ae32a6cf019307a37208bf2597a97c69c27868c32629332e96187b91` |
| 9 | `lemma` | [mapFrameHom_apply](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/mapframehom-apply--0cb23aa7748b232d2fb5c484.md) | 116 | `result-track:0cb23aa7748b232d2fb5c4845b300434e505015a1a9cbbeea56100578cfa48e0` |
| 10 | `theorem` | [map_under](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/map-under--ece398c1b49737453d4747a4.md) | 121 | `result-track:ece398c1b49737453d4747a4cb4a975176167417189b1c2f4182c894727a4976` |
| 11 | `theorem` | [under_map_of_isPrimary_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/under-map-of-isprimary-disjoint--0b3540518ff80bb222c76560.md) | 134 | `result-track:0b3540518ff80bb222c76560f98ba6efed3c11c604cbb78f1953697c4bfd8228` |
| 12 | `theorem` | [under_map_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/under-map-of-isprime-disjoint--819642fc193ef694f5c8352a.md) | 156 | `result-track:819642fc193ef694f5c8352ae5e66435dbcf75662885f615ad0eb43d6f559f73` |
| 13 | `theorem` | [liesOver_map_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/liesover-map-of-isprime-disjoint--7765c9f9d082235363d17567.md) | 163 | `result-track:7765c9f9d082235363d175671a3776d14f1e8dda1ace163a1184a63bc88cc70f` |
| 14 | `def` | [orderEmbedding](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/orderembedding--ad7802e191b16421e6b210e6.md) | 169 | `declaration-track:ad7802e191b16421e6b210e65f1d373266516894ef50cd04f04392b9f8ddf618` |
| 15 | `theorem` | [under_le_under_iff](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/under-le-under-iff--d6e7e9ba1f28c51fc72e15b1.md) | 179 | `result-track:d6e7e9ba1f28c51fc72e15b12b679bb8f4adb56119fd66ce404063eecea5be8a` |
| 16 | `theorem` | [isPrime_iff_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/isprime-iff-isprime-disjoint--56dc874fbca69492bddd1563.md) | 189 | `result-track:56dc874fbca69492bddd15637f427faea5787c00edd1af243c703846cb74aaf4` |
| 17 | `theorem` | [isPrime_of_isPrime_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/isprime-of-isprime-disjoint--72284b2592d65db7b9ec73cc.md) | 217 | `result-track:72284b2592d65db7b9ec73cc8b30408daa711b59a0fd7228d4b6fada803c880b` |
| 18 | `lemma` | [isMaximal_of_isMaximal_under](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/ismaximal-of-ismaximal-under--b0f439cef4e95e90b617eb8c.md) | 223 | `result-track:b0f439cef4e95e90b617eb8c57a47c0cf615abe85d967d2b99a33eb88ab3f450` |
| 19 | `theorem` | [isMaximal_of_isMaximal_disjoint](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/ismaximal-of-ismaximal-disjoint--097241e23fca64b3e71e8ae9.md) | 226 | `result-track:097241e23fca64b3e71e8ae9621a79286122c8fa1c6d49d5ccbc3d1b56123879` |
| 20 | `theorem` | [disjoint_under_iff](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/disjoint-under-iff--51faeb4caa1050dccec6d5a9.md) | 231 | `result-track:51faeb4caa1050dccec6d5a9e1b5731123399654239c6a5d8462d48098fec2a8` |
| 21 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/orderisoofprime--a0363b032f36c2de7fb0f32f.md) | 244 | `declaration-track:a0363b032f36c2de7fb0f32f7cd157acc286fc2f4b1c90484d8eb6b6bb91ebb4` |
| 22 | `def` | [primeSpectrumOrderIso](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/primespectrumorderiso--e113b27687255f0c78752522.md) | 259 | `declaration-track:e113b27687255f0c78752522e4ac0a9b1e14850e462d4776ce491fd247d713f9` |
| 23 | `lemma` | [map_radical](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/map-radical--e463416a901c04ae2e723bf7.md) | 265 | `result-track:e463416a901c04ae2e723bf7bdd79cf605f7b49f9b6df75b870a3ec0636192d5` |
| 24 | `theorem` | [ideal_eq_iInf_under_map_away](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/ideal-eq-iinf-under-map-away--65d5fe3b3c8d85881ee1ca92.md) | 274 | `result-track:65d5fe3b3c8d85881ee1ca92c2c70b81536905a1fe24f1cf4e822e4853d9c5ce` |
| 25 | `lemma` | [map_eq_top_of_not_subset](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/map-eq-top-of-not-subset--266236848a97b4a4d45b6eea.md) | 295 | `result-track:266236848a97b4a4d45b6eea62e4578df2194d28344b273ad9fcdd9c68ac326e` |
| 26 | `theorem` | [surjective_quotientMap_of_maximal_of_localization](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/surjective-quotientmap-of-maximal-of-localization--462ac449587bb013cd110ef0.md) | 314 | `result-track:462ac449587bb013cd110ef07f611bda8bcb016ae99b022239169b4cf41dbd9c` |
| 27 | `theorem` | [bot_lt_under_prime](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/bot-lt-under-prime--d6f32c1a1b4362ea88912fc6.md) | 349 | `result-track:d6f32c1a1b4362ea88912fc6522d9508a9d6139c22f4e036a89509f6beb508f6` |
| 28 | `lemma` | [_root_.GRWTSK.Algebra.MkPrimeMemIff.Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.Module.IsTorsionFree.of_isLocalization](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/root-grwtsk-algebra-mkprimememiff-variant57f1536d3169ea7f6205e40f3298851--c47bba28b6d00516a8676773.md) | 361 | `result-track:c47bba28b6d00516a86767738b8d5d0c2d346c2b52c72e99faf10c5ed7c22d10` |
| 29 | `lemma` | [of_surjective](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/of-surjective--b3befb75048ec2d7eff6b18e.md) | 386 | `result-track:b3befb75048ec2d7eff6b18e9b9178240ba5aba1472aea4e122045e8c7dbf3a8` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/instance--882a1c817a5b1e40f5530104.md) | 408 | `declaration-track:882a1c817a5b1e40f5530104279ec1892abd9e8c245c5a2c9d3a4a7013dcebd8` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/declarations/instance--a3819baef52f70faa482cc24.md) | 414 | `declaration-track:a3819baef52f70faa482cc24e49bc50882b2e47f0a472770575395e87e42b483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
