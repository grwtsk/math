# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.SourceComponents.Variant17131ddf74e1ced3.BooleanFlipAndHamming

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0eb787c7658b5818536ad3e0437cf87bd1841f3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0eb787c7658b5818536ad3e0437cf87bd1841f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 19; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant17131ddf74e1ced3.FiniteBooleanCarriers`](../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/SourceComponents/Variant17131ddf74e1ced3/FiniteBooleanCarriers.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hypercube.flip](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/declarations/hypercube-flip--0a8bbcf5dee537adcab89010.md) | 28 | `declaration-track:0a8bbcf5dee537adcab890107da08520f99916b3305ab46f34fec2b2af19d6c5` |
| 2 | `theorem` | [Hypercube.flip_same](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/declarations/hypercube-flip-same--3b9dfb357e48ab2cfe5b0845.md) | 36 | `result-track:3b9dfb357e48ab2cfe5b084519d6016f9416e980e200d28105ea71e832a2ee2e` |
| 3 | `theorem` | [Hypercube.flip_other](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/declarations/hypercube-flip-other--dc0c59fcd695bb3ac305dc35.md) | 40 | `result-track:dc0c59fcd695bb3ac305dc3554a1b2a92635159f7dc02e689d1c046b089ab4ac` |
| 4 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/declarations/hypercube-eq-of-droplast-eq-last-eq--9ff4081113c854a483496396.md) | 45 | `result-track:9ff4081113c854a483496396831e3d166c953d1d42dd7a7c9e85de46fe56935f` |
| 5 | `def` | [Hypercube.pointEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/declarations/hypercube-pointeq--f022cea4a773073326b374d5.md) | 62 | `declaration-track:f022cea4a773073326b374d559b142554c26d76fbfc8cfce3d71d9d7fe79cec7` |
| 6 | `def` | [Hypercube.hammingDistance](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/declarations/hypercube-hammingdistance--50f5d9b0c07c3042a523016f.md) | 68 | `declaration-track:50f5d9b0c07c3042a523016fa5b9a69909ff681e6a485777e598c14326e3bdfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
