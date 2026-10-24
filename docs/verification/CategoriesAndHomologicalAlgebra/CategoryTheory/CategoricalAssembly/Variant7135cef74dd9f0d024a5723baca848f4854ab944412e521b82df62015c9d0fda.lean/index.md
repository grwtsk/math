# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0900016e6ad853960ef220d00cfd430a782d2132",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0900016e6ad853960ef220d00cfd430a782d2132`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWitnessComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/inversewitnesscomparison--a13578f81762705f6f707294.md) | 28 | `declaration-track:a13578f81762705f6f7072941b9723a048ebe11b7d6545a3f54ad0ca77b697cb` |
| 2 | `def` | [assemble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/assemble--593def2a720ef20f33866ef6.md) | 38 | `declaration-track:593def2a720ef20f33866ef667cf6d8833d918e0817bafb43a53e9b807d6ebf7` |
| 3 | `theorem` | [assemble_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/assemble-functor--ac8e27f1ffeeb6de6bf4a7be.md) | 43 | `result-track:ac8e27f1ffeeb6de6bf4a7be08a7df7566200fbd1499afd745273e49dccaa6a6` |
| 4 | `theorem` | [assemble_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/assemble-inverse--54eca87c3f7b46b67f536ace.md) | 47 | `result-track:54eca87c3f7b46b67f536acecd5858196788583f9ebb1e0039a26bbef7ad5366` |
| 5 | `abbrev` | [Sector](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/sector--92079cc17f92cc5c200ad27a.md) | 52 | `declaration-track:92079cc17f92cc5c200ad27af48627125987e8cc82d70388ac4766c8e32bda60` |
| 6 | `def` | [quarterTurn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/quarterturn--5e82d7cfa918f41b851bcc21.md) | 54 | `declaration-track:5e82d7cfa918f41b851bcc21f9cfaff6e1e2b8cd75931b51eb136a1ba1956ffb` |
| 7 | `theorem` | [quarterTurn_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/quarterturn-square--704e0d91f4e08aa2e5306369.md) | 60 | `result-track:704e0d91f4e08aa2e5306369bbfaf61683ba9d6b04fac0b3851f94a08cb44dfb` |
| 8 | `theorem` | [quarterTurn_fourth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/quarterturn-fourth--58b79f601324e36a751738d5.md) | 65 | `result-track:58b79f601324e36a751738d56f818204a36a94f702d3374784ec788fa2795ef9` |
| 9 | `theorem` | [quarterTurn_square_not_identity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/quarterturn-square-not-identity--1cf3e7ed49eb6150a66cc1f1.md) | 70 | `result-track:1cf3e7ed49eb6150a66cc1f182028ae5cc4c99fbdeb2dabb179550a0799fa690` |
| 10 | `def` | [sectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/sectorequivalence--03721f4fd41f643b3e2a8147.md) | 75 | `declaration-track:03721f4fd41f643b3e2a81475450c1641163bbe8224f10ea9e5334d16c665f7c` |
| 11 | `def` | [assembledSectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant7135cef74dd9f0d024a5723baca848f4854ab944412e521b82df62015c9d0fda.lean/declarations/assembledsectorequivalence--ed7461f05172bec8d40abfbe.md) | 79 | `declaration-track:ed7461f05172bec8d40abfbe03e0e3ccb0e1506c8530b9d5311940d6eb15fa26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
