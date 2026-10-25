# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GeneratorEquiv.Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5bdaa31b579a18009b1a99b68bcc563977894cb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5bdaa31b579a18009b1a99b68bcc563977894cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAbelianGroup.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.IsFreeGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup.basis](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/declarations/freeabeliangroup-basis--a6044e04407c7479f9242437.md) | 29 | `declaration-track:a6044e04407c7479f924243762d777546d5af0ff41c7ca8b1da9b35d16690172` |
| 2 | `def` | [Equiv.ofFreeAbelianGroupLinearEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/declarations/equiv-offreeabeliangrouplinearequiv--6114c594d94f05900a485b9c.md) | 33 | `declaration-track:6114c594d94f05900a485b9c8adee4cdecdb00cea888cefac8386b26a84872e5` |
| 3 | `def` | [Equiv.ofFreeAbelianGroupEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/declarations/equiv-offreeabeliangroupequiv--a11e912026a679dedd8b3889.md) | 38 | `declaration-track:a11e912026a679dedd8b38893fa4a99fc971f2107d06a28d46d140a3e404f054` |
| 4 | `def` | [Equiv.ofFreeGroupEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/declarations/equiv-offreegroupequiv--04ede0c10de35321d0bed6fb.md) | 42 | `declaration-track:04ede0c10de35321d0bed6fb41ff133e5d2b7db395ea6745cad797d4cb2ec8e7` |
| 5 | `def` | [Equiv.ofIsFreeGroupEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e.lean/declarations/equiv-ofisfreegroupequiv--4a52540c907ddcbed60cfae6.md) | 46 | `declaration-track:4a52540c907ddcbed60cfae6acb1a620769ad525b410df3e575a08154ed26f9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
