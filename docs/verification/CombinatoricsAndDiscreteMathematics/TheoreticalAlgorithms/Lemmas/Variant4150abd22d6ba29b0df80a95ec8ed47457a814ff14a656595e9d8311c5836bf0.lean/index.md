# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1a4c7f8263d360ace4f13144ff3c3d209196028",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1a4c7f8263d360ace4f13144ff3c3d209196028`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean.json)

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
| 1 | `theorem` | [recAux_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recaux-zero--e5a3944fea5b807158fd600e.md) | 24 | `result-track:e5a3944fea5b807158fd600ea9efb3aa2f3ce153913764dacfc12ec9a1fc9a71` |
| 2 | `theorem` | [recAux_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recaux-succ--6a1e6addeca2c55b990ac9ea.md) | 28 | `result-track:6a1e6addeca2c55b990ac9ea5831736d06df9ad34bee1bf21eae741b6231a308` |
| 3 | `theorem` | [recAuxOn_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recauxon-zero--7df0caea901fe7b48d4be8c2.md) | 32 | `result-track:7df0caea901fe7b48d4be8c2de7831a6200526d81bce61b06e44bf88c7d79575` |
| 4 | `theorem` | [recAuxOn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recauxon-succ--11acd697716b2f298675f8f7.md) | 36 | `result-track:11acd697716b2f298675f8f76b2994362c303b464cd938d047289b34e32ab5a8` |
| 5 | `theorem` | [casesAuxOn_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/casesauxon-zero--78e5a5fef95fd275a11858e0.md) | 40 | `result-track:78e5a5fef95fd275a11858e0bc4dba7ae9262c82daab49ec9fdb7bc220e898c6` |
| 6 | `theorem` | [casesAuxOn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/casesauxon-succ--5686cc3bff22ade0d7fb5e16.md) | 44 | `result-track:5686cc3bff22ade0d7fb5e16c4d846e7c8f7c74010a4006df5d87591cf448653` |
| 7 | `theorem` | [strongRec_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/strongrec-eq--b59d3b9a6490e81108a65961.md) | 48 | `result-track:b59d3b9a6490e81108a65961afcf62887c3649ee1e671f26be6175d8c7258593` |
| 8 | `theorem` | [strongRecOn_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/strongrecon-eq--85871b864ee287173329862f.md) | 52 | `result-track:85871b864ee287173329862f23d6f230f985265517eb848da011cba334de8723` |
| 9 | `theorem` | [recDiagAux_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagaux-zero-left--7f5c5d6c7497735bd4614b78.md) | 56 | `result-track:7f5c5d6c7497735bd4614b78aedc1aaf22a212c7ae6d84b24f601fc2fc15d52f` |
| 10 | `theorem` | [recDiagAux_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagaux-zero-right--74f58a1369597a35eb44ed6e.md) | 61 | `result-track:74f58a1369597a35eb44ed6e2e7ddc54a77bce2e81748d87fa45adf3f584f837` |
| 11 | `theorem` | [recDiagAux_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagaux-succ-succ--79e177e418028f55ccde27c1.md) | 67 | `result-track:79e177e418028f55ccde27c143d34aed4d30f0d39962d3291eb6838ad90681a7` |
| 12 | `theorem` | [recDiag_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiag-zero-zero--6474d2e38c63ebc9de8db2d0.md) | 73 | `result-track:6474d2e38c63ebc9de8db2d00a804203b6d84cd9a4d13cb6adbb76bf79bb25f3` |
| 13 | `theorem` | [recDiag_zero_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiag-zero-succ--347a7c5e5dd2e0dbf33f890f.md) | 78 | `result-track:347a7c5e5dd2e0dbf33f890f44b34b7a7c78ca1ccc2070b0248b95d0f0d302f3` |
| 14 | `theorem` | [recDiag_succ_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiag-succ-zero--03365f64cf5015b6ce0ad1ea.md) | 85 | `result-track:03365f64cf5015b6ce0ad1eaad8f2fccc188c4ffcfbb8acb8f6d0d667adfb83a` |
| 15 | `theorem` | [recDiag_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiag-succ-succ--2a2e208ddb67a9fd408a0bbe.md) | 92 | `result-track:2a2e208ddb67a9fd408a0bbe1e5d76c2fab11129db8b79639f1f294021b980a6` |
| 16 | `theorem` | [recDiagOn_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagon-zero-zero--32b088cd2f65b17bc66b904c.md) | 98 | `result-track:32b088cd2f65b17bc66b904cdf10e8265d299ead76b755739a27ca7c758f4c98` |
| 17 | `theorem` | [recDiagOn_zero_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagon-zero-succ--db782274812cafd3506d76cb.md) | 103 | `result-track:db782274812cafd3506d76cba159227bba23b9d7b17b97fd0e2b99b317b526c3` |
| 18 | `theorem` | [recDiagOn_succ_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagon-succ-zero--4958cf1b7ba6aa94ab2b287c.md) | 110 | `result-track:4958cf1b7ba6aa94ab2b287c1e5bf4297174d0d4795b730532abdb6fff357413` |
| 19 | `theorem` | [recDiagOn_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/recdiagon-succ-succ--1325f6e2d8ec43321a685e30.md) | 117 | `result-track:1325f6e2d8ec43321a685e304e74dcf3cc3a4882d97c043f6785779e66c9f88c` |
| 20 | `theorem` | [casesDiagOn_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/casesdiagon-zero-zero--d77bfc671e5a0b7a726fa705.md) | 123 | `result-track:d77bfc671e5a0b7a726fa7054dc8d0f85aa100156e38a3e7e2fae96613bc8db5` |
| 21 | `theorem` | [casesDiagOn_zero_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/casesdiagon-zero-succ--74c2ac2bc2efcd11424f0468.md) | 128 | `result-track:74c2ac2bc2efcd11424f046863b4d5503aa37446da7f84a591f917a30d9195c3` |
| 22 | `theorem` | [casesDiagOn_succ_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/casesdiagon-succ-zero--53795bb36434d8df1bc69d59.md) | 133 | `result-track:53795bb36434d8df1bc69d59b8693001c6c06e76c578c63e4e838c3336d6b3f2` |
| 23 | `theorem` | [casesDiagOn_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/casesdiagon-succ-succ--9e918bf3c54c76bacdae4313.md) | 138 | `result-track:9e918bf3c54c76bacdae4313dd6b9b3aa9affd80bba86ca32a15302df35cc15f` |
| 24 | `def` | [lt_sum_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/lt-sum-ge--3ee59d9caba419edb7841535.md) | 146 | `declaration-track:3ee59d9caba419edb7841535f1f6a70987b468122c35248da47979e88b3e2c61` |
| 25 | `def` | [sum_trichotomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/sum-trichotomy--fbb8c6b96c68321f27d9c5dc.md) | 150 | `declaration-track:fbb8c6b96c68321f27d9c5dcd9c9da34b4b01b9517c124635e89445490ab0380` |
| 26 | `theorem` | [ofBits_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/ofbits-zero--09e74a188ba12cfa74ed7d05.md) | 171 | `result-track:09e74a188ba12cfa74ed7d05b8a77c7b196000f9dc18fa56c9659ec40eb5b1e3` |
| 27 | `theorem` | [ofBits_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/ofbits-succ--ff9e503ebb43c251f8ab9a0e.md) | 173 | `result-track:ff9e503ebb43c251f8ab9a0e5d40ca0d04b7d86f9a536227ead5c84e25731969` |
| 28 | `theorem` | [ofBits_lt_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/ofbits-lt-two-pow--8d59643b958ff92a5a87690f.md) | 176 | `result-track:8d59643b958ff92a5a87690f158194d34fb6465a25946354f06177a247efb147` |
| 29 | `theorem` | [testBit_ofBits_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/testbit-ofbits-lt--4bbb6bd6e36835fd918a5f5a.md) | 186 | `result-track:4bbb6bd6e36835fd918a5f5a71cfa1bf22b8133e4013c3a5cda06c6e3bce5844` |
| 30 | `theorem` | [testBit_ofBits_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/testbit-ofbits-ge--d3d4ab55a246915eb06dcd37.md) | 198 | `result-track:d3d4ab55a246915eb06dcd3777467dfe41372a653d4f2a77edcbfe2ef9e98eec` |
| 31 | `theorem` | [testBit_ofBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/testbit-ofbits--8041ffce90ec00c762a67a84.md) | 205 | `result-track:8041ffce90ec00c762a67a84dd80551ba6fcc79333db3ec6967c7bd96cbb4364` |
| 32 | `theorem` | [ofBits_testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/ofbits-testbit--62b9413f17a6036c1e7e3482.md) | 211 | `result-track:62b9413f17a6036c1e7e3482e9afed07e3b185fa04376bec8ae15ad146e28474` |
| 33 | `theorem` | [mul_add_lt_mul_of_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/mul-add-lt-mul-of-lt-of-lt--cda789cc613e25f0d2beaa10.md) | 216 | `result-track:cda789cc613e25f0d2beaa1078d92ca9e2e417b5429b80e53ecc28981b3b3749` |
| 34 | `theorem` | [add_mul_lt_mul_of_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4150abd22d6ba29b0df80a95ec8ed47457a814ff14a656595e9d8311c5836bf0.lean/declarations/add-mul-lt-mul-of-lt-of-lt--ae7e252edb8bff127fb5b965.md) | 223 | `result-track:ae7e252edb8bff127fb5b965351567f062ee5d6b6f19accd5559677661460582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
