# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail.Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a31a1cd448e348ec087e2748ef668ba1934921",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a31a1cd448e348ec087e2748ef668ba1934921`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail--2c9ceac5126290d34f5e97c1.md) | 11 | `declaration-track:2c9ceac5126290d34f5e97c1ead15fffae1b1d25f73a2634ae25550849e1e32b` |
| 2 | `theorem` | [integrableOn_Ici_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integrableon-ici-of-continuous--e33a2c43ed4934c7bd751042.md) | 13 | `result-track:e33a2c43ed4934c7bd75104201375c3ea76cb25a55837b36ed6a305f47515d8f` |
| 3 | `theorem` | [integralTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail-eq-sub--03886ee414ce885e8105fb89.md) | 24 | `result-track:03886ee414ce885e8105fb89448a89771359c473c36b98d55b87baeb1d0d66f4` |
| 4 | `theorem` | [hasDerivAt_integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/hasderivat-integraltail--663f31d5cf5db932ddfbd3f7.md) | 32 | `result-track:663f31d5cf5db932ddfbd3f764925f2efecdb63ffd96a2e63c58af7e53aad916` |
| 5 | `theorem` | [integralTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail-positive--fab57d2009b6b89915b4e2d9.md) | 42 | `result-track:fab57d2009b6b89915b4e2d92c0b323128b7ad72cfa0ba9063edeea84ca833ed` |
| 6 | `theorem` | [logSlope_cross_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/logslope-cross-nonnegative--5219e5831fc118a7b3ca865b.md) | 56 | `result-track:5219e5831fc118a7b3ca865b3d57616d92552bd2c7797083755385afa6c4d32a` |
| 7 | `theorem` | [integral_deriv_Ici_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integral-deriv-ici-eq-neg--702c3e832bf878e3dbf44970.md) | 65 | `result-track:702c3e832bf878e3dbf44970f726a9d61c6c542cc0fa4f3df92e501717caf271` |
| 8 | `theorem` | [integralTail_logSlope_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail-logslope-identity--db95ba64902a4fd170f0ce12.md) | 75 | `result-track:db95ba64902a4fd170f0ce125ccea7279c3ccd3548bbb7a43c34659193b192d1` |
| 9 | `theorem` | [integralTail_logSlope_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail-logslope-nonnegative--a717d06cb5d55d97be2a4181.md) | 88 | `result-track:a717d06cb5d55d97be2a41810dc7df2c9f76438ab16bcd21f2ff9b0c38111b4a` |
| 10 | `theorem` | [hasDerivAt_integralTail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/hasderivat-integraltail-ratio--4143435635bc4977c11b7c98.md) | 100 | `result-track:4143435635bc4977c11b7c982c6df8683af607e53488f8e8520c56c4513e9021` |
| 11 | `theorem` | [integralTail_ratio_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail-ratio-antitone--796a31ccfe9d3ad35034ea5e.md) | 107 | `result-track:796a31ccfe9d3ad35034ea5eaf00abaf3d399d9c538af8bdd98c7e23e0411fd4` |
| 12 | `theorem` | [integralTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049.lean/declarations/integraltail-logslope-antitone--069c2d6f58656a2bd9735dce.md) | 126 | `result-track:069c2d6f58656a2bd9735dce2b4a3fec5b7e1c7c924d09f1e5e5ed5b1ae7e495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
