# Verification target: GRWTSK.Analysis.MeasureTheory.ConvergenceInMeasure.Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c85abc67f27c72c264914c532c721bf18d582528",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c85abc67f27c72c264914c532c721bf18d582528`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Egorov` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure--4710341a4589993118a3c2ec.md) | 61 | `declaration-track:4710341a4589993118a3c2ecf15e83d41d2783ac6c9777882b3c02ab8ae2f1a6` |
| 2 | `theorem` | [tendstoInMeasure_iff_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-iff-norm--d1588d527664fb73b13f595d.md) | 66 | `result-track:d1588d527664fb73b13f595d68b80aa90a430689023aeed32711250ad9919a5e` |
| 3 | `theorem` | [congr'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/congr--36a10d109db915fd9d8da7da.md) | 77 | `result-track:36a10d109db915fd9d8da7dab90672056279f11ead5cdfcc32de08e07f47f7d0` |
| 4 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/congr--930d98888b74dff48183a14d.md) | 92 | `result-track:930d98888b74dff48183a14da187f6cd8fb3dc37754eafbe5c55f5f00d2fa35c` |
| 5 | `theorem` | [congr_left](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/congr-left--9c0e18d9b60f5498da2042a0.md) | 97 | `result-track:9c0e18d9b60f5498da2042a07f671b5a67b0e042ed0d465406a536da6ac58601` |
| 6 | `theorem` | [congr_right](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/congr-right--6d5473b04edbca68bf911fc6.md) | 102 | `result-track:6d5473b04edbca68bf911fc6aff2687d0c6b1495089d496c02bc93335ac7a86e` |
| 7 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-ae-of-stronglymeasurable--13ae3097a107843521880cdd.md) | 116 | `result-track:13ae3097a107843521880cdd308404625e7cf9e6e2cf61e75d6c5d2320b0f2c1` |
| 8 | `theorem` | [tendstoInMeasure_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-ae--7383f95c2a436c675f3f0bb8.md) | 137 | `result-track:7383f95c2a436c675f3f0bb8397b24edd827a3f8ed608e23b94f7e3a449cd68a` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/macro-rules--558d0adf03db307561826397.md) | 150 | `declaration-track:558d0adf03db307561826397f2627e92529ca71db0da18629e21bd8a634f5387` |
| 10 | `theorem` | [exists_nat_measure_lt_two_inv](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/exists-nat-measure-lt-two-inv--0baf4f4df4efeab0858418ca.md) | 154 | `result-track:0baf4f4df4efeab0858418ca56322815b701269d2102ab3e642b60b750df0a25` |
| 11 | `def` | [seqTendstoAeSeqAux](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/seqtendstoaeseqaux--2bea78798ee96ce3b0b909ec.md) | 164 | `declaration-track:2bea78798ee96ce3b0b909ec235e263a811657c0320ed614fe87c2082d02e13b` |
| 12 | `def` | [seqTendstoAeSeq](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/seqtendstoaeseq--3c742838d36c867dbbe70773.md) | 169 | `declaration-track:3c742838d36c867dbbe707733a29a78253b97cfad11050eee6d896a771071fb9` |
| 13 | `theorem` | [seqTendstoAeSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/seqtendstoaeseq-succ--258e65c47785b9f42e09b522.md) | 174 | `result-track:258e65c47785b9f42e09b522db56d83fef02b43d27b5809bf08dcb71f5ebabf2` |
| 14 | `theorem` | [seqTendstoAeSeq_spec](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/seqtendstoaeseq-spec--970030e980f6b3223580316e.md) | 180 | `result-track:970030e980f6b3223580316e95a4ec01080f1f1b234d3f583351180c3ea442a0` |
| 15 | `theorem` | [seqTendstoAeSeq_strictMono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/seqtendstoaeseq-strictmono--df3d6b44f7980616e6487d9b.md) | 189 | `result-track:df3d6b44f7980616e6487d9bde9989434efd5e7f2f9ea452b334c5039101f50f` |
| 16 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--84b5be1e7be0ef5abfe38b84.md) | 200 | `result-track:84b5be1e7be0ef5abfe38b84aed2484e8a2bab07dbdf83df1c99b3c14d8e49fd` |
| 17 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop--53219ee342658f84f24f0a7a.md) | 252 | `result-track:53219ee342658f84f24f0a7a5ba06a4093f12d3f6a02acbe88993bd32a57e9d5` |
| 18 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--e9f91106b13b395fd2de3c00.md) | 259 | `result-track:e9f91106b13b395fd2de3c0083df662605a0f2c6f9e774f645cf3eab30db2a9b` |
| 19 | `theorem` | [TendstoInMeasure.aeMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-aemeasurable--24f7aa4bbb039215ea059759.md) | 273 | `result-track:24f7aa4bbb039215ea0597594198508990c8a3dfdb696421d45f9796f368fa9b` |
| 20 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-snorm-of-stronglymeasurable--a742a2cfc38eb9b91921f1c0.md) | 290 | `result-track:a742a2cfc38eb9b91921f1c0af8678fa3ecb5d9c66bb58c461be9000518e6f75` |
| 21 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-snorm-of-ne-top--77baf70fad6961f900d69325.md) | 316 | `result-track:77baf70fad6961f900d69325d8fde947380001f1eadaa34521a547f294b2d1c4` |
| 22 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-snorm-top--1d04106e11fa78672fbc5f60.md) | 330 | `result-track:1d04106e11fa78672fbc5f6072eb05bb6edf7498d9a9066bf873ea4c000a6502` |
| 23 | `theorem` | [tendstoInMeasure_of_tendsto_snorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-snorm--8b5a29aeba9ed45b3a6268c5.md) | 353 | `result-track:8b5a29aeba9ed45b3a6268c584d54da6074228bcc002e8bf875932d6e5100b8f` |
| 24 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/declarations/tendstoinmeasure-of-tendsto-lp--7a3ba9000a8f30736b050cf3.md) | 363 | `result-track:7a3ba9000a8f30736b050cf3695e91f82cacfa22465def863550fd4db0f31a4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
