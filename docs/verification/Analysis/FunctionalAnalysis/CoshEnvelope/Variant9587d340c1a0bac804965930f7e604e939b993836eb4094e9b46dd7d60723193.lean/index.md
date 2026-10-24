# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CoshEnvelope.Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c217394b688777c5dd3bd4b31536e6f1e8ec609e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c217394b688777c5dd3bd4b31536e6f1e8ec609e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Jensen` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope--4ff299b50e2c80e8c9a45691.md) | 16 | `declaration-track:4ff299b50e2c80e8c9a45691cef3b0690601c01840e682a59e5b338e143f58fb` |
| 2 | `def` | [logEnvelope](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/logenvelope--9bcf678dc508fe28cb7262d0.md) | 17 | `declaration-track:9bcf678dc508fe28cb7262d0f33f6d2e79fab16b76853c22b6c113a72135c022` |
| 3 | `def` | [logSlope](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/logslope--97818167629c0e2c908c8ad6.md) | 18 | `declaration-track:97818167629c0e2c908c8ad6dc97a1ee4e1a70ef83af83b84bc92cb5acd9f57d` |
| 4 | `theorem` | [logEnvelope_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/logenvelope-hasderivat--6a302bda086624e43dc340bf.md) | 20 | `result-track:6a302bda086624e43dc340bf7863f26bf1540421c25730d99960faaeff51ac54` |
| 5 | `theorem` | [logSlope_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/logslope-hasderivat--819f1bd7df196aacfddd3766.md) | 29 | `result-track:819f1bd7df196aacfddd37660a602620303644d2a2f0afaa839856abf2fb6411` |
| 6 | `theorem` | [logEnvelope_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/logenvelope-convex--9a7a2b0802c57183af7e393b.md) | 41 | `result-track:9a7a2b0802c57183af7e393ba92449f3382676d703248cdae5bca40e155065f6` |
| 7 | `theorem` | [envelope_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope-pos--f0081f4cc856b2c2f4701497.md) | 52 | `result-track:f0081f4cc856b2c2f470149732daa20ef769fb9f18c42f1d161429ecb532e0dc` |
| 8 | `theorem` | [logEnvelope_eq_log](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/logenvelope-eq-log--14626e65512ee6de1e6ddbf1.md) | 56 | `result-track:14626e65512ee6de1e6ddbf152bf4aed08adb5af8c14f34e99ae7a46f8e9a93b` |
| 9 | `theorem` | [envelope_le_max_endpoints](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope-le-max-endpoints--c68745067f5fdf277be82d12.md) | 65 | `result-track:c68745067f5fdf277be82d12fa9ac329d524bfd0544ec73265e57d0858ee76ce` |
| 10 | `theorem` | [exp_one_lt_rational](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/exp-one-lt-rational--4aed419bbf259995637e26eb.md) | 75 | `result-track:4aed419bbf259995637e26eb7abfcd51198e4372384397106ab86c57d95bcdc9` |
| 11 | `theorem` | [envelope_exp_formula](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope-exp-formula--60a10f43b26eeaae8edb8e68.md) | 78 | `result-track:60a10f43b26eeaae8edb8e68e2c287aaa770d12ae960af7fa8692a719500369e` |
| 12 | `theorem` | [envelope_one_lt_six](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope-one-lt-six--dad0d237d7cadc107a83a4c8.md) | 86 | `result-track:dad0d237d7cadc107a83a4c8b811c750a50f1da747fcdd2a8e4b81f7b16d2278` |
| 13 | `theorem` | [envelope_nat_endpoint_le](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope-nat-endpoint-le--9ed31475cdb10a6e1a8253a9.md) | 92 | `result-track:9ed31475cdb10a6e1a8253a98855d5cf463c8fd4fae98598db812d8657a2f678` |
| 14 | `theorem` | [envelope_le_rational_endpoints](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant9587d340c1a0bac804965930f7e604e939b993836eb4094e9b46dd7d60723193.lean/declarations/envelope-le-rational-endpoints--eba21294a779e9966d2c6eac.md) | 101 | `result-track:eba21294a779e9966d2c6eaceb91a8fced81101afd22ae7c87bb96e24701e95a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
