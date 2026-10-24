# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ulift.Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "659b15231ce76ee627acff5ecb00d801dbfd082b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `659b15231ce76ee627acff5ecb00d801dbfd082b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/declarations/sectionsequiv--22115a989f9b1cb0eadf5630.md) | 32 | `declaration-track:22115a989f9b1cb0eadf56309006756177eb6e9ed7be850ca454e538082ec2c0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/declarations/instance--518ba95353e44dc580ce9ceb.md) | 42 | `declaration-track:518ba95353e44dc580ce9ceb1c3835ddeaf7a653620879817de821f7fe6c3f97` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/declarations/instance--0dd3f9a7376de426288106ed.md) | 55 | `declaration-track:0dd3f9a7376de426288106ed5d8545f01298234f7f3465c9c77b0adf31256fbd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/declarations/instance--1d4aa8378e417d7bd1fb46c2.md) | 64 | `declaration-track:1d4aa8378e417d7bd1fb46c208903ff500a73e385910edda95395160a0a0841c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4.lean/declarations/instance--4fdeb9e0913011d4248f60ac.md) | 75 | `declaration-track:4fdeb9e0913011d4248f60ac80dd5e1ca4a1d5f86f38b78989806e5b0f9a7671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
