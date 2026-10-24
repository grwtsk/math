# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RestrictScalars.Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3aa7cd8361c1f2b9dd581e2ecb956b2a0e17180",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3aa7cd8361c1f2b9dd581e2ecb956b2a0e17180`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictFDerivAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/hasstrictfderivat-restrictscalars--d63234dfc30528026583de38.md) | 51 | `result-track:d63234dfc30528026583de38849e7edf06c48c86e9bf0a58aa7bbc5b48aadc0a` |
| 2 | `theorem` | [HasFDerivAtFilter.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/hasfderivatfilter-restrictscalars--18b12300a88918cbccd0eb0e.md) | 55 | `result-track:18b12300a88918cbccd0eb0eec81317594e29865d6b78ab4a5a05c06ad81bb22` |
| 3 | `theorem` | [HasFDerivAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/hasfderivat-restrictscalars--33f7e071af9227ae36e51b8a.md) | 60 | `result-track:33f7e071af9227ae36e51b8abda5e9acf3ae7af377ab9d015b8bcd11d70eab78` |
| 4 | `theorem` | [HasFDerivWithinAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/hasfderivwithinat-restrictscalars--f435cf4efc4c2599d43756f4.md) | 65 | `result-track:f435cf4efc4c2599d43756f4fe6fd15573ffb8677ecbb88e448703768deffdb1` |
| 5 | `theorem` | [DifferentiableAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiableat-restrictscalars--1ea5c58520065e89753a9caa.md) | 70 | `result-track:1ea5c58520065e89753a9caa1f8edee94b9dcbdcfaf10f1515d42d468c58000f` |
| 6 | `theorem` | [DifferentiableWithinAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiablewithinat-restrictscalars--b96eb1e4bd977b8bbaf6d262.md) | 74 | `result-track:b96eb1e4bd977b8bbaf6d262d4fda09ef73a682855205c82e56c5f840789798f` |
| 7 | `theorem` | [DifferentiableOn.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiableon-restrictscalars--b07d4b257e3c79c38a2f3d3d.md) | 79 | `result-track:b07d4b257e3c79c38a2f3d3dac1a4e855011158f2899bf3583778ee95d6b2ac0` |
| 8 | `theorem` | [Differentiable.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiable-restrictscalars--dc90f2bf62e547a3a0ed7284.md) | 83 | `result-track:dc90f2bf62e547a3a0ed7284996ddfd467489bc44cfb58e32f49718fe9542644` |
| 9 | `theorem` | [HasFDerivWithinAt.of_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/hasfderivwithinat-of-restrictscalars--94fa5028ebb037e834e89abe.md) | 87 | `result-track:94fa5028ebb037e834e89abe6e0a9b79ce037fac102206649bda605469332719` |
| 10 | `theorem` | [hasFDerivAt_of_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/hasfderivat-of-restrictscalars--cc95f7501fb55d69ea449e96.md) | 93 | `result-track:cc95f7501fb55d69ea449e964d80e57bea32e90c9f2eace4ea756d4377ffea7d` |
| 11 | `theorem` | [DifferentiableAt.fderiv_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiableat-fderiv-restrictscalars--f13449ec0f5f76ed5f7e16df.md) | 98 | `result-track:f13449ec0f5f76ed5f7e16df9f4a68d20d748b14126e90c1bf42493f7c6b91bd` |
| 12 | `theorem` | [differentiableWithinAt_iff_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiablewithinat-iff-restrictscalars--b229d822b9933a0740ae2daf.md) | 102 | `result-track:b229d822b9933a0740ae2daf4073e507e030a2e5976793baccf6dcfeef16f780` |
| 13 | `theorem` | [differentiableAt_iff_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variante881c5f24c58e20122cf388367ac7698efc16782d159ce85763a6fe834adfd7c.lean/declarations/differentiableat-iff-restrictscalars--cced6fa9984f22440503d887.md) | 111 | `result-track:cced6fa9984f22440503d887b9426656a1784572045ff551d4ac0eb313ba28b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
