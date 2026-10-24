# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2a885d1694b6626480bed67067b9b6ca12a4f82",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2a885d1694b6626480bed67067b9b6ca12a4f82`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.DivergenceTheorem` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Integrability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_aux₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-aux--da74a80483e9514a85837a32.md) | 109 | `result-track:da74a80483e9514a85837a32b4f88f9146977a0e77ef548cac3fbd39a4fb4972` |
| 2 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable_aux₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-divergence-of-hasfderivat-off-countable-aux--6fab88e5194af0c5114978d7.md) | 142 | `result-track:6fab88e5194af0c5114978d7e6d38f9a2dfb9d3f934315655352d846e23f4c49` |
| 3 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-divergence-of-hasfderivat-off-countable--83f03f7324ffce97ea996554.md) | 267 | `result-track:83f03f7324ffce97ea996554c226d756bab4b4706d98df2dd859f220d2ac851e` |
| 4 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-divergence-of-hasfderivat-off-countable--2ce15ba474f10a03bc1285b9.md) | 301 | `result-track:2ce15ba474f10a03bc1285b936628830e769cbfd1458152e3c9a3c83fcb404a3` |
| 5 | `theorem` | [integral_divergence_of_hasFDerivAt_off_countable_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-divergence-of-hasfderivat-off-countable-of-equiv--50be37144a238cba096e80f4.md) | 322 | `result-track:50be37144a238cba096e80f4f5aedff154b98553ffbcc309a054d6461b903c9b` |
| 6 | `theorem` | [integral_eq_of_hasDerivAt_off_countable_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-eq-of-hasderivat-off-countable-of-le--d473778a0113eebf5a097c5b.md) | 386 | `result-track:d473778a0113eebf5a097c5b20b09cf7727695cbd62f9dc8567d10dd096299b2` |
| 7 | `theorem` | [integral_eq_of_hasDerivAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-eq-of-hasderivat-off-countable--d4179c2480facfe926a888de.md) | 426 | `result-track:d4179c2480facfe926a888dee1f2ff6f061916516b31ee31d18abcf7404021a0` |
| 8 | `theorem` | [integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral-divergence-prod-icc-of-hasfderivat-off-countable-of-le--cfd35119118030fc646fb2db.md) | 450 | `result-track:cfd35119118030fc646fb2dbbf53d2a0ae3ed636b060da9a8c34c3d88bd770ee` |
| 9 | `theorem` | [integral2_divergence_prod_of_hasFDerivAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/declarations/integral2-divergence-prod-of-hasfderivat-off-countable--324871997b8d5801b41670af.md) | 504 | `result-track:324871997b8d5801b41670af3d43c022c82f51cae352dee50bc6ec63ec55ff0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
