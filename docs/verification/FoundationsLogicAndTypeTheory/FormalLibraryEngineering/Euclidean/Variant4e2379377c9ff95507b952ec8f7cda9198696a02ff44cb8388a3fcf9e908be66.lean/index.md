# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Euclidean.Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71ad868328aedb0802e6db75333461830d78f9e0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71ad868328aedb0802e6db75333461830d78f9e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Point](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/point--b74cab0b1af9de9899964cbe.md) | 15 | `declaration-track:b74cab0b1af9de9899964cbe02043a5703cd1fe95a442889daa1eff698beef07` |
| 2 | `def` | [squaredDistance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/squareddistance--99e90ea426d560cd9f67aade.md) | 20 | `declaration-track:99e90ea426d560cd9f67aade0024670a93912cf99df07325e9fd87fc2355ad6f` |
| 3 | `structure` | [Circle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/circle--a04a8d44a37d70a1d68b1156.md) | 24 | `declaration-track:a04a8d44a37d70a1d68b1156bafcbd889607d4d3d4b4d29b8e26e7eefca8b434` |
| 4 | `def` | [Circle.Contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/circle-contains--01871d49824929362181166c.md) | 30 | `declaration-track:01871d49824929362181166cfda3ea07d2a6d686da35d799211bb15ced697851` |
| 5 | `structure` | [CircumcircleDatum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/circumcircledatum--40c7f0c8a430e08c15db1f9d.md) | 34 | `declaration-track:40c7f0c8a430e08c15db1f9dce58b146c15bf2be23c1bdf89b09232adf2a9262` |
| 6 | `inductive` | [YAxisDirection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/yaxisdirection--7b1dffca2b89ca4d65ab7d98.md) | 44 | `declaration-track:7b1dffca2b89ca4d65ab7d98ac3f397d815a5436d04827654123a5a9bf916ea6` |
| 7 | `inductive` | [ArcOrientation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/arcorientation--c95ec7ff7958f1a8fd92b75d.md) | 50 | `declaration-track:c95ec7ff7958f1a8fd92b75da74c65abb8872f780dd597edb8a54480f7c167f8` |
| 8 | `structure` | [DirectedArc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/directedarc--484ef375f5e3bb7c461383b0.md) | 56 | `declaration-track:484ef375f5e3bb7c461383b01b6b2f0d804201228b99af9a88325e1d38251c9a` |
| 9 | `abbrev` | [WindingNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/windingnumber--b0ca9f67e66d995ad7bfc552.md) | 65 | `declaration-track:b0ca9f67e66d995ad7bfc552de98d70768ef170055415cfc0ac05103aaddf59f` |
| 10 | `def` | [halfTurn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/halfturn--63a5d27234ae89fb2092be2f.md) | 68 | `declaration-track:63a5d27234ae89fb2092be2f8abc529fbd09043376c33e6a0678f3c0aa694098` |
| 11 | `theorem` | [halfTurn_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66.lean/declarations/halfturn-involutive--56517ebde4345db1a3d2dd8f.md) | 73 | `result-track:56517ebde4345db1a3d2dd8f44e4f9b36caafe47d363910ea739194aba4dc705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
