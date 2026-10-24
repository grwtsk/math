# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackContinuous.Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dfbe16f4d98ab12044fb84c149e9b9694a39384",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dfbe16f4d98ab12044fb84c149e9b9694a39384`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Pullback` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.PushforwardContinuous` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/declarations/pullback--79718d12c848074b36ad52e7.md) | 53 | `declaration-track:79718d12c848074b36ad52e72ba7592aac387d67d01d0e150158df70b86b06af` |
| 2 | `def` | [pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/declarations/pullbackpushforwardadjunction--fd11c21464716c9cff9be32d.md) | 60 | `declaration-track:fd11c21464716c9cff9be32dd19daa457a299481ecf333a599241b2a1eb84ea1` |
| 3 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/declarations/adjunction--61aa262aea6b0aa91ee60ee9.md) | 74 | `declaration-track:61aa262aea6b0aa91ee60ee9f11856e8f7c55cee04947257ee4155eaf453ecf7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/declarations/instance--acc10f0c5638b86e6db0b6d8.md) | 100 | `declaration-track:acc10f0c5638b86e6db0b6d80c6bbce0e6a43f9556f4b1d8c2f69ab0ed2e695c` |
| 5 | `def` | [pullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/declarations/pullbackiso--20681d947ded3e95cc84b641.md) | 106 | `declaration-track:20681d947ded3e95cc84b6412b5e6b1b616f70ba30431aec4e5a067d77be766a` |
| 6 | `def` | [sheafificationCompPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant28320715d8c0d26a47af558fd572cd9084836a9a78128cbd4de1db8a9f854f72.lean/declarations/sheafificationcomppullback--249abc15b7c4620a16b6f3b9.md) | 118 | `declaration-track:249abc15b7c4620a16b6f3b9d1c52e02df4aaeccadaf48882ee047e1d3294586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
