# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinDomainAttempt01.Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3843f03931fd9d8bb87491cff58467c9fb8f423e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3843f03931fd9d8bb87491cff58467c9fb8f423e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMuntz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexmuntz--107a003db1b93cf47d4fc323.md) | 24 | `declaration-track:107a003db1b93cf47d4fc323aee942a4023a69eaea1e06b3774570fa03740781` |
| 2 | `def` | [complexSource](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexsource--0a890eaffda371dd42e8c3ff.md) | 26 | `declaration-track:0a890eaffda371dd42e8c3ffdf09df334de14e7847bb60eb7fd8a194c961a5b0` |
| 3 | `theorem` | [complexMuntz_measurable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexmuntz-measurable--52c89d3d04102c6331dcd258.md) | 28 | `result-track:52c89d3d04102c6331dcd25898c47877ed7a33adeaba3095d4e67029822b5d5f` |
| 4 | `theorem` | [complexMuntz_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexmuntz-integrable--1b877155e0e46cb24a1845e4.md) | 32 | `result-track:1b877155e0e46cb24a1845e44f0f1672f44e08a39c0f35a5a752cf1bc61c36c9` |
| 5 | `theorem` | [complexMuntz_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexmuntz-top-decay--1b7fda0933cc996e3d16d329.md) | 50 | `result-track:1b7fda0933cc996e3d16d329aed3d82cdffa7debe8f3d6a885739c72a04a4f16` |
| 6 | `theorem` | [complexMuntz_zero_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexmuntz-zero-bound--915c324279c48a73dad0fc6f.md) | 56 | `result-track:915c324279c48a73dad0fc6f06b5a75ef5ce5e32b75940c14fe0395ab91e9944` |
| 7 | `theorem` | [actual_muntz_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-muntz-mellinconvergent--6ac36b1494bdb1ad395b628a.md) | 64 | `result-track:6ac36b1494bdb1ad395b628ac40418977357dfc9b763126c8c1a7b4bf8913573` |
| 8 | `theorem` | [actual_muntz_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-muntz-mellin-hasderivat--ee5c317384139b1c73eedbe2.md) | 71 | `result-track:ee5c317384139b1c73eedbe2e6f5aac4706399c1fcdf907d44739f0a41ad10de` |
| 9 | `theorem` | [actual_muntz_mellin_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-muntz-mellin-analytic--70f5298cb6f14e51e6e3cee9.md) | 80 | `result-track:70f5298cb6f14e51e6e3cee92dcffec7931d48abed59005b64a19a668f2e904f` |
| 10 | `theorem` | [complexSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexsource-integrable--563823147efe9a364cf9f9c5.md) | 86 | `result-track:563823147efe9a364cf9f9c5b3105602ce8a14cf6dbed1ff5d092a98dcc3085f` |
| 11 | `theorem` | [complexSource_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexsource-top-decay--812712839625123e5232c1c9.md) | 90 | `result-track:812712839625123e5232c1c96a40493bc20159811802bebc3c3acac18283bc11` |
| 12 | `theorem` | [complexSource_zero_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/complexsource-zero-decay--ec31558ca7c07586801890a6.md) | 96 | `result-track:ec31558ca7c07586801890a6945526ab8d5f6e44c124333133efab27c2c1413e` |
| 13 | `theorem` | [actual_source_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-source-mellinconvergent--dd8a3c34be77a97b2e6c4d14.md) | 104 | `result-track:dd8a3c34be77a97b2e6c4d143b2019ff56e16c64dca98966ad4d32292ec2ac66` |
| 14 | `theorem` | [actual_source_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-source-mellin-hasderivat--31e9b1686fee4e6d65aa35a2.md) | 111 | `result-track:31e9b1686fee4e6d65aa35a29e76f4fd280108e2b08c64c79a7551ce95917330` |
| 15 | `theorem` | [actual_source_mellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-source-mellin-differentiable--521652206aa63feff6d1ecbf.md) | 120 | `result-track:521652206aa63feff6d1ecbffc5a5fc757fd15b23559a676e4f6b2d184adeb52` |
| 16 | `theorem` | [actual_source_mellin_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant15be9e5c5e65a1bbe2082a8a18b163e08a6a7eb5e994d9aa83fa06616ff1bb23.lean/declarations/actual-source-mellin-one--895a835b387ebda261881d86.md) | 124 | `result-track:895a835b387ebda261881d866ebccd227e5294f96185fa3720d5073393dbedb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
