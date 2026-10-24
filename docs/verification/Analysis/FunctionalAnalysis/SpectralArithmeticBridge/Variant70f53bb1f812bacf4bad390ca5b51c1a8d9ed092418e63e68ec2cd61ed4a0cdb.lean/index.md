# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralArithmeticBridge.Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9eb7d710c6a6f85a41359bbae2fa012188ca12c5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9eb7d710c6a6f85a41359bbae2fa012188ca12c5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Graph` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Heat` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Core.ZeroTypology` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.Research.LFunctionZero` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralModeZeroData](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/declarations/spectralmodezerodata--6a61bd9737996b3030775637.md) | 31 | `declaration-track:6a61bd9737996b3030775637f9759e1fb2ab970610e5c366428bd3f197492d13` |
| 2 | `structure` | [LFunctionToSpectralZeroBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/declarations/lfunctiontospectralzerobridge--50f6ae5df6946698acd6dc4b.md) | 38 | `declaration-track:50f6ae5df6946698acd6dc4b8ae53fb5b74af72a60bfc0c165f49bd694c2f0f0` |
| 3 | `structure` | [HasseWeilGraphModel](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/declarations/hasseweilgraphmodel--f32850ebe3bbd419b04890d6.md) | 46 | `declaration-track:f32850ebe3bbd419b04890d6d53915cea50a126997cb9712f94428327a065227` |
| 4 | `structure` | [CriticalLineSpectralCriterion](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/declarations/criticallinespectralcriterion--21e0e0134a63df59113f9235.md) | 57 | `declaration-track:21e0e0134a63df59113f9235f0725577cb6f1030407e11e9f142d315ab3ee797` |
| 5 | `theorem` | [centered_from_spectral_arithmetic_bridge](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralArithmeticBridge/Variant70f53bb1f812bacf4bad390ca5b51c1a8d9ed092418e63e68ec2cd61ed4a0cdb.lean/declarations/centered-from-spectral-arithmetic-bridge--69e189e4577675f8f1fa95a3.md) | 66 | `result-track:69e189e4577675f8f1fa95a3e59fbfeeacf425bb5382732e8901050d7c0c5185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
