# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de00a3061618b9251e3ceac939bb08b8de916c2d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de00a3061618b9251e3ceac939bb08b8de916c2d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/unop--2724f244a17b93bbbec82726.md) | 42 | `declaration-track:2724f244a17b93bbbec8272632aa295a8c51cbd69def201fe62fb5b5b6535949` |
| 2 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/op--83043ebe6ab9e45fe018d9af.md) | 55 | `declaration-track:83043ebe6ab9e45fe018d9afa58b7ee142aa2d7569c1e92483d3038997bd0953` |
| 3 | `def` | [leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/leftop--a861b4260ef3245ff4fb91f5.md) | 68 | `declaration-track:a861b4260ef3245ff4fb91f573acb57f2cfd04d94c78aaeeb7d354afe80467f6` |
| 4 | `def` | [rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/rightop--ba739652941fae46b2cafd55.md) | 76 | `declaration-track:ba739652941fae46b2cafd557bf430dfab78abf81c321288975511934adf8d85` |
| 5 | `lemma` | [leftOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/leftop-eq--919d3a0e6d71876da3c169f4.md) | 82 | `result-track:919d3a0e6d71876da3c169f4e236b9a58f871a69e891d0776aa10e2191e9e549` |
| 6 | `lemma` | [rightOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/rightop-eq--6ca6250df785fe0dde0214f8.md) | 86 | `result-track:6ca6250df785fe0dde0214f8de66b6c946c9efa0174d2b106295ab157152ff03` |
| 7 | `def` | [leftAdjointsCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/leftadjointscoyonedaequiv--36f792616db3ef62864dfc59.md) | 94 | `declaration-track:36f792616db3ef62864dfc59c318c872f72d796724ed7da69efa888b0a88bd63` |
| 8 | `def` | [natIsoOfRightAdjointNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/natisoofrightadjointnatiso--1f01c8f1ca330ae2541395c2.md) | 107 | `declaration-track:1f01c8f1ca330ae2541395c28446aa53698a057eb1c0ac2d68ce0068f73dce22` |
| 9 | `def` | [natIsoOfLeftAdjointNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant3f91e5cc8a0a160518a9c8191fb436c31d77bc18f23060b077214c15c2e0a3f4.lean/declarations/natisoofleftadjointnatiso--1c35e879126b843cc71ff1e6.md) | 117 | `declaration-track:1c35e879126b843cc71ff1e60804a428653616ac3adef695b08005522d89ab18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
