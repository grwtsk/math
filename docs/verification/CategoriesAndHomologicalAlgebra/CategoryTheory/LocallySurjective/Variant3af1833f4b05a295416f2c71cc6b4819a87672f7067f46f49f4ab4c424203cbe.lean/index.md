# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySurjective.Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14683850e28138035a3727a30f1359cc2d3a0bfa",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14683850e28138035a3727a30f1359cc2d3a0bfa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/declarations/islocallysurjective--dc0164b64b03c06a3932056a.md) | 56 | `declaration-track:dc0164b64b03c06a3932056ac38a6d689b97425e300c564988729aa40c53ba0f` |
| 2 | `theorem` | [isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/declarations/islocallysurjective-iff--b24046698e760f22c091c2a8.md) | 59 | `result-track:b24046698e760f22c091c2a861a1b9948a0ff4ef367805213953085368876fc3` |
| 3 | `theorem` | [locally_surjective_iff_surjective_on_stalks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe.lean/declarations/locally-surjective-iff-surjective-on-stalks--ceeb0bcfe25f3f3f705d550a.md) | 70 | `result-track:ceeb0bcfe25f3f3f705d550af458099eb082de8e3f6f1b03e7b726aa6ffd656e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
