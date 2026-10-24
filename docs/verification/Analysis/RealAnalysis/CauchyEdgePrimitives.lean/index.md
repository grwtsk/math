# Verification target: GRWTSK.Analysis.Real.CauchyEdgePrimitives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfcc913c701c87c99699c65c7008e00cb37befdc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/CauchyEdgePrimitives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfcc913c701c87c99699c65c7008e00cb37befdc`.

Source path: `GRWTSK/Analysis/Real/CauchyEdgePrimitives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/CauchyEdgePrimitives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squared_radius_pos](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/squared-radius-pos--1bc44f0e58ec4cfea462568b.md) | 30 | `result-track:1bc44f0e58ec4cfea462568b608b84a2b84fa1f6a9a1a476c4a00468411f036e` |
| 2 | `theorem` | [continuous_radial_density](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/continuous-radial-density--114bdbe3fdbd67b64704459e.md) | 34 | `result-track:114bdbe3fdbd67b64704459e641d71f30ab11a879e8b8b4743c1af0dd14c850e` |
| 3 | `theorem` | [continuous_angular_density](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/continuous-angular-density--c741043f34a71b1dc4569384.md) | 40 | `result-track:c741043f34a71b1dc45693843ffa44f6391125210a3e52ef60d09832f8220c07` |
| 4 | `theorem` | [hasDerivAt_radial_primitive](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/hasderivat-radial-primitive--061f4b158a33dcbe6366bd52.md) | 47 | `result-track:061f4b158a33dcbe6366bd520da540367f5803aea17c1ca476e49c559460310b` |
| 5 | `theorem` | [hasDerivAt_angular_primitive](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/hasderivat-angular-primitive--ad34ed839813c792a0eeae60.md) | 55 | `result-track:ad34ed839813c792a0eeae603842b497a3a500f55bdf04e56e9451ae1e028feb` |
| 6 | `theorem` | [integral_radial_density](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/integral-radial-density--93edc6bdd733574329589b43.md) | 63 | `result-track:93edc6bdd733574329589b43ce5367d759d3f27e1fb9074aced8f9f292c35979` |
| 7 | `theorem` | [integral_angular_density](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/integral-angular-density--58cda0dcea582f2f627b939a.md) | 71 | `result-track:58cda0dcea582f2f627b939a954bb01a7fb216582b2e2970b922c5b8c5fd778a` |
| 8 | `theorem` | [arctan_reciprocal_corner](../../../../mathematics/Analysis/RealAnalysis/CauchyEdgePrimitives.lean/declarations/arctan-reciprocal-corner--1bb6367fbd67445cfff8a381.md) | 79 | `result-track:1bb6367fbd67445cfff8a38181b60b1195432415b8d2405da0e5e2fc28535b05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
