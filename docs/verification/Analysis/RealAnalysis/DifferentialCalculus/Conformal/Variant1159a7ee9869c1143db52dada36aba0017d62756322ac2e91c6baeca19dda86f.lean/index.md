# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Conformal.Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3928db4f5954d05982044e0b8f549912181b28c8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3928db4f5954d05982044e0b8f549912181b28c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.RestrictScalars` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Isometry` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isConformalMap_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/isconformalmap-conj--c333c9dc80a5e69e8eda9784.md) | 64 | `result-track:c333c9dc80a5e69e8eda97847aff6bb297d7a1c74e24ebd4fe5968f780e7c67e` |
| 2 | `theorem` | [isConformalMap_complex_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/isconformalmap-complex-linear--36a2b251a42383dd1a07e80b.md) | 71 | `result-track:36a2b251a42383dd1a07e80b0301314749c12cc54ebed1b667f2430863fb2ce2` |
| 3 | `theorem` | [isConformalMap_complex_linear_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/isconformalmap-complex-linear-conj--f767660b8d719c9c563ab03e.md) | 86 | `result-track:f767660b8d719c9c563ab03e0d344574be1971feb6d3b585b707a1cb8f0ab7c7` |
| 4 | `theorem` | [IsConformalMap.is_complex_or_conj_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/isconformalmap-is-complex-or-conj-linear--03d93c24f7c74e08f085494c.md) | 98 | `result-track:03d93c24f7c74e08f085494ce67d2c2167cfe0329c6f60294403f28bd8c6e3c4` |
| 5 | `theorem` | [isConformalMap_iff_is_complex_or_conj_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/isconformalmap-iff-is-complex-or-conj-linear--42079eff59b6e44b535a4dea.md) | 115 | `result-track:42079eff59b6e44b535a4deab2534b508dad77e0cc31713df427882629d02684` |
| 6 | `theorem` | [DifferentiableAt.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/differentiableat-conformalat--582d684fc73ffbade191f7c8.md) | 145 | `result-track:582d684fc73ffbade191f7c8dfd9caa007b9a38ce8866b22bf64e5f70fcc6d80` |
| 7 | `theorem` | [conformalAt_iff_differentiableAt_or_differentiableAt_comp_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant1159a7ee9869c1143db52dada36aba0017d62756322ac2e91c6baeca19dda86f.lean/declarations/conformalat-iff-differentiableat-or-differentiableat-comp-conj--4f0f30976f2511adf1d112a1.md) | 153 | `result-track:4f0f30976f2511adf1d112a1bde46869066ad6cfbe002649e586f93bd38c6099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
