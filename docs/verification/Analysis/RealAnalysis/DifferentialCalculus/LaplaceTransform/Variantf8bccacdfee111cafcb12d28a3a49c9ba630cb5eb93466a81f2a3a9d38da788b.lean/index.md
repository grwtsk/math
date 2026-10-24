# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LaplaceTransform.Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab5aa734780717435e9ae40d09366b56e19e83a4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab5aa734780717435e9ae40d09366b56e19e83a4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplaceintegrand--6deeb06fc66e4afd5cbb4e29.md) | 41 | `declaration-track:6deeb06fc66e4afd5cbb4e29c97625d4f2bd96c8199735e928fa4661d1698f05` |
| 2 | `def` | [primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplace--6dc2741dc8b99865a6fa4c00.md) | 47 | `declaration-track:6dc2741dc8b99865a6fa4c002b19ba948ab89cdb8bb00a16d0ce90831fd3778f` |
| 3 | `theorem` | [continuous_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/continuous-primitiveweillaplaceintegrand--f602a43d7e45d6229dcb3554.md) | 54 | `result-track:f602a43d7e45d6229dcb3554421b225d0d4611efe65d3813a2465668224a8cb1` |
| 4 | `theorem` | [support_primitiveWeilLaplaceIntegrand_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/support-primitiveweillaplaceintegrand-subset--cadf0ebf591b0180fb6a56e0.md) | 62 | `result-track:cadf0ebf591b0180fb6a56e01b6237c9648889c4497cdc0f950f1c80a8bc8097` |
| 5 | `theorem` | [hasCompactSupport_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/hascompactsupport-primitiveweillaplaceintegrand--56c671b5ae8887598e28e12c.md) | 73 | `result-track:56c671b5ae8887598e28e12c10d214665871d86ac9a3d61aba546f59ab8f1ba8` |
| 6 | `theorem` | [integrable_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/integrable-primitiveweillaplaceintegrand--40d7a2462b85f5e79fbf3f1b.md) | 80 | `result-track:40d7a2462b85f5e79fbf3f1b22df83612f3519ba9a9c25287659e0b4e3ba0ca9` |
| 7 | `def` | [primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplacederivativeintegrand--73b79269e98e74ee44a0bb20.md) | 89 | `declaration-track:73b79269e98e74ee44a0bb20e32f692536fb4d480b5b4da4bd00dbaf0856c660` |
| 8 | `theorem` | [hasDerivAt_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/hasderivat-primitiveweillaplaceintegrand--e4dad1fef4b0e404b37b4b95.md) | 93 | `result-track:e4dad1fef4b0e404b37b4b959ff56ef3e8e2982fc89af59fba66a984a2ae80d1` |
| 9 | `def` | [primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplacederivativebound--d1b332f836fbaa74893e8b9e.md) | 104 | `declaration-track:d1b332f836fbaa74893e8b9ef0fda8cc9da9eaaeea07231c793936dfbb8c99ab` |
| 10 | `theorem` | [integrable_primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/integrable-primitiveweillaplacederivativebound--87a0f05d5be417a4ffda42d8.md) | 109 | `result-track:87a0f05d5be417a4ffda42d8c06b6e50863b1b952ffc21a3fbb67d49c00740e5` |
| 11 | `theorem` | [primitiveWeilLaplaceDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplacederivative-le--9d86be7fd78712a170422e03.md) | 128 | `result-track:9d86be7fd78712a170422e03c1e009a327cf68179c564e8b82a18a27a13c18d8` |
| 12 | `theorem` | [continuous_primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/continuous-primitiveweillaplacederivativeintegrand--b59f4d9afc7ba5defeb1011b.md) | 157 | `result-track:b59f4d9afc7ba5defeb1011b57bce125ec961792485bf0404e7917dda9745328` |
| 13 | `theorem` | [hasDerivAt_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/hasderivat-primitiveweillaplace--805792a8067d3e1ade7988ad.md) | 167 | `result-track:805792a8067d3e1ade7988adcb5aa215f35795aa78b2455bf983343e5b1ec5ce` |
| 14 | `theorem` | [differentiable_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/differentiable-primitiveweillaplace--b9af62e6a7cd49361d29b9fd.md) | 192 | `result-track:b9af62e6a7cd49361d29b9fd46d955c8f017ad77e1f4f6b3ce3633691bf8cd5b` |
| 15 | `theorem` | [primitiveWeilLaplace_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplace-star--7a3dc0d193b4b7bedb4ec8fb.md) | 199 | `result-track:7a3dc0d193b4b7bedb4ec8fb5fad547effb578f3d6f3c5cbc6feb1bdf089955d` |
| 16 | `theorem` | [primitiveWeilLaplaceIntegrand_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplaceintegrand-autocorrelation--6cc492c0d7c7c461fe5cb88e.md) | 219 | `result-track:6cc492c0d7c7c461fe5cb88ed409427b292844a4cd2ac1c20ca4093b463930e6` |
| 17 | `theorem` | [primitiveWeilLaplace_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplace-autocorrelation--1cb3ca558a5e5d8d7678a6f9.md) | 251 | `result-track:1cb3ca558a5e5d8d7678a6f95c46dfde5aaab6a48335873a485b17e5aa1f3ad3` |
| 18 | `theorem` | [primitiveWeilLaplace_autocorrelation_on_criticalLine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/declarations/primitiveweillaplace-autocorrelation-on-criticalline--eaffa2e9abc50ee560da56fc.md) | 269 | `result-track:eaffa2e9abc50ee560da56fc443ba014976e4b7a1d458c2c296f6cf3beba0cfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
