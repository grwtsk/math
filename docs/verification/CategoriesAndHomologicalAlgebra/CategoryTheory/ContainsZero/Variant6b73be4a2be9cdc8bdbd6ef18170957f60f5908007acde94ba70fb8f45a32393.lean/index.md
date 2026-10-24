# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ContainsZero.Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bff4d3dfa77556bc87c04f59af414b06f629083d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bff4d3dfa77556bc87c04f59af414b06f629083d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContainsZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/containszero--6fe7e968d8d58c5176d38a21.md) | 34 | `declaration-track:6fe7e968d8d58c5176d38a218681716022ae265a3a497b37a7b356053476390d` |
| 2 | `lemma` | [exists_prop_of_containsZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/exists-prop-of-containszero--d7048608f47bedfecc643566.md) | 37 | `result-track:d7048608f47bedfecc6435666269d45e7d85dc8d83c130a089224340f5e15e0a` |
| 3 | `lemma` | [prop_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/prop-of-iszero--bfa6c1f9dc6975d88c727e56.md) | 41 | `result-track:bfa6c1f9dc6975d88c727e5640e864df24bbd407a5d5e7e7771884b7a5bf3420` |
| 4 | `lemma` | [prop_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/prop-zero--989e0deb052e033ac4d1f306.md) | 47 | `result-track:989e0deb052e033ac4d1f306cf282961675fdc33464e56a96038eb25e417737c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/instance--d89f03798d11109105c7ce6e.md) | 51 | `declaration-track:d89f03798d11109105c7ce6e86db3af8ef014c5aa8ed2794eb51ea2cff046fce` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/instance--cddd1030d5b5e2c249aa7d92.md) | 54 | `declaration-track:cddd1030d5b5e2c249aa7d929e52f0a1e94a76178fe7012446d12293aecb549a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/instance--bc8987131636ae5d6d0be74b.md) | 57 | `declaration-track:bc8987131636ae5d6d0be74b05d7fae5a96ee9c0d47337ea6fb7fac4cca830d2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ContainsZero/Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393.lean/declarations/instance--5509bbe84dd229c8353af5e6.md) | 63 | `declaration-track:5509bbe84dd229c8353af5e656954f08dd29e7db21ba13ca8aaecc5fa8f32893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
