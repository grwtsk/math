# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceNativeDirichletMoments.Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e6202aba247205d916a89ab979000062b3e8000",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e6202aba247205d916a89ab979000062b3e8000`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/dirichletmoment--447f55a2ff4ee885be082796.md) | 15 | `declaration-track:447f55a2ff4ee885be082796bb3d9daffd5143e358cef8b21ea7e12ac31d9724` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/dirichletmoment-nonneg--ff1c6207339e1e58f2642d62.md) | 19 | `result-track:ff1c6207339e1e58f2642d6234f51e507420b51e41863b94d0c180e860bd7dc0` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/mangoldt-abscissa-le-one--4934d65da41521b6d153b537.md) | 26 | `result-track:4934d65da41521b6d153b537f8907db3550f976c85f6812ba4aa2af6190cf8d6` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/iterate-logmul-eq--4070eca66974df40f510d78a.md) | 32 | `result-track:4070eca66974df40f510d78ae146e99ae1d52ced41882d74ce85299f8c5fe191` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/dirichletmoment-summable--1c56f68e198f0a1caed15808.md) | 41 | `result-track:1c56f68e198f0a1caed1580844da64a85d8641702cab4303a08956b2bee705f2` |
| 6 | `theorem` | [log_moment_series_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/log-moment-series-eq--d2c02023bf5c3451192df6d3.md) | 63 | `result-track:d2c02023bf5c3451192df6d3b190821db09c6e4290f1445b12ccd043a8648862` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/native-series-hasderivat-two--7781a3cd09f0c6c0268c8cfb.md) | 91 | `result-track:7781a3cd09f0c6c0268c8cfb054aeeda522872bcf6c31d6ab6e45fee0f09f67a` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/native-series-second-derivative-two--e4b000d8f3f0939fd80b0fb5.md) | 102 | `result-track:e4b000d8f3f0939fd80b0fb58d16a626871a8ea4bcc00367fc68f6987bbac3a3` |
| 9 | `theorem` | [combinedMultiplier_eventually_eq_series](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/combinedmultiplier-eventually-eq-series--a0f56f7cb7d711e2372bdceb.md) | 111 | `result-track:a0f56f7cb7d711e2372bdceb8a8472e39c8607566b105cc4d8625c975cf17b22` |
| 10 | `theorem` | [combinedMultiplier_hasDerivAt_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/combinedmultiplier-hasderivat-two--24e674d6d615697e5cf462fb.md) | 120 | `result-track:24e674d6d615697e5cf462fbbd2ac9d7af77e15584ef6dd34c4a60d9955710d4` |
| 11 | `theorem` | [combinedMultiplier_second_derivative_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/combinedmultiplier-second-derivative-two--b973f9dbce610b82a3a6e3ec.md) | 125 | `result-track:b973f9dbce610b82a3a6e3eca93aa320dc7f9f2b04cec3bd534938c315fe165e` |
| 12 | `theorem` | [dirichletMoment_zero_eq_majorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/dirichletmoment-zero-eq-majorant--3b540d281a7a217902919792.md) | 131 | `result-track:3b540d281a7a2179029197923e405fa9bed86765ba97ff8756f32c2b2b4ae81a` |
| 13 | `theorem` | [combinedMultiplier_two_eq_majorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/combinedmultiplier-two-eq-majorant--c19c73853527b905fd43dbf7.md) | 138 | `result-track:c19c73853527b905fd43dbf7fde1f022f06549b3bcbfdf299373d7f0a0ba508a` |
| 14 | `theorem` | [dirichletMoment_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantff648a23884ca84692e4934dee397c8d335180af11a4087a2198d043bea75693.lean/declarations/dirichletmoment-one-pos--3fff9c005e21f2d0a1753d4a.md) | 147 | `result-track:3fff9c005e21f2d0a1753d4af00a0c37c0fe7bf660ad731bdb960f28a3cd752d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
