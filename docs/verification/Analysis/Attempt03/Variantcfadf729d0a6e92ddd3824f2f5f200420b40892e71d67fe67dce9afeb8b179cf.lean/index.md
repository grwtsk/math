# Verification target: GRWTSK.Analysis.Attempt03.Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c10bad59a9ecb0931446c8b41ff22112ad2ae5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/index.md) · [Full source](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c10bad59a9ecb0931446c8b41ff22112ad2ae5`.

Source path: `GRWTSK/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean.json)

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
| 1 | `def` | [compactLaplace](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/compactlaplace--547c9cad507c8f20d1bd314a.md) | 21 | `declaration-track:547c9cad507c8f20d1bd314ad45f7d4517b239b12603a1bb7ccf992148d5325e` |
| 2 | `def` | [primitiveTransform](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/primitivetransform--473c33be06085d93fc112b64.md) | 24 | `declaration-track:473c33be06085d93fc112b644edc869cc6752ec547cb5b34eadd727d418dc3e3` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/normalizedprimitivetransform--94e1625ab183618a69115fe1.md) | 26 | `declaration-track:94e1625ab183618a69115fe102d7d10cc5c0984a7807709047c5140d9ff89471` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/compactlaplace-integrable--adc27fe77f6f198d8ebf6177.md) | 29 | `result-track:adc27fe77f6f198d8ebf6177228930f21e7fa7c2914896ab42e9efffd93d2f0b` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/complex-weighted-derivative--71f5d33a64d00c8d23da876f.md) | 36 | `result-track:71f5d33a64d00c8d23da876f54c005ce0f8788622ab57cc69ecfb9893256c372` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/actual-complex-pole-filter--93ef2411148cb450130e9d8d.md) | 65 | `result-track:93ef2411148cb450130e9d8d9c8da823d2ccd83fa371ece25cf3174f0bb5a4d7` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/primitive-transform-normalization--6dddc3105b47e666a9fbfdb6.md) | 92 | `result-track:6dddc3105b47e666a9fbfdb6dfc405355264ebee77f1f20fbd9919fa72642d8c` |
| 8 | `theorem` | [boundary_transform_factored](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/boundary-transform-factored--97422e1d4a500fce770fa165.md) | 102 | `result-track:97422e1d4a500fce770fa165396ba14a9ba55a7b0f6da0cfb89ceac5d55953ea` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../mathematics/Analysis/Attempt03/Variantcfadf729d0a6e92ddd3824f2f5f200420b40892e71d67fe67dce9afeb8b179cf.lean/declarations/boundary-transform-factored-unnormalized--b6afce2f48b9dbc9cc9ddfc5.md) | 109 | `result-track:b6afce2f48b9dbc9cc9ddfc5b82ae527bf2f1cb3ba69189e71741d7286765793` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
