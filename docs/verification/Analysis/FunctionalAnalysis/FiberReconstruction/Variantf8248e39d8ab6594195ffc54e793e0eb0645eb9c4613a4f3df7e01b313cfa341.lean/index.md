# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiberReconstruction.Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a157ee05239c00e71e4be74c23d7ce074ca995e4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a157ee05239c00e71e4be74c23d7ce074ca995e4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Theorem.Spectral.HeatResidual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportShell](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/declarations/transportshell--e2f5a067d1707a919dcfdd4a.md) | 30 | `declaration-track:e2f5a067d1707a919dcfdd4adbce786c9914ad2cccd0a058d9b7ef39b5e36937` |
| 2 | `theorem` | [heat_residual_reconstruct](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/declarations/heat-residual-reconstruct--6b5d9ea9fe474eaa3dbf4f3c.md) | 37 | `result-track:6b5d9ea9fe474eaa3dbf4f3cdf39e852eff478dc001111f41eb0c481d9a5195f` |
| 3 | `theorem` | [torsion_inverse_reconstruct](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/declarations/torsion-inverse-reconstruct--0fd362cbd39a9a8ccd3bb834.md) | 44 | `result-track:0fd362cbd39a9a8ccd3bb8344dd8e392caf5a9c224d2ea44c122907dca2ad128` |
| 4 | `theorem` | [shell_decode_encode_reconstruct](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/declarations/shell-decode-encode-reconstruct--eaabd7927a3ace164ec1b49d.md) | 52 | `result-track:eaabd7927a3ace164ec1b49d04e5ead8cc7d777fd6365b6b072d500f9e35ce62` |
| 5 | `def` | [reconstructedLiftedShell](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/declarations/reconstructedliftedshell--812583896fe4961a3609cb02.md) | 57 | `declaration-track:812583896fe4961a3609cb0255ff15ec9a126e017cc04c705ae565ce8d78ef04` |
| 6 | `theorem` | [spectral_fiber_reconstruction](../../../../../mathematics/Analysis/FunctionalAnalysis/FiberReconstruction/Variantf8248e39d8ab6594195ffc54e793e0eb0645eb9c4613a4f3df7e01b313cfa341.lean/declarations/spectral-fiber-reconstruction--975a8ee5ebccf1db5c620540.md) | 69 | `result-track:975a8ee5ebccf1db5c6205401c38d0e65c52daa3d2711ffcb6538e471cce49af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
