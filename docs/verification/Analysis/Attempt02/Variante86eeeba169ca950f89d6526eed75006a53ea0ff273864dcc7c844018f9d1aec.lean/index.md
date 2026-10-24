# Verification target: GRWTSK.Analysis.Attempt02.Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e253359ce7a75291ec3ac93d2afb4d68d0a5719c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/index.md) · [Full source](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e253359ce7a75291ec3ac93d2afb4d68d0a5719c`.

Source path: `GRWTSK/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean.json)

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
| 1 | `def` | [compactLaplace](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/compactlaplace--a759790b2d58287f266c3cb3.md) | 21 | `declaration-track:a759790b2d58287f266c3cb3a6d3dbcaddba7c50b4e57a440780cfa9989af97a` |
| 2 | `def` | [primitiveTransform](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/primitivetransform--09f43f750a1be9e4302654bf.md) | 24 | `declaration-track:09f43f750a1be9e4302654bff02858233b2dfb47fbb03cd4910b3e45f4eed51f` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/normalizedprimitivetransform--b87732539be2cd963a5dd878.md) | 26 | `declaration-track:b87732539be2cd963a5dd878cbcdaaf1b61e43444e15b14825a9a3baa9c8b5e7` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/compactlaplace-integrable--a4311adbb9651fc8241b10c9.md) | 29 | `result-track:a4311adbb9651fc8241b10c9c50011d18690706af5a97966e4a318b21e45f63f` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/complex-weighted-derivative--d6c5fe0a900ca242286b61f2.md) | 36 | `result-track:d6c5fe0a900ca242286b61f2808abeb4771d3ee2b84e683e2dc7613ea65116df` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/actual-complex-pole-filter--32f82ea7b7078b402dbf0053.md) | 65 | `result-track:32f82ea7b7078b402dbf0053d35687b19cba81e9b10eb32baadcda0f7e9438f4` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/primitive-transform-normalization--da63e67629713333c1415e08.md) | 92 | `result-track:da63e67629713333c1415e080677436bb9a97e5010c92c8af0b3703276bff728` |
| 8 | `theorem` | [boundary_transform_factored](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/boundary-transform-factored--0a13e336adf13fd29d29e99a.md) | 102 | `result-track:0a13e336adf13fd29d29e99a958258ac1d496352c727bc0384d84dbb363edf78` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../mathematics/Analysis/Attempt02/Variante86eeeba169ca950f89d6526eed75006a53ea0ff273864dcc7c844018f9d1aec.lean/declarations/boundary-transform-factored-unnormalized--9eb83923b743d545311fa3df.md) | 109 | `result-track:9eb83923b743d545311fa3df3da2867fea44d32b357b38fe91c45c2ede6c29c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
