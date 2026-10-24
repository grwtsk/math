# Verification target: GRWTSK.Analysis.MeasureTheory.ConvergenceInMeasure.Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e5ad511d0229b3d232b73162b09271508580b7f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e5ad511d0229b3d232b73162b09271508580b7f`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Egorov` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure--dce38b027b558cc156f06d89.md) | 53 | `declaration-track:dce38b027b558cc156f06d89ce0f20cd5b6be8369ae285e010ffd6f46e0df419` |
| 2 | `theorem` | [tendstoInMeasure_iff_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-iff-norm--39ec20f2c0e8e69984296b2f.md) | 58 | `result-track:39ec20f2c0e8e69984296b2f896cabcd74012d02f380caf2da89a823a7706b21` |
| 3 | `theorem` | [congr'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/congr--6d1928eaebd1da66667cfb7c.md) | 69 | `result-track:6d1928eaebd1da66667cfb7c4af1d12e48b3294ca337b63466c7503075400f61` |
| 4 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/congr--202dbd0b66a5498a976af823.md) | 84 | `result-track:202dbd0b66a5498a976af8237dee63742fc1f63d85ddb495f6bf028d8ab3568d` |
| 5 | `theorem` | [congr_left](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/congr-left--b874e0b2714d249d75c3d177.md) | 89 | `result-track:b874e0b2714d249d75c3d177043a509ae9823316e3c443c8f0b0630813e4eb78` |
| 6 | `theorem` | [congr_right](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/congr-right--80101de3da92ec11424b1066.md) | 94 | `result-track:80101de3da92ec11424b106671cf3089623aa0e8e947f09f5c7c729de67d15c4` |
| 7 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-ae-of-stronglymeasurable--91beedfacb1a7553af09f9cb.md) | 108 | `result-track:91beedfacb1a7553af09f9cb8363cca3e961b07c29b60bfca371ad651c41d65f` |
| 8 | `theorem` | [tendstoInMeasure_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-ae--5e78b986507088e2f57b5bcc.md) | 129 | `result-track:5e78b986507088e2f57b5bcc93b82caac3dc2250623fb39d2b6f71a2b0183775` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/macro-rules--1bb9c5a2f1f01e4aab3302e1.md) | 142 | `declaration-track:1bb9c5a2f1f01e4aab3302e140efbc13d61712e3d7defe49c965e6fb8c93f9d0` |
| 10 | `theorem` | [exists_nat_measure_lt_two_inv](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/exists-nat-measure-lt-two-inv--5d3072b28596af29aec6d956.md) | 146 | `result-track:5d3072b28596af29aec6d9568be8366e6c5b97dd2c89d6f1fc4c5749081e7817` |
| 11 | `def` | [seqTendstoAeSeqAux](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/seqtendstoaeseqaux--456559fd2a47a0da0989de28.md) | 156 | `declaration-track:456559fd2a47a0da0989de28a54f2aa3a3e451aaa812292dca22de7f866e9306` |
| 12 | `def` | [seqTendstoAeSeq](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/seqtendstoaeseq--77089286f0926835f42f172a.md) | 161 | `declaration-track:77089286f0926835f42f172a94a97040f82640426c7b706182ee3408b31ea13a` |
| 13 | `theorem` | [seqTendstoAeSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/seqtendstoaeseq-succ--6f7add9c51229c32144ad886.md) | 166 | `result-track:6f7add9c51229c32144ad88692e097051f95373f582129df5c09b50bdd64c834` |
| 14 | `theorem` | [seqTendstoAeSeq_spec](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/seqtendstoaeseq-spec--663e4ca762a446ca44e1173a.md) | 172 | `result-track:663e4ca762a446ca44e1173aa307de0be803a44eb2206354052d9c19fc42922d` |
| 15 | `theorem` | [seqTendstoAeSeq_strictMono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/seqtendstoaeseq-strictmono--98567531d1b3ca9ae7a1c1c7.md) | 181 | `result-track:98567531d1b3ca9ae7a1c1c76407ed3b982e3181779370476db507d1067afcfc` |
| 16 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--8bb1d121851d3c6f9a8a0af4.md) | 192 | `result-track:8bb1d121851d3c6f9a8a0af4e55b4220b645ad5a4704a3caab31cc6eb7887b06` |
| 17 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop--bd055658b25a1ba8f3675900.md) | 244 | `result-track:bd055658b25a1ba8f3675900d2bcd0ecd8d81c0f7431adacec34f8e33ec10839` |
| 18 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--c4eac10499489eb08811a8d1.md) | 251 | `result-track:c4eac10499489eb08811a8d17fc4888ee5800146c14da4a08592d581a14a65cf` |
| 19 | `theorem` | [TendstoInMeasure.aeMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-aemeasurable--95aa40a0bb2633b9b0b14d52.md) | 265 | `result-track:95aa40a0bb2633b9b0b14d524d7489215e559ef3d9169763321c38ed6feb5293` |
| 20 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-snorm-of-stronglymeasurable--30b62bba9a76d069c722a596.md) | 282 | `result-track:30b62bba9a76d069c722a596c66f94b5b9721fc5b4ebd1c362ea9c6e078e4cb4` |
| 21 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-snorm-of-ne-top--6e8ea4f29e362cad208b9f27.md) | 308 | `result-track:6e8ea4f29e362cad208b9f27d300ce151847bd87f119158ffeb0717edc23e91c` |
| 22 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-snorm-top--f7c8e1a6d04d062402072a9f.md) | 322 | `result-track:f7c8e1a6d04d062402072a9f76ad5683fb370ae8b2ec21746c59ad7a88041e81` |
| 23 | `theorem` | [tendstoInMeasure_of_tendsto_snorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-snorm--2ebd9de4b55986e328cd8c59.md) | 345 | `result-track:2ebd9de4b55986e328cd8c5951688116e21b697440e8f7737629a78b418ee409` |
| 24 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean/declarations/tendstoinmeasure-of-tendsto-lp--af7c12998b5d21c02e234045.md) | 355 | `result-track:af7c12998b5d21c02e2340454f1baa8138579bcb6d953f2a02c55821c19d57f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
