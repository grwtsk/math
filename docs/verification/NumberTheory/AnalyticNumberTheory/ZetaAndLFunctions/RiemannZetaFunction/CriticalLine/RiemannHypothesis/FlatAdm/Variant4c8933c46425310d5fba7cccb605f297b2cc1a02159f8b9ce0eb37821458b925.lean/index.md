# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FlatAdm.Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a594819b5b0c0056d0a4c92a4bca3d39cfd2805",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a594819b5b0c0056d0a4c92a4bca3d39cfd2805`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.WindowCore` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [admWindow_taperPhi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/admwindow-taperphi--35869bba3d2325432c0eebc2.md) | 37 | `result-track:35869bba3d2325432c0eebc227c9bfef83e4be1b4ee6633ed05ceed3f4ad0b8a` |
| 2 | `theorem` | [admWindow_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/admwindow-taper--6335eb5fe5aac33073eee464.md) | 55 | `result-track:6335eb5fe5aac33073eee46452021b790e65e0af8a09af2392fd358d51efa8df` |
| 3 | `theorem` | [av_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/av-taper--ee46cf223d50f70662f59203.md) | 63 | `result-track:ee46cf223d50f70662f59203d8ee189d3bf9d12e526041411ecc2a430cdc47f6` |
| 4 | `theorem` | [bv_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/bv-taper--9fca2153d51e868ef1ea4349.md) | 64 | `result-track:9fca2153d51e868ef1ea43495d4669ca07cfd946f70be318899ed9a65d07a85b` |
| 5 | `theorem` | [gv_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/gv-taper--0c5528f936db31a9e7d28417.md) | 65 | `result-track:0c5528f936db31a9e7d28417c9b617a578f71bda306594d54f9eab77928b4689` |
| 6 | `theorem` | [half_le_bv_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/half-le-bv-taper--9f7f279fbacf88226ff32f9e.md) | 68 | `result-track:9f7f279fbacf88226ff32f9e316725444813bc205a43226d4098bc9b0270c801` |
| 7 | `theorem` | [admFamily_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant4c8933c46425310d5fba7cccb605f297b2cc1a02159f8b9ce0eb37821458b925.lean/declarations/admfamily-taper--54bb0542ac65e3210976c332.md) | 74 | `result-track:54bb0542ac65e3210976c3323d69b338926007f8697eb4a9d54d11b8b7e1cd39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
