# Verification target: GRWTSK.Algebra.Basic.Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b816646bcf92af0e23f5cda588461b42b8e4992c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b816646bcf92af0e23f5cda588461b42b8e4992c`.

Source path: `GRWTSK/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.PrimeMultiplicity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationRing` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/isdiscretevaluationring--f6cbaddfdeed453dbacc173b.md) | 58 | `declaration-track:f6cbaddfdeed453dbacc173b4e8bebf81f2b3ba89d22629fef5c492c9d34225e` |
| 2 | `theorem` | [not_a_field](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/not-a-field--504f2641451f1d3edec5a639.md) | 66 | `result-track:504f2641451f1d3edec5a639e1aba35114bd4274806b6c13febfc6ad00a9fda4` |
| 3 | `theorem` | [not_isField](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/not-isfield--de1d9742e1ffa82bd32515fb.md) | 70 | `result-track:de1d9742e1ffa82bd32515fb28ca800f9846a0ea7b1fbd30787b658c116a21ef` |
| 4 | `theorem` | [irreducible_of_span_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/irreducible-of-span-eq-maximalideal--ab3e6a107c9e9d957b50361f.md) | 77 | `result-track:ab3e6a107c9e9d957b50361fd712ccec00b9791520d626f5441581ac927efd4f` |
| 5 | `theorem` | [irreducible_iff_uniformizer](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/irreducible-iff-uniformizer--f18c1268545a512bc44245da.md) | 94 | `result-track:f18c1268545a512bc44245da2a3447844d3e7200602a65b2adbeb0c03dc2d6d7` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.IsDiscreteValuationRing.Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.Irreducible.maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/root-grwtsk-algebra-isdiscretevaluationring-variante253db5d5ee8d9793ed7a--745a741998c64cb7aaaa41c9.md) | 99 | `result-track:745a741998c64cb7aaaa41c9e3ce1148e22ac85904c47e02ec31df19c28cd6d6` |
| 7 | `theorem` | [exists_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/exists-irreducible--35be84e39c1e0f0c5ee99bfc.md) | 106 | `result-track:35be84e39c1e0f0c5ee99bfcb8d3304074b1a53376446061ab8ffc30acd1efe2` |
| 8 | `theorem` | [exists_prime](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/exists-prime--de20c48cc9371865e28c8e5b.md) | 111 | `result-track:de20c48cc9371865e28c8e5bc1f262068f83d3dc9112ed37de2a3c79b2e1fe4e` |
| 9 | `theorem` | [iff_pid_with_one_nonzero_prime](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/iff-pid-with-one-nonzero-prime--10d1bff6e4bfe17c42848e2d.md) | 115 | `result-track:10d1bff6e4bfe17c42848e2d8cbc8f05523868e0ea7440cbaa97ca206651082e` |
| 10 | `theorem` | [associated_of_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/associated-of-irreducible--d9380efb3ab34f685aeb63fc.md) | 144 | `result-track:d9380efb3ab34f685aeb63fc55066088d43899df283baad64b58e595b5cf1548` |
| 11 | `def` | [HasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/hasunitmulpowirreduciblefactorization--209bc9a6f8d5ca52296e7f4e.md) | 152 | `declaration-track:209bc9a6f8d5ca52296e7f4e896de904916b5f3fccb5cc1e8a533bd837366b56` |
| 12 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/unique-irreducible--222b361b7a0055956f7ee3dc.md) | 159 | `result-track:222b361b7a0055956f7ee3dc01a9a198b41a27c008f6c38a09e685730a39481c` |
| 13 | `theorem` | [toUniqueFactorizationMonoid](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/touniquefactorizationmonoid--06aef46b00b60e4de9c3a033.md) | 188 | `result-track:06aef46b00b60e4de9c3a0333de50ed5e011ea83b4c734747c2e08f9c91c6527` |
| 14 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/of-ufd-of-unique-irreducible--184ce7de1cdb2c4a92555049.md) | 217 | `result-track:184ce7de1cdb2c4a92555049176b578dec087a46c097c66f62ef1ad674e6f8f5` |
| 15 | `theorem` | [aux_pid_of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/aux-pid-of-ufd-of-unique-irreducible--db803bd7c320c860281ccb90.md) | 238 | `result-track:db803bd7c320c860281ccb90072af4784d363726c9f8e6053e54f7eeea46cf23` |
| 16 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/of-ufd-of-unique-irreducible--42d6dd26e21aef013162a52e.md) | 274 | `result-track:42d6dd26e21aef013162a52ef7f7a40b614eed4b23976e88bb8cd5beb6341431` |
| 17 | `theorem` | [ofHasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/ofhasunitmulpowirreduciblefactorization--bcb228679a4c733046ad30b2.md) | 297 | `result-track:bcb228679a4c733046ad30b2cee315fb0b6bd7d28db1a2735ad9769ec602dfff` |
| 18 | `theorem` | [RingEquivClass.isDiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/ringequivclass-isdiscretevaluationring--74d23ec798609a0442e200a0.md) | 305 | `result-track:74d23ec798609a0442e200a0182acb5f0ddb9b55430fbcd037a45427e82549a5` |
| 19 | `theorem` | [associated_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/associated-pow-irreducible--7ef400d6e587e4bc2b3151d5.md) | 325 | `result-track:7ef400d6e587e4bc2b3151d5380d1736d3de778c66f3d9172122f53647f7597d` |
| 20 | `theorem` | [eq_unit_mul_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/eq-unit-mul-pow-irreducible--a1fc581f68c8339949c541db.md) | 342 | `result-track:a1fc581f68c8339949c541db1446d099361f14a309be5e41edf029e9615b5832` |
| 21 | `theorem` | [ideal_eq_span_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/ideal-eq-span-pow-irreducible--1b50714dd72806baa62fb09b.md) | 351 | `result-track:1b50714dd72806baa62fb09b10d441642261ef1d457821553bd4c2cce7c23e0c` |
| 22 | `theorem` | [unit_mul_pow_congr_pow](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/unit-mul-pow-congr-pow--9aeeaecfc5df8a803e206823.md) | 362 | `result-track:9aeeaecfc5df8a803e2068237d755b62d0ec309a66b7996e0527797f3cbfcf78` |
| 23 | `theorem` | [unit_mul_pow_congr_unit](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/unit-mul-pow-congr-unit--a0193b9111821d9329d12935.md) | 377 | `result-track:a0193b9111821d9329d129358c8dc18f7d3a0660c0ec4da74bf9c643e933d58f` |
| 24 | `def` | [addVal](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval--168139f813cb532c333592e8.md) | 393 | `declaration-track:168139f813cb532c333592e8d2e154f3eec1ca6c38c7bccd630e9dbc7ccf64f7` |
| 25 | `theorem` | [addVal_def](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-def--7a45c94722bcdf9c3c75188f.md) | 397 | `result-track:7a45c94722bcdf9c3c75188f9b80dd43052343f2a618426245bf43e099e6b8b6` |
| 26 | `theorem` | [addVal_def'](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-def--31319a85a8f646ba301198c2.md) | 406 | `result-track:31319a85a8f646ba301198c24d80ab5d141886f6197c3ff2b71b6f29e8744516` |
| 27 | `theorem` | [addVal_zero](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-zero--ba98bb191c44d2e03d1f0d9f.md) | 410 | `result-track:ba98bb191c44d2e03d1f0d9fd1b7ac312d4e10377b4e9518f6a15f590be7aea3` |
| 28 | `theorem` | [addVal_one](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-one--0a76cca943959936685d9e48.md) | 413 | `result-track:0a76cca943959936685d9e4872157c8febf8dffca71ab5af8b2529737f2e0545` |
| 29 | `theorem` | [addVal_uniformizer](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-uniformizer--b599fb36f8c066c975c79649.md) | 417 | `result-track:b599fb36f8c066c975c79649e1b4ef038ccdb7c53c022c65d88d4db54f4c13f8` |
| 30 | `theorem` | [addVal_mul](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-mul--524c4d673ed8883f05398257.md) | 421 | `result-track:524c4d673ed8883f053982573fc556c45ee838e19fb32ca3ea0de8c9546daf7f` |
| 31 | `theorem` | [addVal_pow](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-pow--52144d66d3efa50f77f7786f.md) | 425 | `result-track:52144d66d3efa50f77f7786f9120367c794ba74eb20d3c701a9cab3668d479f8` |
| 32 | `theorem` | [_root_.GRWTSK.Algebra.IsDiscreteValuationRing.Variante253db5d5ee8d9793ed7acd1e7206bcfe7cf85b1ccb04ade40ad79587a3cbb7a.Irreducible.addVal_pow](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/root-grwtsk-algebra-isdiscretevaluationring-variante253db5d5ee8d9793ed7a--322c79a35bf60a17f7060c89.md) | 428 | `result-track:322c79a35bf60a17f7060c89ce3e521ff64f548afa01729831d9336c4f373b29` |
| 33 | `theorem` | [addVal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-eq-top-iff--7b7b0171808626306bdc3c1f.md) | 432 | `result-track:7b7b0171808626306bdc3c1f549f9aa1e5d189884625d3fccad30519d60a83ba` |
| 34 | `theorem` | [addVal_le_iff_dvd](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-le-iff-dvd--07b44252c124d7393a810b0a.md) | 444 | `result-track:07b44252c124d7393a810b0a932c5520b9056e1d3e846b49979fc8bf3b5fa799` |
| 35 | `theorem` | [addVal_add](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-add--2a24abde7ae10e738f2dcc61.md) | 459 | `result-track:2a24abde7ae10e738f2dcc6126937ae88f9ce5f83dc40b9c16d2af7d9db7db41` |
| 36 | `lemma` | [addVal_eq_zero_of_unit](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-eq-zero-of-unit--279f9749f7bca81f259bd6d8.md) | 463 | `result-track:279f9749f7bca81f259bd6d889b82864d7996c8e359ce46ef4187fca421bc368` |
| 37 | `lemma` | [addVal_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/addval-eq-zero-iff--03292df9a73b1e769315b65e.md) | 469 | `result-track:03292df9a73b1e769315b65e076bef63195f58243e592793e0be579ba15c0753` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/instance--30b830359e1e42f3fab2cbde.md) | 479 | `declaration-track:30b830359e1e42f3fab2cbde4cbb297e00897f8eb73827d5a185f106f53235b3` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5157b8ff2a162a8a91993ebfcbe367fcc29460a714a4c7390927b32d6a396c14.lean/declarations/instance--89e8358575ed66317c243b0d.md) | 495 | `declaration-track:89e8358575ed66317c243b0d610fa3d5900e7ba3ce7c0c1d3eb2d9f1492ba003` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
