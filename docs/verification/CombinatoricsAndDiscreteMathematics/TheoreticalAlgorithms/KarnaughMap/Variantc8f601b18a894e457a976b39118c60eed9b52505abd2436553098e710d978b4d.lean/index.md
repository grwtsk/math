# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KarnaughMap.Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef96c0b2525286d9e24b31760433f6764b0e7fa1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef96c0b2525286d9e24b31760433f6764b0e7fa1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.TruthTable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KarnaughMap.KMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-kmap--0012dd8b104a12952ecfb381.md) | 18 | `declaration-track:0012dd8b104a12952ecfb381633d66ae3fac4340d721c3d57e74115036c7db36` |
| 2 | `def` | [KarnaughMap.rowBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-rowbit--3a07330c6eb62476eb7b1af6.md) | 22 | `declaration-track:3a07330c6eb62476eb7b1af65da029443d25e2ac11027113b87fc9387ab65c04` |
| 3 | `def` | [KarnaughMap.colBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-colbit--1a44b1f067e8f5b3c1662a70.md) | 30 | `declaration-track:1a44b1f067e8f5b3c1662a70aaa74a95c3b8be7e354001d54eb4f63d8e3e1d68` |
| 4 | `def` | [KarnaughMap.input](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-input--dd73207530a2c31e71b3f820.md) | 43 | `declaration-track:dd73207530a2c31e71b3f820b90cd73899a6a34af6e0f18a2766bc5a36d98600` |
| 5 | `def` | [KarnaughMap.fromTruthTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-fromtruthtable--03821a9496b5f557fb6cedb0.md) | 55 | `declaration-track:03821a9496b5f557fb6cedb0a2057a2e063e6b59cb0323c4b62567297ee04f14` |
| 6 | `def` | [KarnaughMap.rowAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-rowaxis--46d5d601cc8ced897697c35e.md) | 61 | `declaration-track:46d5d601cc8ced897697c35ed86db79d6d977808021a052b1b32e5673daf173c` |
| 7 | `def` | [KarnaughMap.colAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d.lean/declarations/karnaughmap-colaxis--bb32eb8207dc4ef4e1056455.md) | 66 | `declaration-track:bb32eb8207dc4ef4e1056455631bfea0197ea47e9377807cdd10458376555b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
