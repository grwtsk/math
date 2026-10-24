# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WithLp.Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c6f05da11b8e649505b4fb0c86da848b6a18a3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c6f05da11b8e649505b4fb0c86da848b6a18a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.PiLp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiableWithinAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/differentiablewithinat-pilp--e7cdb3530078686df0c4f4c0.md) | 32 | `result-track:e7cdb3530078686df0c4f4c0ff143767686e7f5f7c7ed4bad913608b84b7bba2` |
| 2 | `theorem` | [differentiableAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/differentiableat-pilp--5a718ecefe1172e8c895ca8e.md) | 38 | `result-track:5a718ecefe1172e8c895ca8e087c8c362473b695b76711414fb620a84e64ffb8` |
| 3 | `theorem` | [differentiableOn_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/differentiableon-pilp--e0e356d3b0cb8b8af9fdb5df.md) | 43 | `result-track:e0e356d3b0cb8b8af9fdb5dff2681a426dba1220711c24091bfe485d603e7955` |
| 4 | `theorem` | [differentiable_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/differentiable-pilp--df4cf85b22e57188f3d8c66f.md) | 48 | `result-track:df4cf85b22e57188f3d8c66fb274559fdcb7f574d557b3a0c7534dc4136f0be6` |
| 5 | `theorem` | [hasStrictFDerivAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasstrictfderivat-pilp--048149bb762d6090c4f9a45b.md) | 52 | `result-track:048149bb762d6090c4f9a45b20dab506efe2b31467cc0beeb42fb5ed4b261e85` |
| 6 | `theorem` | [hasFDerivWithinAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasfderivwithinat-pilp--fe3b822b133bf73b0f9f25fc.md) | 58 | `result-track:fe3b822b133bf73b0f9f25fcaa1917d36e3db405436cf23d5c56f4158975ca6f` |
| 7 | `theorem` | [hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasstrictfderivat-equiv--4a872d8eb41798c69e4030e9.md) | 66 | `result-track:4a872d8eb41798c69e4030e995d04c52c1b672fb2bfd01152b5bdc7fba3234a3` |
| 8 | `theorem` | [hasStrictFDerivAt_equiv_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasstrictfderivat-equiv-symm--67f49b92a08d3a758bc1bfff.md) | 71 | `result-track:67f49b92a08d3a758bc1bfffb8cb18fe4f27b2f1f5a8f546b1b9367bbc29ba77` |
| 9 | `theorem` | [hasStrictFDerivAt_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasstrictfderivat-apply--510083f7d54b3a2d39251ff3.md) | 76 | `result-track:510083f7d54b3a2d39251ff3b86c9abe30bbb295b4ba9e48d643ef17c0cb1d6f` |
| 10 | `theorem` | [hasFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasfderivat-equiv--efa93c9edf74b66e96249e4d.md) | 80 | `result-track:efa93c9edf74b66e96249e4d8f53e8122360a356214835f503c0cd612241bd0e` |
| 11 | `theorem` | [hasFDerivAt_equiv_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasfderivat-equiv-symm--2892f144ef101465a6582df0.md) | 85 | `result-track:2892f144ef101465a6582df032d61ba2e07482ab7c53c79c0530dca19131072c` |
| 12 | `theorem` | [hasFDerivAt_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variantdca32050a2f32c5823f0fa2342dd80bfdd37ec67a34f1013d6aae3fc368ff106.lean/declarations/hasfderivat-apply--7e4cddb211a077dec7d7b102.md) | 90 | `result-track:7e4cddb211a077dec7d7b10299b4aa1a84a2ec3f16c1a27988ea1b3b41c2a972` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
