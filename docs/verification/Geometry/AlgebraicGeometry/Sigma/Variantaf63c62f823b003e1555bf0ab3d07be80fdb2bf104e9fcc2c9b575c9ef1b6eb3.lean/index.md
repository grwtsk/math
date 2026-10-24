# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb7f62083d9c4653ff1c8a3c0e428e0ffc69a35",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb7f62083d9c4653ff1c8a3c0e428e0ffc69a35`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/declarations/sigma--2d3c801298f8c54fd7fb369f.md) | 38 | `declaration-track:2d3c801298f8c54fd7fb369f59e1f772973fa5fb46f6ce049fadeaa3ef6dedb6` |
| 2 | `lemma` | [presieve₀_sigma](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/declarations/presieve-sigma--b6df5aa79cc55c233d39bab5.md) | 49 | `result-track:b6df5aa79cc55c233d39bab550218b341a4d81ab6a48a123b39da83ce60ae288` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/declarations/instance--60cc9fd5d6befb4fdf3adc70.md) | 59 | `declaration-track:60cc9fd5d6befb4fdf3adc70bb9bfad7c5c8807070e5cdb0517604ec01853863` |
| 4 | `def` | [toSigma](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/declarations/tosigma--ea79a77b4379cec1edd2f2af.md) | 64 | `declaration-track:ea79a77b4379cec1edd2f2afadb37f3fabd29e447b138b9ed3a7db1fd9f6a65f` |
| 5 | `def` | [Hom.sigma](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/declarations/hom-sigma--0c476e17a87ac861d77daf94.md) | 71 | `declaration-track:0c476e17a87ac861d77daf94583c8ad35d527c664912d26f6d6ac7ded2eab819` |
| 6 | `def` | [sigmaFunctor](../../../../../mathematics/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/declarations/sigmafunctor--e4da467eebe8f6a00e1081c4.md) | 80 | `declaration-track:e4da467eebe8f6a00e1081c4a023c53abf46cef130e4b31d961f923db7a2cfca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
