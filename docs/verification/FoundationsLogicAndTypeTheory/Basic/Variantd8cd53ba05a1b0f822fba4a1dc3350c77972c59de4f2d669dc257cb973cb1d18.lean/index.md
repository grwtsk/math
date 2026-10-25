# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d27137410eb195d6f57290a6908e7f42df58a75",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d27137410eb195d6f57290a6908e7f42df58a75`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean.json)

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
| 1 | `def` | [fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib--df75e8b43b572ddea4900f9c.md) | 59 | `declaration-track:df75e8b43b572ddea4900f9cf3daa46c14ee813ecaa94aec1a069d1a3e4710d9` |
| 2 | `theorem` | [fib_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-zero--afa8db2780d42f26b116adbb.md) | 63 | `result-track:afa8db2780d42f26b116adbb7383295bd6cb76e9541c5d8e863aef629b79669b` |
| 3 | `theorem` | [fib_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-one--73b0ce4060388b89eb8919d5.md) | 67 | `result-track:73b0ce4060388b89eb8919d5b729c52f306f36c5a6cb568a68b4e3da14d0dc2b` |
| 4 | `theorem` | [fib_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-two--94293741cb2534c4f42bc43c.md) | 71 | `result-track:94293741cb2534c4f42bc43c94a3c818dcb313059553179e9ed4e62fb460b041` |
| 5 | `theorem` | [fib_add_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-add-two--c6f4767ab03d3f2ad04be677.md) | 75 | `result-track:c6f4767ab03d3f2ad04be6779dd1cf93ca53007d06963984ed0c06eadfe9268c` |
| 6 | `lemma` | [fib_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-add-one--a8a0fea6c0d70b341f7dd59c.md) | 78 | `result-track:a8a0fea6c0d70b341f7dd59c1144561475442c67e533cea5ba794f8d03a638f1` |
| 7 | `theorem` | [fib_le_fib_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-le-fib-succ--a7ff91dbe1293b933591b8c2.md) | 81 | `result-track:a7ff91dbe1293b933591b8c2f828c12075e0bfe555e28694731688f87c6dbf8c` |
| 8 | `theorem` | [fib_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-mono--1b6991eace069251d5724179.md) | 84 | `result-track:1b6991eace069251d5724179a53b220c5feca99012c6ea84958efcfe879f420e` |
| 9 | `lemma` | [fib_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-eq-zero--09cac65ef37d5ae80c0e167a.md) | 87 | `result-track:09cac65ef37d5ae80c0e167ae25f7cc163f307b4fdd67b77fbbc15b7f57ff8fa` |
| 10 | `lemma` | [fib_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-pos--b765d7912b7d2d0b733b0f42.md) | 92 | `result-track:b765d7912b7d2d0b733b0f4215620d70f2532297b88cbb5bee062b941796c961` |
| 11 | `theorem` | [fib_add_two_sub_fib_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-add-two-sub-fib-add-one--32f70ae1a93516e1093f8695.md) | 94 | `result-track:32f70ae1a93516e1093f869532ea570811b8ee4d57790ce8558a5f7f7ef9dec5` |
| 12 | `theorem` | [fib_lt_fib_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-lt-fib-succ--cbf208ea37c5fa2bc6f51df1.md) | 97 | `result-track:cbf208ea37c5fa2bc6f51df10a9d4eb7b914c3e249c8c74bf142b0d47723967a` |
| 13 | `theorem` | [fib_add_two_strictMono](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-add-two-strictmono--ab1dda0e05b34b799fca7959.md) | 103 | `result-track:ab1dda0e05b34b799fca795999490ff13fda743726dc3ddea799aee622932c22` |
| 14 | `lemma` | [fib_strictMonoOn](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-strictmonoon--a224332630400bdbe6d5d0e7.md) | 108 | `result-track:a224332630400bdbe6d5d0e7d14b4d55081d4b627c0502e964cf19e037886b51` |
| 15 | `lemma` | [fib_lt_fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-lt-fib--749b73f15755db02a2720ded.md) | 111 | `result-track:749b73f15755db02a2720ded4904f3b1f005e352c8e499da06aa07e3070e31d9` |
| 16 | `theorem` | [le_fib_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/le-fib-self--852035209f1939978f4379ba.md) | 116 | `result-track:852035209f1939978f4379bac1bce081d3e0c1aec777666242be7a543a6dc20d` |
| 17 | `lemma` | [le_fib_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/le-fib-add-one--7aa14655c390ee1dae8f6986.md) | 125 | `result-track:7aa14655c390ee1dae8f6986719d33eef091f3cfa6f770838ffad301467f8691` |
| 18 | `theorem` | [fib_coprime_fib_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-coprime-fib-succ--bae686c56a76404b91bf7a91.md) | 135 | `result-track:bae686c56a76404b91bf7a9174a261aa84f8e096d299b08df2d15c81d98125cd` |
| 19 | `theorem` | [fib_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-add--c0ed345554c470a4f472b2fa.md) | 141 | `result-track:c0ed345554c470a4f472b2fa8813f2684786d2b0bcf4da30ebd5611c00162b4e` |
| 20 | `theorem` | [fib_two_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-two-mul--77a86a8bf051db06be31a664.md) | 150 | `result-track:77a86a8bf051db06be31a6647218d5b003d227f29c94f38691686a3d53abd7ec` |
| 21 | `theorem` | [fib_two_mul_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-two-mul-add-one--ab5d2c172f866aebbf167311.md) | 157 | `result-track:ab5d2c172f866aebbf167311326dbe576a815685246b10918580566ed6e5d4e8` |
| 22 | `theorem` | [fib_two_mul_add_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-two-mul-add-two--c4dfa786b7eed50d993b2dbb.md) | 161 | `result-track:c4dfa786b7eed50d993b2dbb77422c390abd1af3df4c86b93593a8ae1a6d6605` |
| 23 | `def` | [fastFibAux](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fastfibaux--0ee39b1cd4f21b9c416e5bc5.md) | 171 | `declaration-track:0ee39b1cd4f21b9c416e5bc54f3b4de9aa5b49e5f98524a206fca4419a77d1c8` |
| 24 | `def` | [fastFib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fastfib--c8973a3a8af3979cabfc63fa.md) | 178 | `declaration-track:c8973a3a8af3979cabfc63fa91ec9a688880c3a1826e6e3dfa3a4d3725ac8f4b` |
| 25 | `theorem` | [fastFibAux_bit_false](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fastfibaux-bit-false--e0daeaa9b980bf0c1dfdca88.md) | 181 | `result-track:e0daeaa9b980bf0c1dfdca885b01d3fe67bdd7be3297812921bb14ec0d2e8b63` |
| 26 | `theorem` | [fastFibAux_bit_true](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fastfibaux-bit-true--998c4cbebc0b5f467bf842f3.md) | 189 | `result-track:998c4cbebc0b5f467bf842f312134585bd7b5d1d0243d06564e3cefeba928dcf` |
| 27 | `theorem` | [fastFibAux_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fastfibaux-eq--f3d939fdf5812ee8bb0bd8ec.md) | 197 | `result-track:f3d939fdf5812ee8bb0bd8ece53f5270fe7eb485a039a64bc93d969be273cf7c` |
| 28 | `theorem` | [fastFib_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fastfib-eq--0ae1baf217ce42dd7e311109.md) | 205 | `result-track:0ae1baf217ce42dd7e311109ff2ec802673c74f1a485403d3eaf5cc1dc436d4c` |
| 29 | `theorem` | [fib_eq_fastFib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-eq-fastfib--0dd29bba418e7090ea7fd1e0.md) | 208 | `result-track:0dd29bba418e7090ea7fd1e09aa52628409575228684074fcb651d9f731dcc2d` |
| 30 | `theorem` | [gcd_fib_add_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/gcd-fib-add-self--05f1f9894202a53289ae409f.md) | 210 | `result-track:05f1f9894202a53289ae409f21d7ceb6f2db527d188f4bd76aeecbce0ed27c66` |
| 31 | `theorem` | [gcd_fib_add_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/gcd-fib-add-mul-self--6af0c3a75b818873dbc5377c.md) | 224 | `result-track:6af0c3a75b818873dbc5377c9a5223a729263289cf8f2eded6e61ff1770c9efb` |
| 32 | `theorem` | [fib_gcd](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-gcd--7e949973f8d99fed5924ca97.md) | 231 | `result-track:7e949973f8d99fed5924ca971f826e5de48eab5b76a246840299aeef43e528d2` |
| 33 | `theorem` | [isStrongDvdSequence_fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/isstrongdvdsequence-fib--5d46f694b5da9f32e92ad54e.md) | 239 | `result-track:5d46f694b5da9f32e92ad54e5dbbabf3b98d48c546385bdc5ba26f61d0208773` |
| 34 | `theorem` | [isDvdSequence_fib](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/isdvdsequence-fib--cfecbfd25abce1a32b211ab0.md) | 242 | `result-track:cfecbfd25abce1a32b211ab058c37e1f207452ea84e84d790e0ad5b4924d363c` |
| 35 | `theorem` | [fib_succ_eq_sum_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-succ-eq-sum-choose--6235facc0d3ce254d30e0e2c.md) | 247 | `result-track:6235facc0d3ce254d30e0e2c427885442a632f389737a6fe6c3e45fb0c74dcbe` |
| 36 | `theorem` | [fib_succ_eq_succ_sum](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/declarations/fib-succ-eq-succ-sum--93612dc66d2f704640abe570.md) | 253 | `result-track:93612dc66d2f704640abe5708ccac39261daf10e0cdf6c1498fe005235a52ebd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
