# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FlagRange.Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "355d1979e8e11bab5b080cca42a48e5450b27eef",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `355d1979e8e11bab5b080cca42a48e5450b27eef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Cover` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Chain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxChain.range_fin_of_covby](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean/declarations/ismaxchain-range-fin-of-covby--c5ceb94f724376e6258d2501.md) | 31 | `result-track:c5ceb94f724376e6258d250139bace36d79710624d22683f1c94df737412b684` |
| 2 | `def` | [Flag.rangeFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean/declarations/flag-rangefin--0e57658b0105e4824e9bf071.md) | 51 | `declaration-track:0e57658b0105e4824e9bf0712c3a2f962f0e5dc9b81f8a7f783de52c6a7f6053` |
| 3 | `theorem` | [Flag.mem_rangeFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantb363e419b0f9d6cf97bf308f95bfcbd4b55ecc3ac10fd42c47e3664abb54a5e9.lean/declarations/flag-mem-rangefin--b140d6bb3ab34d406a253127.md) | 57 | `result-track:b140d6bb3ab34d406a25312707f4e6f368a1f7aa3d0560e0054926b02f0137e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
