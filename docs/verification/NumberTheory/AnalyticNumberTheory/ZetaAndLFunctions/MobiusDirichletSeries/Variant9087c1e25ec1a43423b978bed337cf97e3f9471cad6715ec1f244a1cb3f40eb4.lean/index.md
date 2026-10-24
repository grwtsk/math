# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusDirichletSeries.Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a5c8a1b32ac5beee663f1a364c9721262f894ab",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a5c8a1b32ac5beee663f1a364c9721262f894ab`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Mobius` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.DirichletConvolution` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusComplex](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/mobiuscomplex--89c55422a5d744283e8e3374.md) | 31 | `declaration-track:89c55422a5d744283e8e3374377031eb7c54f89567bf8bab3a6a9f7d84516ff5` |
| 2 | `def` | [mobiusDirichletSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/mobiusdirichletseries--48dc64f317f8d9856f1d7d32.md) | 34 | `declaration-track:48dc64f317f8d9856f1d7d320817231a15769efe6a9c68d6af9b40225f2e49ab` |
| 3 | `theorem` | [norm_mobiusComplex_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/norm-mobiuscomplex-le-one--11e18156575fab7d9e0e5ddc.md) | 38 | `result-track:11e18156575fab7d9e0e5ddcb104dbd976d4c80240d6e3278ff3c1be408cdcc6` |
| 4 | `theorem` | [mobiusDirichlet_absSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/mobiusdirichlet-abssummable--38b415138cfa9cd555d8508f.md) | 52 | `result-track:38b415138cfa9cd555d8508f7f79cbfb1d5ab9b2330439f1a7231bf2e247d6d3` |
| 5 | `theorem` | [mobiusDirichletSeries_eq_tsum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/mobiusdirichletseries-eq-tsum--512f234bd065952f10693bf2.md) | 64 | `result-track:512f234bd065952f10693bf252b47c53c06a443e70736e6f8b84bed040353116` |
| 6 | `def` | [epsilonComplex](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/epsiloncomplex--b0f9e2885839773def4c391e.md) | 70 | `declaration-track:b0f9e2885839773def4c391ef21f92cc24b8a9afcabc5ad6ab1bddb338b2afbc` |
| 7 | `theorem` | [one_conv_mobius_eq_epsilon_complex](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/one-conv-mobius-eq-epsilon-complex--49bde0438de1067c37d4ea3e.md) | 73 | `result-track:49bde0438de1067c37d4ea3e3f6096baf3a7db57afd7216aaed96f845e122005` |
| 8 | `theorem` | [lseries_one_convolution_mobius_eq_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant9087c1e25ec1a43423b978bed337cf97e3f9471cad6715ec1f244a1cb3f40eb4.lean/declarations/lseries-one-convolution-mobius-eq-delta--70185c4e1a82780db1090864.md) | 102 | `result-track:70185c4e1a82780db10908647854aabb9b8389e68f63707afb349c26ca289865` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
