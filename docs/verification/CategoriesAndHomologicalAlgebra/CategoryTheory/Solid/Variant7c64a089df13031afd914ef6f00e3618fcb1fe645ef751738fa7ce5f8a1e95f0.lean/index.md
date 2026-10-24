# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Solid.Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "285c6efe0ba691df6f2d3c4b4251823dd9afb717",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `285c6efe0ba691df6f2d3c4b4251823dd9afb717`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Functors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [finFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/finfree--0f75800c71083e630bf52732.md) | 45 | `declaration-track:0f75800c71083e630bf52732ec0308b9130ea8ba3ad1e2792cecba8f89e0b070` |
| 2 | `abbrev` | [profiniteFree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/profinitefree--c9c3d9c48f3154f2cfafd6f7.md) | 49 | `declaration-track:c9c3d9c48f3154f2cfafd6f7642e34ae8b29571b070d7d69c1dc2a5751c054d4` |
| 3 | `def` | [profiniteSolid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/profinitesolid--9695cf380ec471c804cea9f9.md) | 53 | `declaration-track:9695cf380ec471c804cea9f90712bdac5d30e6d7846bc12d848109a9fd800119` |
| 4 | `def` | [profiniteSolidCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/profinitesolidcounit--9492c43a0883d4959d8254af.md) | 59 | `declaration-track:9492c43a0883d4959d8254af8b21f08815de5f5163d9a1ea832346db0fe3c977` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/instance--7bd15564c2ce39dbfcabd134.md) | 62 | `declaration-track:7bd15564c2ce39dbfcabd13477cc19f3bc2f1c0be5c4e4bd47d24e44c3af4fef` |
| 6 | `def` | [profiniteSolidIsPointwiseRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/profinitesolidispointwiserightkanextension--25113b21fcec31c2305d1361.md) | 69 | `declaration-track:25113b21fcec31c2305d1361f5fd750bb1f174a18da21c1b8b7d66f0f5333f48` |
| 7 | `def` | [profiniteSolidification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/profinitesolidification--c0525132134f1c1f5ea1dd02.md) | 74 | `declaration-track:c0525132134f1c1f5ea1dd025bd60a92365ddb9eca8a65ef64ee229250af367b` |
| 8 | `class` | [CondensedMod.IsSolid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0.lean/declarations/condensedmod-issolid--c9b5c1d66fd2761f9145ee09.md) | 80 | `declaration-track:c9b5c1d66fd2761f9145ee09b6ff5ca06c95935a2ad0b790228c99f079af9d03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
