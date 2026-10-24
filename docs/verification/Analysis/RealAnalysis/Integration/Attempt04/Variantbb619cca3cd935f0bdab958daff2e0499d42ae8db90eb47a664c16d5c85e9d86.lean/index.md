# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b92470305c7768bdccc85524d21686fe692fb926",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b92470305c7768bdccc85524d21686fe692fb926`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/normalizedtransform--3ec9b4b03620f3bf928e13f7.md) | 25 | `declaration-track:3ec9b4b03620f3bf928e13f7de601fbd8afc38440c1decfe8fd987f201d2ce9d` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/boundarytransform--fba99b8a07dbb40f243b8117.md) | 30 | `declaration-track:fba99b8a07dbb40f243b8117e02aa3abfe58983243c7019c536b401ec1f68323` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/normalizedtransform-dictionary--0d1f594b96f7462f12ceb354.md) | 33 | `result-track:0d1f594b96f7462f12ceb3546b3dac5d3dc6dcc32b51f8a0333019ab4d1283eb` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/normalized-integrand-integrable--35c83c077528d47a53377d92.md) | 43 | `result-track:35c83c077528d47a53377d92d35aaa1cefd20cb5f797dc0da0199227941bc30f` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/full-complex-correlation-square--caf8e6190cc753ec45ffb9ef.md) | 54 | `result-track:caf8e6190cc753ec45ffb9ef919f7554b5c1da17c027cf8e405011fb186d4987` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/interval-complex-correlation-square--ab4aecde217b1109d3f70ca7.md) | 84 | `result-track:ab4aecde217b1109d3f70ca7e6a6ad7eb7f8c79e5f6cf5ec308d163793d684c0` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/critical-complex-ibp--7b26f5829665d1e0db9c4050.md) | 105 | `result-track:7b26f5829665d1e0db9c405034d632f93b4f5a2216e11f647acb671efd5e03f3` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantbb619cca3cd935f0bdab958daff2e0499d42ae8db90eb47a664c16d5c85e9d86.lean/declarations/boundary-transform-exact--9c71630235ab614e0cff6cbd.md) | 146 | `result-track:9c71630235ab614e0cff6cbd7e4c451d787122e4f91b5dfceeae9db8c7a4f502` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
