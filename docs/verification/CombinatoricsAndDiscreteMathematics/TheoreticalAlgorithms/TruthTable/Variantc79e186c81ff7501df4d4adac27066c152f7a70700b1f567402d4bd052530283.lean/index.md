# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TruthTable.Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f224a3bb07f144af4dcd8f4ffe8ca8481c1179c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f224a3bb07f144af4dcd8f4ffe8ca8481c1179c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.Hypercube` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Syntax.SOP` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TruthTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable--5fbe3173a455a6f0f65d8b4a.md) | 7 | `declaration-track:5fbe3173a455a6f0f65d8b4af85fbeb47599521c8bbf69fc299da14ddd935c02` |
| 2 | `def` | [TruthTable.rows](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-rows--9359b6c7749da44dfbc3ca45.md) | 11 | `declaration-track:9359b6c7749da44dfbc3ca4587a576f42399a8df5e51263e91648cf8ee0e4a2f` |
| 3 | `def` | [TruthTable.toMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-tomatrix--4bea8c797b2bb1dde5857dc1.md) | 21 | `declaration-track:4bea8c797b2bb1dde5857dc15cfc0a48737263b436d6ae46db59a39e40027ab6` |
| 4 | `def` | [TruthTable.minterm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-minterm--414b7a100e5563f57bfc8f6b.md) | 30 | `declaration-track:414b7a100e5563f57bfc8f6bbbbdc2a7dda3526326f791cca27d6ee25a1ae725` |
| 5 | `def` | [TruthTable.trueInputs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-trueinputs--25a3d123852a2a01576cc220.md) | 39 | `declaration-track:25a3d123852a2a01576cc2208d5c606c8309efc665a9d5966300db9b507d35e7` |
| 6 | `def` | [TruthTable.toSOP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-tosop--db8dc5940d2892cf7a256d95.md) | 49 | `declaration-track:db8dc5940d2892cf7a256d950e0bbafc39eb22a239e146c6b0d1100e6a111052` |
| 7 | `def` | [TruthTable.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-totree--14824ae0b75ef20c0d6a68b1.md) | 54 | `declaration-track:14824ae0b75ef20c0d6a68b18b3c1132ea733a469ef9e0ba23c62b59d0389070` |
| 8 | `def` | [TruthTable.toSOPMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variantc79e186c81ff7501df4d4adac27066c152f7a70700b1f567402d4bd052530283.lean/declarations/truthtable-tosopmatrix--e079385cdece20593c9e0bc2.md) | 59 | `declaration-track:e079385cdece20593c9e0bc2d39190b98e093d2806a6ca962f74ef2122c5d976` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
