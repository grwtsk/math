# Verification target: GRWTSK.Analysis.MeasureTheory.OperatorScoutStatements.Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90612edb066a403082035bc7ecddce1f02aed3f6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90612edb066a403082035bc7ecddce1f02aed3f6`.

Source path: `GRWTSK/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/fullh--ff0a8c99db231093e14c1fdd.md) | 20 | `declaration-track:ff0a8c99db231093e14c1fdd1c301ad3fd23640bc855c85a2f50ff9baea0b5db` |
| 2 | `def` | [fullShift](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/fullshift--9eae57361d5f2955ecee30ae.md) | 22 | `declaration-track:9eae57361d5f2955ecee30aee395c5cc61e2a76b701d4ccb23540f124aae0360` |
| 3 | `theorem` | [fullShift_ae](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/fullshift-ae--9a0d3be9cf63e8fc2074a26d.md) | 25 | `result-track:9a0d3be9cf63e8fc2074a26d606bc151297466cd19466711c793a21b860bbe90` |
| 4 | `theorem` | [fullShift_continuous](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/fullshift-continuous--2e6cd353f05df49760e7a26d.md) | 29 | `result-track:2e6cd353f05df49760e7a26d42f5b853fa9b55b3eaf2bf6dafb1c828b28f4c37` |
| 5 | `theorem` | [halfLine_zeroExtension_memLp](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/halfline-zeroextension-memlp--16dddef461c991b3e315bcc8.md) | 37 | `result-track:16dddef461c991b3e315bcc87bf9e810ef4c37c835f02368926088634da9afae` |
| 6 | `theorem` | [weighted_shift_integrable](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/weighted-shift-integrable--e37ef808ae8fbaa115c92b28.md) | 42 | `result-track:e37ef808ae8fbaa115c92b28aacb44cafacb142bd71a6a36d2287447387a4511` |
| 7 | `def` | [bochnerVector](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/bochnervector--15aeb687cc04e17a8b21eab4.md) | 52 | `declaration-track:15aeb687cc04e17a8b21eab4e45c9a12ac7fb9fb1d93363fe75b6f56efb800f3` |
| 8 | `theorem` | [bochnerVector_norm_le](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/bochnervector-norm-le--a585a1b14e334ac0ee0e68bf.md) | 54 | `result-track:a585a1b14e334ac0ee0e68bffed9058377f6ae248878e011c0bc482a7c379c0a` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--f47c4bb6f788b4c545dc700b.md) | 68 | `declaration-track:f47c4bb6f788b4c545dc700b7567cdf4dd90ec34a118ed81d6f2411b362c21f0` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--6eac0640955d4491da80e85b.md) | 69 | `declaration-track:6eac0640955d4491da80e85b265dace53a0865538eb59497633b0140983db990` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--9f5a82c96b0540c172c30eaf.md) | 71 | `declaration-track:9f5a82c96b0540c172c30eaf3e7d6812218e4dd497bc5943fc8ebf3da0a4458e` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--a18b406f7209c5f118637c4d.md) | 73 | `declaration-track:a18b406f7209c5f118637c4da6429d7c33548505bf3f2c4505105e3abad773a5` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--cf073e0d6794fe1c385954ef.md) | 74 | `declaration-track:cf073e0d6794fe1c385954ef31fc93134608405b9b9163fe1669fa3feea5e6d5` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--ab08631fed88ce310ae88935.md) | 76 | `declaration-track:ab08631fed88ce310ae8893562807f4d091260317f888a07c61c4887e4f0b79c` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--aeca7110c75bc26f6ed7b5f2.md) | 78 | `declaration-track:aeca7110c75bc26f6ed7b5f231a1ca2650b2c9adce0114d180b67f8459aec892` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/OperatorScoutStatements/Variant527178aa18f7ba74350fdc8e64ab29cc9db34bd10ee3707632fb97c9d82ac09a.lean/declarations/example--b2bc26affe7d131ad4463ea5.md) | 79 | `declaration-track:b2bc26affe7d131ad4463ea5670e08bd0a4fb0d268e5235617ce7af0c8ff2144` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
