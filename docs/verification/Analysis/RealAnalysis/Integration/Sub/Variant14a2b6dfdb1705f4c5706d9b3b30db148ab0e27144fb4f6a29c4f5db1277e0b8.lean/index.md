# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Sub.Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8e76541bd486034955db2673d8981954523e58",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8e76541bd486034955db2673d8981954523e58`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-sub--c4ac2f20e2c9b3aec4a38c28.md) | 22 | `result-track:c4ac2f20e2c9b3aec4a38c28937f1bb6682ad6c748e7fa6feeb0962b8ac5f54f` |
| 2 | `theorem` | [lintegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-sub--c74a60f560d90da12bd246e4.md) | 28 | `result-track:c74a60f560d90da12bd246e4e255330745c99798a79afae228a787622cd65b4f` |
| 3 | `theorem` | [lintegral_sub_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-sub-le--4e9df537402167f38d579baa.md) | 32 | `result-track:4e9df537402167f38d579baa92c24fb8700dc00b743e1b47d56ddaa41df35161` |
| 4 | `theorem` | [lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-sub-le--d4590dabffb270350ba2d491.md) | 42 | `result-track:d4590dabffb270350ba2d4914dd8fb6438334f3d303813fb65cf97ee04978c02` |
| 5 | `theorem` | [lintegral_iInf_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-iinf-ae--f7cc68288f7ba3c1b9f091c9.md) | 47 | `result-track:f7cc68288f7ba3c1b9f091c93a0290c91daed39fb32c29359f29cf711713433d` |
| 6 | `theorem` | [lintegral_iInf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-iinf--2370e8104e403b9f1db92045.md) | 78 | `result-track:2370e8104e403b9f1db92045ae47a3d4b0833728a5ff458469b2de2e8c636f5f` |
| 7 | `theorem` | [lintegral_iInf'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-iinf--3f75f7b4e53a15991cac59fd.md) | 82 | `result-track:3f75f7b4e53a15991cac59fd193f2840684ef37b52f49827ab12f895696337c4` |
| 8 | `theorem` | [lintegral_iInf_directed_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-iinf-directed-of-measurable--fdb4d05d93459d699bf68de1.md) | 103 | `result-track:fdb4d05d93459d699bf68de1042bf11cd831e8d88fbdc4b92d52550f49b6620f` |
| 9 | `theorem` | [lintegral_tendsto_of_tendsto_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/lintegral-tendsto-of-tendsto-of-antitone--6ef4a73d23b74b4e52224b99.md) | 129 | `result-track:6ef4a73d23b74b4e52224b993dc4b07e186ff499bc2f1b5b9ad725ac2ef4081a` |
| 10 | `theorem` | [exists_setLIntegral_compl_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/exists-setlintegral-compl-lt--889de92357aff9fb74769702.md) | 154 | `result-track:889de92357aff9fb74769702ed0c12f1976be464ab8e11e988b44a410d5aba19` |
| 11 | `theorem` | [exists_measurable_le_setLIntegral_eq_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/declarations/exists-measurable-le-setlintegral-eq-of-integrable--0bc117cbd9c2531f0165dfe3.md) | 182 | `result-track:0bc117cbd9c2531f0165dfe330397d7616bea9738826f485c04ba5344d21efa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
