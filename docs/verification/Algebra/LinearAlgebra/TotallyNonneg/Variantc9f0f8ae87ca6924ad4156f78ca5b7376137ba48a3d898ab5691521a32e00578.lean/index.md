# Verification target: GRWTSK.Algebra.LinearAlgebra.TotallyNonneg.Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e484150d53a591a98b68185292ccc984c5ab2146",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e484150d53a591a98b68185292ccc984c5ab2146`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyNonneg](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg--9ccb96bb1d6cb1af0ae2829d.md) | 50 | `declaration-track:9ccb96bb1d6cb1af0ae2829da2d250bbae70ee3ca7e8cdefd57099423921eb2e` |
| 2 | `lemma` | [IsTotallyNonneg.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-submatrix--6b77f5f8b4e6fb4383e5a134.md) | 54 | `result-track:6b77f5f8b4e6fb4383e5a1341941724861bc308dfaceb89f5cc94cb0e301b5f9` |
| 3 | `lemma` | [IsTotallyNonneg.nonneg](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-nonneg--e4095e6f8596fe24be3468b1.md) | 58 | `result-track:e4095e6f8596fe24be3468b15aac75b6e6d29afbe1387eefd01751c616fb7275` |
| 4 | `lemma` | [IsTotallyNonneg.zero](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-zero--904ca70b41992b0df5394120.md) | 65 | `result-track:904ca70b41992b0df5394120e540613568924e513adb11e46544c0211181222d` |
| 5 | `lemma` | [IsTotallyNonneg.diagonal](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-diagonal--2c64648d4dd1d2ca28d5fd53.md) | 70 | `result-track:2c64648d4dd1d2ca28d5fd53337831d2f1f3d5d835e19659c5902708ab4c8894` |
| 6 | `lemma` | [isTotallyNonneg_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-diagonal-iff--dd20611f804a769be4b40793.md) | 82 | `result-track:dd20611f804a769be4b407939328e008f0f0be59338c36ca52a4b7701ae55668` |
| 7 | `lemma` | [IsTotallyNonneg.one](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-one--fad0c6e46d7a82cb16aa59f8.md) | 86 | `result-track:fad0c6e46d7a82cb16aa59f82ff97716d53bc0f48b1a4cdc4b8ef224afbde594` |
| 8 | `lemma` | [IsTotallyNonneg.smul](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-smul--d14b4bd14eed9ea956feb89b.md) | 90 | `result-track:d14b4bd14eed9ea956feb89b6996ada6748d3728418a43ed1225bd541a85cd80` |
| 9 | `theorem` | [isTotallyNonneg_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyNonneg/Variantc9f0f8ae87ca6924ad4156f78ca5b7376137ba48a3d898ab5691521a32e00578.lean/declarations/istotallynonneg-smul-iff--48132ee90a937aa10a47cc11.md) | 97 | `result-track:48132ee90a937aa10a47cc11c9cb5e15cc47720e2551d31c818414b2d06b48fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
