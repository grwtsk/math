# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DiscrepancyTrace.Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b139de789c489fa15dd0881594b1c165e6988423",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b139de789c489fa15dd0881594b1c165e6988423`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.ArithmeticEnhancement` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantProjection](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/invariantprojection--9caee2d13b9a49e1f34b8d2f.md) | 21 | `declaration-track:9caee2d13b9a49e1f34b8d2f830582e837c3f1480c3708fd6474d91701e9452e` |
| 2 | `inductive` | [TraceFormulaKind](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/traceformulakind--7f007958b8811ba510e39e58.md) | 27 | `declaration-track:7f007958b8811ba510e39e58796529283b2d3ccb163ab57be1533f89f9696abf` |
| 3 | `inductive` | [TraceFormulaAuthority](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/traceformulaauthority--0d3d00cdc17904c827305460.md) | 37 | `declaration-track:0d3d00cdc17904c82730546003f4a5f06f1ba330689f0000e3c0294bdf954d3f` |
| 4 | `structure` | [ExactDiscrepancyTrace](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/exactdiscrepancytrace--23053ba910284a9b7e487fc2.md) | 57 | `declaration-track:23053ba910284a9b7e487fc24a615377457b69733d88dd3e109d78839064bf6a` |
| 5 | `def` | [invariantBias](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/invariantbias--7d70bc3f5104409f1409026f.md) | 81 | `declaration-track:7d70bc3f5104409f1409026fc4db9f8525c7a53b1a2dada1e3312d1fb284b687` |
| 6 | `def` | [centeredDiscrepancy](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/centereddiscrepancy--9dfaab3ad04964edfa92a85d.md) | 87 | `declaration-track:9dfaab3ad04964edfa92a85d08c969e1be0b24a8db4e2f793c815cdd39dd49d0` |
| 7 | `theorem` | [centered_eq_spectral_sum_add_remainder](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/centered-eq-spectral-sum-add-remainder--725b8a21712ef816fe7641d1.md) | 93 | `result-track:725b8a21712ef816fe7641d18583a4ea8abfe6341f143421718f4a7eb838ef8f` |
| 8 | `theorem` | [project_centeredDiscrepancy_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/declarations/project-centereddiscrepancy-eq-zero--248f67cb2a57be4752f9f477.md) | 121 | `result-track:248f67cb2a57be4752f9f4773d14ebdeac5bb3869ca8d556259d962725149640` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
