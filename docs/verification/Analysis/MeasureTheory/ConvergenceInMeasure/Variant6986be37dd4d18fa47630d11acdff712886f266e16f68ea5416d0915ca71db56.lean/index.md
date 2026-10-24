# Verification target: GRWTSK.Analysis.MeasureTheory.ConvergenceInMeasure.Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f84a110b923e3111260b98a5c5cafea1e7c74af0",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f84a110b923e3111260b98a5c5cafea1e7c74af0`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean.json)

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
| 1 | `def` | [TendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure--5486ea9b8d7dc59b601988bf.md) | 57 | `declaration-track:5486ea9b8d7dc59b601988bf17b6ed5663c7332eceb3695dca313105ef87328f` |
| 2 | `lemma` | [tendstoInMeasure_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-ne-top--b8243c753456bc7dd38482df.md) | 61 | `result-track:b8243c753456bc7dd38482df15bbe3d09e0b0098697dc90b3a71f3514b7f89e2` |
| 3 | `theorem` | [tendstoInMeasure_iff_enorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-enorm--869c9408096d83eef46252dc.md) | 75 | `result-track:869c9408096d83eef46252dc4f5a10aa279523019b621adb961a7d24e3294461` |
| 4 | `theorem` | [tendstoInMeasure_iff_measureReal_enorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-measurereal-enorm--ccca03a8d58486efd43a44af.md) | 87 | `result-track:ccca03a8d58486efd43a44af04db6cdc07a181030218d8c0457ccf1926ea3fc6` |
| 5 | `lemma` | [tendstoInMeasure_iff_dist](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-dist--fd03c9a14ce9a15aa2f409e3.md) | 96 | `result-track:fd03c9a14ce9a15aa2f409e30e6ed8cfc2eb9827ec3ff6b29a1f491bb6763bae` |
| 6 | `lemma` | [tendstoInMeasure_iff_measureReal_dist](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-measurereal-dist--79528f255eb69339c699c131.md) | 110 | `result-track:79528f255eb69339c699c1318ef98b6070599b490596d837cb2bce1e83953219` |
| 7 | `theorem` | [tendstoInMeasure_iff_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-norm--5fa83ec3a3706eeb2c890dff.md) | 119 | `result-track:5fa83ec3a3706eeb2c890dffa4c03854743ccc97924f5abf938f97f0724c403a` |
| 8 | `lemma` | [tendstoInMeasure_iff_measureReal_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-measurereal-norm--c6ef53ccb6a5acae210521e7.md) | 129 | `result-track:c6ef53ccb6a5acae210521e7dc70ddc79ceaef52cddb413c0740d50eba981d15` |
| 9 | `theorem` | [tendstoInMeasure_iff_tendsto_toNNReal](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-iff-tendsto-tonnreal--a37dcc5ac74aabdea16be8d2.md) | 137 | `result-track:a37dcc5ac74aabdea16be8d24a502316980133f9f63744d9913e4e2ccad9f7d8` |
| 10 | `lemma` | [mono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/mono--9eca77bb84974380d714b2fb.md) | 155 | `result-track:9eca77bb84974380d714b2fbdb1d92c437e4b55c71573274756393ef58ab29b4` |
| 11 | `lemma` | [comp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/comp--27a02e7ce891e7ecb47eb5d4.md) | 158 | `result-track:27a02e7ce891e7ecb47eb5d4563c18eeb9fd4d3ab664eaa8f4ffcd571a7247d0` |
| 12 | `theorem` | [indicator](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/indicator--c06f54360f97c00298678939.md) | 161 | `result-track:c06f54360f97c002986789391767ec8846b3d339c2c79da9ab35dbc1a5ce7076` |
| 13 | `theorem` | [congr'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/congr--08d1faa3ecb5711375b9fe7d.md) | 169 | `result-track:08d1faa3ecb5711375b9fe7d8db686c138f8ff458b69a23938e3d7ada8e1df79` |
| 14 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/congr--a8960d4769060d65b8b9cf32.md) | 182 | `result-track:a8960d4769060d65b8b9cf329d94dddd92b95bac8bcc8846b9d8c02f6cfb8ff2` |
| 15 | `theorem` | [congr_left](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/congr-left--42780d884e2f971177e49f4c.md) | 186 | `result-track:42780d884e2f971177e49f4c1efdfb9ac241706c23d732c1b39b6037715ebe55` |
| 16 | `theorem` | [congr_right](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/congr-right--db2ff5c7913791e299c79e37.md) | 190 | `result-track:db2ff5c7913791e299c79e37e4be4823e2084528be9583c9fe612ba92face8ef` |
| 17 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_measurable_edist](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-tendsto-ae-of-measurable-edist--6273047478223e542a5673e3.md) | 201 | `result-track:6273047478223e542a5673e36afbf6b046a4039723576d4d5097dbeb739f21b0` |
| 18 | `theorem` | [tendstoInMeasure_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-tendsto-ae--5a8685d98fd722c1aaf0e290.md) | 219 | `result-track:5a8685d98fd722c1aaf0e290a734b95b432400ba5e5cbdbe41a4f30a84b403d8` |
| 19 | `theorem` | [exists_nat_measure_lt_two_inv](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/exists-nat-measure-lt-two-inv--2d1fec69ee022b8c886c79d8.md) | 233 | `result-track:2d1fec69ee022b8c886c79d84af5166fe1f13972989fc3a3cf71ea9a482671d2` |
| 20 | `def` | [seqTendstoAeSeqAux](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/seqtendstoaeseqaux--98be49bdf3a4be0520d51f82.md) | 242 | `declaration-track:98be49bdf3a4be0520d51f82a104dc4f03a518b016d0c97e7d96be7b522816db` |
| 21 | `def` | [seqTendstoAeSeq](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/seqtendstoaeseq--52be4132d6d8f35e34b126d3.md) | 246 | `declaration-track:52be4132d6d8f35e34b126d388f948acb91ca70d00d9e4b22900e4beb814c809` |
| 22 | `theorem` | [seqTendstoAeSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/seqtendstoaeseq-succ--a667eeb3a3b031f0308ff78e.md) | 250 | `result-track:a667eeb3a3b031f0308ff78eea2cefca3d23d88a972dbed89981cc099867fba7` |
| 23 | `theorem` | [seqTendstoAeSeq_spec](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/seqtendstoaeseq-spec--133b37bc07472deb2516865f.md) | 255 | `result-track:133b37bc07472deb2516865fd52f5436370f12ac1eb61a93e293ce6d53bcba6d` |
| 24 | `theorem` | [seqTendstoAeSeq_strictMono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/seqtendstoaeseq-strictmono--38daf459d7422729425f8b8a.md) | 263 | `result-track:38daf459d7422729425f8b8a405497798d656d3c85a87c0ee60e696ab435fafd` |
| 25 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--de3a28d3baaf2b69290c6af1.md) | 273 | `result-track:de3a28d3baaf2b69290c6af188bdb313491cd4c15060470be2f1c976ab043763` |
| 26 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop--83b64899467b70b7aaf75f94.md) | 320 | `result-track:83b64899467b70b7aaf75f94aa0b22587bcdc5fb237916807a49016d304993fa` |
| 27 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--3153913b65cf8e891bededfe.md) | 326 | `result-track:3153913b65cf8e891bededfec1f60faa06e29bcb4aabc5e5865f1ae9782bc6f9` |
| 28 | `theorem` | [exists_seq_tendstoInMeasure_atTop_iff](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/exists-seq-tendstoinmeasure-attop-iff--fa8dfc7523806da6d81dd62b.md) | 335 | `result-track:fa8dfc7523806da6d81dd62bf7dde00a148ab13ae5a3423dbf4bdcbcac429a6a` |
| 29 | `lemma` | [eLpNorm_le_of_tendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/elpnorm-le-of-tendstoinmeasure--48f8c5468141712420ccd509.md) | 358 | `result-track:48f8c5468141712420ccd50908e8642b7f7c5fbf764132a74132eaf7c47cb6fa` |
| 30 | `theorem` | [tendstoInMeasure_ae_unique](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-ae-unique--ac97a14982d5bf8de19535b6.md) | 369 | `result-track:ac97a14982d5bf8de19535b630cc18772a7f63c7e2a83968ed0fce1aabe5b679` |
| 31 | `theorem` | [TendstoInMeasure.aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-aestronglymeasurable--2c52808796cf2af39d49c6ce.md) | 383 | `result-track:2c52808796cf2af39d49c6ce05252c69d998198af056abdbd130d25a75326384` |
| 32 | `theorem` | [TendstoInMeasure.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-aemeasurable--17f4b69788cc6cd486ac2661.md) | 391 | `result-track:17f4b69788cc6cd486ac2661302bc8b20b47655d10e7be5a25e55b9f5c20c991` |
| 33 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-of-ne-top--b22111c0733a0bee66eecfb4.md) | 406 | `result-track:b22111c0733a0bee66eecfb4848405f2e099db9d23ec1db01a29bed5662d7266` |
| 34 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-top--74d002a57715315456c4ed68.md) | 433 | `result-track:74d002a57715315456c4ed681d7288e5460cf848861365f22d4215c2d8a23ed2` |
| 35 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm--3bf47e86027ef4137f5fe89b.md) | 452 | `result-track:3bf47e86027ef4137f5fe89bd9ef0203f06321268b9fd676d408e5862dcdd967` |
| 36 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/declarations/tendstoinmeasure-of-tendsto-lp--7db44d0665428da24586bd2a.md) | 461 | `result-track:7db44d0665428da24586bd2ac69278b8e5119b7638df22a8ae31724a3b6e61a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
