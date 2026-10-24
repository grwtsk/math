# Verification target: GRWTSK.Algebra.LinearAlgebra.Refinement.Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1494f54adb99648e0703970e8ea41ceb096152c7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1494f54adb99648e0703970e8ea41ceb096152c7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AbsoluteRegion` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HierarchyEvidenceStatus](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/declarations/hierarchyevidencestatus--068d9fe99fe515f8464d5f4c.md) | 28 | `declaration-track:068d9fe99fe515f8464d5f4cf546bd1d256f67471ac174960a630cb78de97d69` |
| 2 | `structure` | [HierarchyLevelMetadata](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/declarations/hierarchylevelmetadata--e485c55a6005ba084434683b.md) | 36 | `declaration-track:e485c55a6005ba084434683bdc9eb78f470538547c86264eda276578bafcd467` |
| 3 | `structure` | [GlobalHierarchy](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/declarations/globalhierarchy--67c17d50b072cd515dd456f8.md) | 44 | `declaration-track:67c17d50b072cd515dd456f8584be076227367ae5c2f02866da607cd1d316482` |
| 4 | `structure` | [LinearLaplacianEncoding](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/declarations/linearlaplacianencoding--cacb54ba3e882614c3984f8c.md) | 62 | `declaration-track:cacb54ba3e882614c3984f8c89b09ba5a701ba58a713bad263fd9391a37ff226` |
| 5 | `theorem` | [reconstruct](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/declarations/reconstruct--616dc1566781987d0e198d77.md) | 76 | `result-track:616dc1566781987d0e198d77ea4f7eb231f942e194a2789606e25b743bebed47` |
| 6 | `structure` | [RefinementObstruction](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16.lean/declarations/refinementobstruction--d7bbe989b3b44cacf2d17c8d.md) | 83 | `declaration-track:d7bbe989b3b44cacf2d17c8d0c94fa787a811e1e43ad44242a423915e6cfa05e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
