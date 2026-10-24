# Verification target: GRWTSK.Analysis.MeasureTheory.ConvergenceInMeasure.Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abe8c6ec3bb621a51511053bc209f63cfa1a03eb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abe8c6ec3bb621a51511053bc209f63cfa1a03eb`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.Egorov` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Complete` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure--815c35d8ac05249bf0e47b22.md) | 61 | `declaration-track:815c35d8ac05249bf0e47b221c76fe25d991e656a85a787fe29c7bf012cdb073` |
| 2 | `theorem` | [tendstoInMeasure_iff_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-iff-norm--48db27e54443bf4a8e7d19c5.md) | 65 | `result-track:48db27e54443bf4a8e7d19c534e5782ab510195651df5c4848bd1cf9f8537888` |
| 3 | `theorem` | [tendstoInMeasure_iff_tendsto_toNNReal](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-iff-tendsto-tonnreal--d95f80eca89d968d7b6807de.md) | 71 | `result-track:d95f80eca89d968d7b6807deb86d5b88c6c458deba2e9116275c69d6409e6e0c` |
| 4 | `lemma` | [TendstoInMeasure.mono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-mono--3acd2320fe3527357bd46ae9.md) | 85 | `result-track:3acd2320fe3527357bd46ae9ba2bec9cb4a1fef678abca6976d7112fc262da7f` |
| 5 | `lemma` | [TendstoInMeasure.comp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-comp--67460cf6ef41aeca1d710a54.md) | 89 | `result-track:67460cf6ef41aeca1d710a54052173a8e49d86a3d7df5d0974e5f45910e54570` |
| 6 | `theorem` | [congr'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/congr--0a1acaafa6ea3f84fbb6fd9f.md) | 97 | `result-track:0a1acaafa6ea3f84fbb6fd9f314df0b9fe862af1f7bbaedf10cdb29f19f93615` |
| 7 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/congr--ff2b7e2fc8a8a66d767101da.md) | 111 | `result-track:ff2b7e2fc8a8a66d767101dad4590faf592d116fca5ada9aceb4c7b44ec62997` |
| 8 | `theorem` | [congr_left](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/congr-left--750d22e5c6dd087522248364.md) | 115 | `result-track:750d22e5c6dd0875222483646354f43f22605d4fe02720dc6e98c1152a90b4a3` |
| 9 | `theorem` | [congr_right](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/congr-right--18c55109a11d8b70b7e20dca.md) | 119 | `result-track:18c55109a11d8b70b7e20dca599cb742b59afc8797d164c536eee60f78394620` |
| 10 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-ae-of-stronglymeasurable--823a8d96358f4643bca66a38.md) | 131 | `result-track:823a8d96358f4643bca66a38c5c2b5e8efa82ce490b0d8c3f6a3858492d87367` |
| 11 | `theorem` | [tendstoInMeasure_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-ae--cdd911b00a74cd00575d59a2.md) | 151 | `result-track:cdd911b00a74cd00575d59a2c6ee1d74771357cd892708c8d62b3990322ed836` |
| 12 | `theorem` | [exists_nat_measure_lt_two_inv](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/exists-nat-measure-lt-two-inv--119ea7a0ec73ea45a7a06ae9.md) | 165 | `result-track:119ea7a0ec73ea45a7a06ae9c8d3690b72cf2caafa5248b6630ac2c290230abe` |
| 13 | `def` | [seqTendstoAeSeqAux](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/seqtendstoaeseqaux--c80a8457638bc0c245036b23.md) | 174 | `declaration-track:c80a8457638bc0c245036b2337bb7969f79b4966806ed227d592404ee48c16c8` |
| 14 | `def` | [seqTendstoAeSeq](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/seqtendstoaeseq--2e4804402f9c20c890532487.md) | 178 | `declaration-track:2e4804402f9c20c8905324877ef060ed89be3613b025160d8e5bccc6a8d0c605` |
| 15 | `theorem` | [seqTendstoAeSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/seqtendstoaeseq-succ--d27fdefe2987bc9ab87f1ed4.md) | 182 | `result-track:d27fdefe2987bc9ab87f1ed4908691b296ba4cde11f91585f11a544c1c7a04b0` |
| 16 | `theorem` | [seqTendstoAeSeq_spec](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/seqtendstoaeseq-spec--ea608ed17095257059acf334.md) | 187 | `result-track:ea608ed17095257059acf334535a7319eff6d1da6bda635dec94488aff439d08` |
| 17 | `theorem` | [seqTendstoAeSeq_strictMono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/seqtendstoaeseq-strictmono--9d0433a5e438bdda68bae687.md) | 195 | `result-track:9d0433a5e438bdda68bae687540d12e9bf227fd60686c575a11d1aa8eab768a7` |
| 18 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--e3ab47ae805372bf5c796b75.md) | 205 | `result-track:e3ab47ae805372bf5c796b75ee3c52aa4ff85b3bf6203aa6cc179597abdc74d6` |
| 19 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop--ea3a134e796ca70d3e87b676.md) | 253 | `result-track:ea3a134e796ca70d3e87b67620b539f6e13bb60676f071d9bcf47f5b8de9d438` |
| 20 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--2b6acab986757e12ef397b28.md) | 259 | `result-track:2b6acab986757e12ef397b288acc82aadfcba77169d9b4d563ffda7220a53301` |
| 21 | `theorem` | [exists_seq_tendstoInMeasure_atTop_iff](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/exists-seq-tendstoinmeasure-attop-iff--dc8cdfcc0f79c7cd91abff16.md) | 268 | `result-track:dc8cdfcc0f79c7cd91abff1646371f0f42a694378ca81a923f72b0c01f9f8b36` |
| 22 | `theorem` | [tendstoInMeasure_ae_unique](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-ae-unique--a099369582ecfa3a7685da0c.md) | 295 | `result-track:a099369582ecfa3a7685da0c00e097aef1fddb0ad395326275df41cc17346f84` |
| 23 | `theorem` | [TendstoInMeasure.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-aemeasurable--da777f09001b8638ee17655c.md) | 309 | `result-track:da777f09001b8638ee17655c0fb520e57ff74bb73b01d3252310d1d3b8af7059` |
| 24 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-of-stronglymeasurable--0f795f4152e0208fd9d7ec4d.md) | 324 | `result-track:0f795f4152e0208fd9d7ec4d45e3091ac19c16001b7c4a200d2ccc118a16d6b4` |
| 25 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-of-ne-top--eca91ac3e76867fe7116b35f.md) | 349 | `result-track:eca91ac3e76867fe7116b35fe84dca215a1c4ef7d56e68748ea3983aabfd4aa6` |
| 26 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-top--129f56d3724d6262d32ad429.md) | 362 | `result-track:129f56d3724d6262d32ad42961fff18b2b38def0510780ef32f9fab7c4193511` |
| 27 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm--63869d603cfc26668917ed05.md) | 384 | `result-track:63869d603cfc26668917ed05fd12ed30b82224a72e9bdd787f90ccce334b1bd5` |
| 28 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/declarations/tendstoinmeasure-of-tendsto-lp--ac61739fa89b5f6b020745f5.md) | 393 | `result-track:ac61739fa89b5f6b020745f5a5874e8a9f9b5dbd8ca2a69caf9b5985f322eb6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
