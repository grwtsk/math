# Verification target: GRWTSK.Analysis.Attempt01.Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb8e8cb7b9213940073426d51c5c191b1730092f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/index.md) · [Full source](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb8e8cb7b9213940073426d51c5c191b1730092f`.

Source path: `GRWTSK/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/compactlaplace--12a161060f4dd98f563e801b.md) | 21 | `declaration-track:12a161060f4dd98f563e801b296ffc67aa6446febc951bababf952d7b9d004e6` |
| 2 | `def` | [primitiveTransform](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/primitivetransform--0541b884b9667e3dda050b3b.md) | 24 | `declaration-track:0541b884b9667e3dda050b3b83e997e7e9b9bb7bb2d00234e79862ca773a14f3` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/normalizedprimitivetransform--ce74c82f18d5c1b3cf9a4a27.md) | 26 | `declaration-track:ce74c82f18d5c1b3cf9a4a27c3d0b9e7ad68926fb3e777b5cf46d3007214d4de` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/compactlaplace-integrable--24d10eea24467c85878edb95.md) | 29 | `result-track:24d10eea24467c85878edb95f5812e98e68fc754e2f769fa2fa461dedc1aad1e` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/complex-weighted-derivative--2195b9f1586671faa0cc96a0.md) | 36 | `result-track:2195b9f1586671faa0cc96a093e8bed811f727e29ee050e29b212742dac8ee0a` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/actual-complex-pole-filter--8b7d3ac47febc6b814c97eb2.md) | 65 | `result-track:8b7d3ac47febc6b814c97eb249b3ad609f734a97a6de41ca388090b74c681082` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/primitive-transform-normalization--f5b849ff70f3ba831149b16d.md) | 92 | `result-track:f5b849ff70f3ba831149b16d82374364508c2011a483f9a179da4e55850539b8` |
| 8 | `theorem` | [boundary_transform_factored](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/boundary-transform-factored--96b55f1f01dc348dd3c4fd91.md) | 102 | `result-track:96b55f1f01dc348dd3c4fd91795b081bc9d1874d979b29a4a758ae7be6a7fdd6` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../mathematics/Analysis/Attempt01/Variantd709631427e1367a6eeeea742f1f72684bff376b01c28eb220fbda3df94ab549.lean/declarations/boundary-transform-factored-unnormalized--f64290c100f36002bf26b0ab.md) | 109 | `result-track:f64290c100f36002bf26b0ab4255f374815d53ce4037dbf551e49a296e9dbc08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
