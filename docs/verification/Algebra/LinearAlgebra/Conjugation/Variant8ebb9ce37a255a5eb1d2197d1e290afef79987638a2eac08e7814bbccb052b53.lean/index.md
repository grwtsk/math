# Verification target: GRWTSK.Algebra.LinearAlgebra.Conjugation.Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "872d937b6fe376959368ff992f2a47595ed43ce5",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `872d937b6fe376959368ff992f2a47595ed43ce5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute--7bfde3995eb11c5f8c2c9ffe.md) | 51 | `declaration-track:7bfde3995eb11c5f8c2c9ffe7f759c75c503e46ee0bc79a266fb37f3e0bca33c` |
| 2 | `theorem` | [involute_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute--6208974390f513052c3eb0a7.md) | 55 | `result-track:6208974390f513052c3eb0a72c7dc8bbfa12db616281fe7d258b2e07be1b05ae` |
| 3 | `theorem` | [involute_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-comp-involute--b17696fe9dfbffe94d8d61b9.md) | 59 | `result-track:b17696fe9dfbffe94d8d61b9ac5784eb2c2c9684b15cdfb0936004b612329971` |
| 4 | `theorem` | [involute_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-involutive--9642ad138b329d09984bf553.md) | 62 | `result-track:9642ad138b329d09984bf553ab4995109a7b396c46bb3e2baa32ae2c7d6f0e63` |
| 5 | `theorem` | [involute_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-involute--32f68af90a457743f286da0f.md) | 66 | `result-track:32f68af90a457743f286da0f842bd25d17e1b88d39909cdfe7bedfab899f6bcd` |
| 6 | `def` | [involuteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involuteequiv--e5db7e6102b0924bc02c42c1.md) | 71 | `declaration-track:e5db7e6102b0924bc02c42c1df684b2faa500ee6450dfe6e72d560cc154b22aa` |
| 7 | `def` | [reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverseop--7b3a14f85ad5fba63a994e7c.md) | 82 | `declaration-track:7b3a14f85ad5fba63a994e7c70d91d8745570b3c01e3c06f82a5f8eaba201601` |
| 8 | `theorem` | [reverseOp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverseop--669375cdafb6fabbf6b13bde.md) | 87 | `result-track:669375cdafb6fabbf6b13bde518325c146434c9a1766407b424bf74d02ecffd8` |
| 9 | `def` | [reverseOpEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverseopequiv--4918294b47ea6b9b348e9838.md) | 91 | `declaration-track:4918294b47ea6b9b348e98384058e69ec6751c029cd8af2a2b1a664bb2a47952` |
| 10 | `theorem` | [reverseOpEquiv_opComm](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverseopequiv-opcomm--537006754b6276e2c490b589.md) | 97 | `result-track:537006754b6276e2c490b589e5c669f2c7bfde9dec71924a066a70455450c653` |
| 11 | `def` | [reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse--e4ad7d9c7c33b33ee25298db.md) | 102 | `declaration-track:e4ad7d9c7c33b33ee25298dba6557ee7b225149aea470a6691414eada6d05af9` |
| 12 | `theorem` | [unop_reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/unop-reverseop--5f50e1f793bd8b94b9b99442.md) | 105 | `result-track:5f50e1f793bd8b94b9b994426995f0337a8421410821548688173fb65e121e85` |
| 13 | `theorem` | [op_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/op-reverse--b272aa2439842096f7c62aad.md) | 107 | `result-track:b272aa2439842096f7c62aada217ec91f940e9290b860cceea2b145cd6c5ecbe` |
| 14 | `theorem` | [reverse_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse--3afaf73819b44bf390f86c09.md) | 110 | `result-track:3afaf73819b44bf390f86c09acb09260f4b5b8407b5fe7374a350a919ba15c0c` |
| 15 | `theorem` | [reverse.commutes](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-commutes--bfbfc2926e65cd2e5206db37.md) | 113 | `result-track:bfbfc2926e65cd2e5206db375d0a0ef9bfb5e442a63024d61de169f66f14fef7` |
| 16 | `theorem` | [reverse.map_one](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-map-one--c4e32e77d38f4b80ffefc6fe.md) | 118 | `result-track:c4e32e77d38f4b80ffefc6fe39ba2cc0eb60af074fba8cbe2d15d356a84aff23` |
| 17 | `theorem` | [reverse.map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-map-mul--d5f4e00a536589ed0a46dac5.md) | 122 | `result-track:d5f4e00a536589ed0a46dac5299023348774b733c6a7565885d03b9026608fde` |
| 18 | `theorem` | [reverse_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-involutive--130c853c949162ed18e68312.md) | 127 | `result-track:130c853c949162ed18e683122fc47a45b347484de3d61e3f6a5b90b7a7b2e880` |
| 19 | `theorem` | [reverse_comp_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-comp-reverse--2f82e4d40b32cec3808d8c10.md) | 131 | `result-track:2f82e4d40b32cec3808d8c1015e82a4961f8a2532f2bee92bd1604f6fe7f94f0` |
| 20 | `theorem` | [reverse_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-reverse--117602af61e7a9d73d2a69c9.md) | 136 | `result-track:117602af61e7a9d73d2a69c9dd1c4942cc54b25555856047d3d904bb5c66aba6` |
| 21 | `def` | [reverseEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverseequiv--149340f62d9873cdccee71eb.md) | 141 | `declaration-track:149340f62d9873cdccee71ebcd8d42baa423ca94a35d61bfa673acbc834b8329` |
| 22 | `theorem` | [reverse_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-comp-involute--d9f20eb60952929f03a6f62c.md) | 144 | `result-track:d9f20eb60952929f03a6f62cb4a5b56166ef9b413eb165cf5038d2e2e019293a` |
| 23 | `theorem` | [reverse_involute_commute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-involute-commute--df8280ec50026ca8df620d65.md) | 157 | `result-track:df8280ec50026ca8df620d65acbb495e52cd3d077ca88442e6a3c83d964752a2` |
| 24 | `theorem` | [reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-involute--d13d4a48e18058437b4110c7.md) | 160 | `result-track:d13d4a48e18058437b4110c7004959dbe00277c45f733c821a5ca06728406a50` |
| 25 | `theorem` | [reverse_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-prod-map--cf8f13f8c0837b9f604ead1e.md) | 175 | `result-track:cf8f13f8c0837b9f604ead1ea261535f622c125b3b56954806cf52e3d7ede8b6` |
| 26 | `theorem` | [involute_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-prod-map--4408886d1725304551b76dea.md) | 182 | `result-track:4408886d1725304551b76dea1de4a99e7d1c712441313958d7471108fdbd8702` |
| 27 | `theorem` | [submodule_map_involute_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/submodule-map-involute-eq-comap--4bac41bd1ba4ac57eacc406e.md) | 200 | `result-track:4bac41bd1ba4ac57eacc406e656c7a472d06ba56f56b9faddc88a7f087f12f2e` |
| 28 | `theorem` | [ι_range_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/range-map-involute--33f4b55224727f1c4af9415e.md) | 206 | `result-track:33f4b55224727f1c4af9415e0a218e3a5ba93ae1c167a205794098d798c5af7a` |
| 29 | `theorem` | [ι_range_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/range-comap-involute--a36e0fd397ec7cba198cb481.md) | 212 | `result-track:a36e0fd397ec7cba198cb481d1d77cc87b6ee4bb24fb6b8547269906c7cd44fc` |
| 30 | `theorem` | [evenOdd_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/evenodd-map-involute--0e958aaad997e2e9be483ee7.md) | 219 | `result-track:0e958aaad997e2e9be483ee7de52da9216a2639b302c1200d8ca32baf0485dec` |
| 31 | `theorem` | [evenOdd_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/evenodd-comap-involute--b129138848df26289fbd3bb8.md) | 225 | `result-track:b129138848df26289fbd3bb8c3c77165693bf335e51060cddb28fa6a9ec1bc33` |
| 32 | `theorem` | [submodule_map_reverse_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/submodule-map-reverse-eq-comap--e745374e4737faa092206005.md) | 234 | `result-track:e745374e4737faa092206005a11559af58a863c4ce0c918539a2c1e0591afd88` |
| 33 | `theorem` | [ι_range_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/range-map-reverse--96c3fe6212fcba082b90163f.md) | 240 | `result-track:96c3fe6212fcba082b90163fcd0e5a0360a6426b6e325bb6e51e17aaef1a6f6c` |
| 34 | `theorem` | [ι_range_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/range-comap-reverse--0091595fb0fc495b45921ef9.md) | 248 | `result-track:0091595fb0fc495b45921ef9a9ecaecda58be52f7f1077eedbc2e1dccdb7690f` |
| 35 | `theorem` | [submodule_map_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/submodule-map-mul-reverse--04373dabb11c4dfd3bbcf440.md) | 254 | `result-track:04373dabb11c4dfd3bbcf440368e825f2bba345639e302001367ead6a0be4b6e` |
| 36 | `theorem` | [submodule_comap_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/submodule-comap-mul-reverse--60472f7ae00217530cbdb013.md) | 260 | `result-track:60472f7ae00217530cbdb01398f249848f7a1c0d8af50aa91fe18ca710da9476` |
| 37 | `theorem` | [submodule_map_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/submodule-map-pow-reverse--4b71a6f3e0f76e7084d376cc.md) | 267 | `result-track:4b71a6f3e0f76e7084d376cc8af21b5687b190a1f80459d3e5ab856a7f9caf81` |
| 38 | `theorem` | [submodule_comap_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/submodule-comap-pow-reverse--9b93416a38288f3d35777233.md) | 272 | `result-track:9b93416a38288f3d35777233da3347a728b438aa2dfdc1be7429e47211f1a5d0` |
| 39 | `theorem` | [evenOdd_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/evenodd-map-reverse--d314808301269ba686752559.md) | 278 | `result-track:d314808301269ba686752559b2eb555016c6e2f4c92f0a2147ff5ef3a911a922` |
| 40 | `theorem` | [evenOdd_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/evenodd-comap-reverse--4a06b8d0a38ef49863131545.md) | 283 | `result-track:4a06b8d0a38ef498631315453f2cdefcfd7671ab1f3255102ff7cadf017adfec` |
| 41 | `theorem` | [involute_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-mem-evenodd-iff--fafc879fca3f974ceb531a50.md) | 290 | `result-track:fafc879fca3f974ceb531a50c5b7768e6f28ca5c5939c23629f333894f88b0a9` |
| 42 | `theorem` | [reverse_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/reverse-mem-evenodd-iff--24dec859fac3c4e674715d1e.md) | 295 | `result-track:24dec859fac3c4e674715d1ea216e18ea7e3d30b00d33350281469405aa9b032` |
| 43 | `theorem` | [involute_eq_of_mem_even](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-eq-of-mem-even--d8de1c60a56e103fb08dca6c.md) | 308 | `result-track:d8de1c60a56e103fb08dca6c6ea779515b6db209f9f0c8806e5a763dea090e4a` |
| 44 | `theorem` | [involute_eq_of_mem_odd](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant8ebb9ce37a255a5eb1d2197d1e290afef79987638a2eac08e7814bbccb052b53.lean/declarations/involute-eq-of-mem-odd--38cf7f8e913e250830c400a0.md) | 316 | `result-track:38cf7f8e913e250830c400a0b3084e9384fccb5c43ea2f8d29b6ad67b10f7b9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
