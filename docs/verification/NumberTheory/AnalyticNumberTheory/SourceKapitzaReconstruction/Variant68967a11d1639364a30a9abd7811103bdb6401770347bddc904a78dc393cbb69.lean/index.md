# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceKapitzaReconstruction.Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca78330df0cff3b41978a02d99e389ed2bfcce6f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca78330df0cff3b41978a02d99e389ed2bfcce6f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedPsiError](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/normalizedpsierror--82f529ae2f86042792fef220.md) | 33 | `declaration-track:82f529ae2f86042792fef220f018c7ce99479b2f391bac0bc9102b1b153e1999` |
| 2 | `def` | [kapitzaKernel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kapitzakernel--c6ca32b4f4720982bb791106.md) | 37 | `declaration-track:c6ca32b4f4720982bb7911066ae38cb5ef52e620b5e88e0b5ab0fa44bbcf74f6` |
| 3 | `def` | [kapitzaWeight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kapitzaweight--17d6156fecb789472c00f1fd.md) | 42 | `declaration-track:17d6156fecb789472c00f1fd8b0d14ca90700f39f240157c819f8e7542957176` |
| 4 | `def` | [endpointValue](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/endpointvalue--22090b2d42384af8cf9b2501.md) | 45 | `declaration-track:22090b2d42384af8cf9b2501a14c8c616be98c56978d959f4cdd29aedd4de089` |
| 5 | `def` | [endpointSlope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/endpointslope--876224e808b68430efd0f8e7.md) | 48 | `declaration-track:876224e808b68430efd0f8e77a926a7cef8ed1eb79203b7194826112d251e24b` |
| 6 | `def` | [affineTrend](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/affinetrend--3a42c27077da4a9e5986304e.md) | 52 | `declaration-track:3a42c27077da4a9e5986304e198d17c348bc5fb663221180e1063b281ba1a1e0` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/nonaffinediscrepancy--529ab7775e3233521afb4374.md) | 55 | `declaration-track:529ab7775e3233521afb43747b1bb1890f25404af4c1c5af09cba2bc409a1d95` |
| 8 | `def` | [kernelMomentZero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kernelmomentzero--55d20b3393e174ba1bf9d4d7.md) | 58 | `declaration-track:55d20b3393e174ba1bf9d4d7d11af0382e8630753db4f016df1e5287f9762cc1` |
| 9 | `def` | [kernelMomentOne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kernelmomentone--4e780641aa63663c21625db5.md) | 61 | `declaration-track:4e780641aa63663c21625db5edb9acaa215ec923e93704cb2c3561f06e5ffa0f` |
| 10 | `def` | [trendValue](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/trendvalue--c8e8d646f10f7820c7baeb7f.md) | 64 | `declaration-track:c8e8d646f10f7820c7baeb7f4b37162103cb9cf69fa5246f80236643e24245b1` |
| 11 | `def` | [nonaffineWork](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/nonaffinework--ad0f1cdcb0db3e0e3bc39af9.md) | 68 | `declaration-track:ad0f1cdcb0db3e0e3bc39af9d2335a4933b647e822dc6d46475c3993914ac850` |
| 12 | `def` | [continuousDefect](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/continuousdefect--93dde280fa3186789910c5db.md) | 72 | `declaration-track:93dde280fa3186789910c5db6074ba8c7f5d783485e5cfaa0ba6007208b498c1` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/normalizedpsierror-zero--aefb89a22e1b2ddd74ec47df.md) | 75 | `result-track:aefb89a22e1b2ddd74ec47df1817f8cb1286188926bcd8347cb729635f9c1a5b` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/nonaffinediscrepancy-upper--94a36ae9adcc3d8ed5947b80.md) | 78 | `result-track:94a36ae9adcc3d8ed5947b80f925cb2cc8ec5c271a3a75433fb571021f606c07` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/normalizedpsierror-eq-prefix--d1e6984b899252e5bb94bc1b.md) | 81 | `result-track:d1e6984b899252e5bb94bc1bca48fabc46d9c744986d575a303330b75a0a6a01` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/chebyshev-mul-continuous-intervalintegrable--d62190d054d2d348288f802d.md) | 87 | `result-track:d62190d054d2d348288f802dcf599fc21583a60613624651d36b2f15150b8c62` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/normalizedpsierror-intervalintegrable--b12dfcaf71511a66dd0edcb2.md) | 108 | `result-track:b12dfcaf71511a66dd0edcb2da4c8270fd823189e36d77ec76c31f40888cae45` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kapitzaweight-continuous--1cd9469ec8dab7dbd3da6c89.md) | 118 | `result-track:1cd9469ec8dab7dbd3da6c89fabd2e951ede99da78da3c3b5e0707fc2904e7d0` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/weightedpsierror-intervalintegrable--1a86a5ad536781ef29e51182.md) | 123 | `result-track:1a86a5ad536781ef29e5118280b07abab1f51c32dd5ebc763b5eacb9264750c9` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kernelmomentzero-eq--a484bb9b09099278704bceeb.md) | 130 | `result-track:a484bb9b09099278704bceeb412d60fee0ff9aa6c3ed2c944c115fd449be56c9` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/mertensresidual-eq-weightedpsi--2bf6fa8d9e04e0d6b69320c5.md) | 149 | `result-track:2bf6fa8d9e04e0d6b69320c51f530f808c01c7b99bfdf6ce0d82e206e0efd571` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/mertensresidual-eq-affine-nonaffine--53a0f10984c66ac16cf78ccf.md) | 206 | `result-track:53a0f10984c66ac16cf78ccf1988c9daa6ce87bf0c9c0da5c79c3cfa10b698a5` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/one-add-continuous-eq-defect--5f49227151c1578019720666.md) | 247 | `result-track:5f49227151c1578019720666f26dc4f117e9d9a0a93ffccd41f956db0dba9c1e` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/mertensresidual-eq-defect-trend-nonaffine--d4415a557ef81f2161e53245.md) | 256 | `result-track:d4415a557ef81f2161e53245a172ce39833248bde942494070d314a06ecfceb7` |
| 25 | `def` | [negativeFirstMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/negativefirstmoment--561d7bf9797106ab939943f0.md) | 263 | `declaration-track:561d7bf9797106ab939943f05fe2a4937ed280c147b927d1d4d63a76b9e9eb0f` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/positivefirstmoment-eq-negative--48d39561acbe49932741f1da.md) | 267 | `result-track:48d39561acbe49932741f1da313b6b182c07583b7589f2e0f32dba9a44a4f3d8` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kernelmomentone-eq--5e2be45d51e0a322a57da1b8.md) | 315 | `result-track:5e2be45d51e0a322a57da1b8fc6bb72976ceb7bc582929f8b6410c6c0df8d5cd` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/negativefirstmoment-abs-le-four--c4b8ef4bddd5217bc6599e37.md) | 358 | `result-track:c4b8ef4bddd5217bc6599e3789c17d262419c9722a9df6258cb574759088fc67` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kernelmomentzero-abs-le-one--9ca1ae5f911b1936132f8664.md) | 387 | `result-track:9ca1ae5f911b1936132f86643ca95d7070ad0cfdb13ce08705b48fbcaee54d79` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/kernelmomentone-abs-le--5c472c8fcf49f90198cec585.md) | 393 | `result-track:5c472c8fcf49f90198cec5854eb10ea66fa7fcc8ff010a88b961428787a5d109` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/trendvalue-abs-le-of-samples--ffae9297ee1ed812a3a092a1.md) | 410 | `result-track:ffae9297ee1ed812a3a092a1d8f2e8ca2d3c2b859e7572b9fe53dd21febafa5e` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/continuousdefect-antitone--0039f158f951799c9ec000a4.md) | 437 | `result-track:0039f158f951799c9ec000a48c6587708b24eb16cf48f1e01e9d7dad5c0c2a9b` |
| 33 | `def` | [originalPrefixFloor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/originalprefixfloor--a3e6ae193bb8efcf9dbb6102.md) | 451 | `declaration-track:a3e6ae193bb8efcf9dbb61028cf67e395c63d1de2fea20120f312e18131b82db` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/originalprefixfloor-le--876093de6c6d422c24fbc26c.md) | 455 | `result-track:876093de6c6d422c24fbc26ced65d7ace44f35784810c4f1a9fd66a5a1915460` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/residual-le-of-nonaffine-cap--2001aa5bccced7eb530fef54.md) | 463 | `result-track:2001aa5bccced7eb530fef54699b5ae1ce71b53ff7d596204a6202a79d6c716c` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/original-lower-of-nonaffine-cap--83fc75760f570b4d027c7aae.md) | 473 | `result-track:83fc75760f570b4d027c7aae9ad7f53c242af787a7da2b3e9b4b0316eeda5237` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/estimate-of-nonaffine-cap--1815bd010f08bdfbf15deb0b.md) | 495 | `result-track:1815bd010f08bdfbf15deb0bc3671b2a2d437a7a5b918c8e879851c978800053` |
| 38 | `def` | [consumerRadius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/consumerradius--7b8afe1d89cb8b078b76b176.md) | 502 | `declaration-track:7b8afe1d89cb8b078b76b176a24cadc435b3f9b7a2273de8d29f0ce0fdae15e1` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/declarations/original-lower-of-separate-nonaffine-caps--e948f9950c44e5bf32a80d23.md) | 505 | `result-track:e948f9950c44e5bf32a80d23cff7b9271e810b5a25d1f334b7219945a4a08d45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
