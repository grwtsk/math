# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6243289fdfb386233e64c35a6405d8ca04abafcf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6243289fdfb386233e64c35a6405d8ca04abafcf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subtype_val_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/declarations/subtype-val-mono--db6faed58c3d98e69330e165.md) | 39 | `result-track:db6faed58c3d98e69330e165539c2eed65c2d0d10879d3fd1cd7e1a14d3fe275` |
| 2 | `def` | [Types.monoOverEquivalenceSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/declarations/types-monooverequivalenceset--e064a8dd291992f42b3b1471.md) | 47 | `declaration-track:e064a8dd291992f42b3b1471834bcb90a2981efe3d18c33e46b536a731016a8f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/declarations/instance--e0f98ae17aa5f83657a8e9e9.md) | 63 | `declaration-track:e0f98ae17aa5f83657a8e9e93ffbb3329349526aeae43ecd617b78d249db6205` |
| 4 | `def` | [Types.subobjectEquivSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant9609cd6c5b85dc869fe9fbe5ed293aa648ecc1f91e082d5241f8ccd8da16fb8e.lean/declarations/types-subobjectequivset--80d6ed4a7ab21cafd0b703dc.md) | 69 | `declaration-track:80d6ed4a7ab21cafd0b703dcba1df3c503a9718e3e8460ff2534f26e73679cbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
