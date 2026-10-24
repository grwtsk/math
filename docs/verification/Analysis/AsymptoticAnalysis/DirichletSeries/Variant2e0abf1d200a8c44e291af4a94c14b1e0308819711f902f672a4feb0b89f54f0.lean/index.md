# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.DirichletSeries.Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f9f526e6c68edfc3f997ce40594b36f583ab46e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f9f526e6c68edfc3f997ce40594b36f583ab46e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletTermRealCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichlettermrealcoeff--dd1863c8a3cf35892609135f.md) | 25 | `declaration-track:dd1863c8a3cf35892609135fe9bb3b3d4a27cf29c86f81cc02c8ba681fd9905b` |
| 2 | `def` | [dirichletTermComplexCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichlettermcomplexcoeff--4dc630a465f23c5de331a3d2.md) | 31 | `declaration-track:4dc630a465f23c5de331a3d225eafa826350964bd4caad7bd2b552c4dc6d9c83` |
| 3 | `def` | [DirichletAbsSummableReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletabssummablereal--8ca790500de61bb832c05ba1.md) | 37 | `declaration-track:8ca790500de61bb832c05ba14195611e77f0771749ee398344420175996cb6a5` |
| 4 | `def` | [DirichletAbsSummableComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletabssummablecomplex--1659292908b1e66adbf1899e.md) | 42 | `declaration-track:1659292908b1e66adbf1899e1efdeca88eee1de4d98e70da17c4c1b1f98e4809` |
| 5 | `def` | [dirichletSeriesReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletseriesreal--ab7b6044d514d4a2e60dfadb.md) | 47 | `declaration-track:ab7b6044d514d4a2e60dfadb9fe58fd6b24991040ad5bb98a1947913db7d2438` |
| 6 | `def` | [dirichletSeriesComplex](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletseriescomplex--63f82672ead689c3d7407fe2.md) | 52 | `declaration-track:63f82672ead689c3d7407fe2365c221b8c71e2c9c5bb9141a8895a235a2d1c07` |
| 7 | `theorem` | [dirichletTermRealCoeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichlettermrealcoeff-zero--fdaba3376f9ba49b12341d05.md) | 57 | `result-track:fdaba3376f9ba49b12341d052b433d6e48dddbf8092554b9217554c146a719a9` |
| 8 | `theorem` | [dirichletTermComplexCoeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichlettermcomplexcoeff-zero--55130fb2a040e9df768a3339.md) | 63 | `result-track:55130fb2a040e9df768a3339e96683e7d0b128328c749e90c3102f2bc133a787` |
| 9 | `theorem` | [dirichletSeriesComplex_absSummable_of_bounded_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletseriescomplex-abssummable-of-bounded-coeff--c81b886843d2e1f3876e646b.md) | 69 | `result-track:c81b886843d2e1f3876e646b0a319a4d39a8aba6074925b58d344b406b64aa4a` |
| 10 | `theorem` | [dirichletSeriesComplex_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletseriescomplex-add--e07251acd1d6b8afa20dcfed.md) | 95 | `result-track:e07251acd1d6b8afa20dcfedf9506ed68c757057ca0d88a32b9d9f0556a195e0` |
| 11 | `theorem` | [dirichletSeriesComplex_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/declarations/dirichletseriescomplex-smul--045cea5c78b134a70ee91447.md) | 124 | `result-track:045cea5c78b134a70ee9144740fec823254cdcd53aa264f19575738db0fc4352` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
