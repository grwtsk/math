# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TransformProbe.Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b66316eb5f48ca19a33a47bc8b2895bf311b9e15",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b66316eb5f48ca19a33a47bc8b2895bf311b9e15`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/primitivepolynomial--70989ce43ab84f5b0bc2136f.md) | 16 | `declaration-track:70989ce43ab84f5b0bc2136f0b741b35580466f818e06bba6e8c9350436e9831` |
| 2 | `def` | [sourcePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/sourcepolynomial--5edb695db3c92a9f6677983d.md) | 27 | `declaration-track:5edb695db3c92a9f6677983df3235c52d7dce967a387b547da002d6fb12bea6f` |
| 3 | `theorem` | [primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/primitive-derivative--15a850baa27a526a419e9106.md) | 29 | `result-track:15a850baa27a526a419e9106120cf6675b85b4b7dcb9f1d80b04df7d1f203651` |
| 4 | `theorem` | [primitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/primitive-endpoint-pos--1b106c639882ace8dc24053f.md) | 37 | `result-track:1b106c639882ace8dc24053f4b13e8fcc55fe326812701ea071fbf78047c5d61` |
| 5 | `theorem` | [primitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/primitive-endpoint-neg--10908230bc1d0a62fbbf9227.md) | 42 | `result-track:10908230bc1d0a62fbbf9227b80d17204af34674a737af7d0f15d8c73be64845` |
| 6 | `theorem` | [exponential_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/exponential-primitive--f596c3bdc93f2e8bff1adb5d.md) | 47 | `result-track:f596c3bdc93f2e8bff1adb5d2497bfea120b665c7d3bffe4e23c167208dc6c49` |
| 7 | `theorem` | [unit_transform_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/unit-transform-cleared--4d83901c98b6a3a3615bdf7a.md) | 58 | `result-track:4d83901c98b6a3a3615bdf7a2a096ff4540d33011e8d90f88c86ab5b53133942` |
| 8 | `theorem` | [unit_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/unit-transform--55836c5e46c6398ef2cf49e9.md) | 70 | `result-track:55836c5e46c6398ef2cf49e985ebf664d7abade9152c54e6564f354981a87500` |
| 9 | `theorem` | [unit_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/unit-mass--68afe5844d053e5a10b9899d.md) | 77 | `result-track:68afe5844d053e5a10b9899daa7722ac9cadac5b05f284e52273ebf8a2de4b81` |
| 10 | `theorem` | [unit_transform_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/declarations/unit-transform-zero--ba5fc3494949b3bb5c591eea.md) | 86 | `result-track:ba5fc3494949b3bb5c591eea478f9a8a770787940a06a4a72368e0f231db42ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
