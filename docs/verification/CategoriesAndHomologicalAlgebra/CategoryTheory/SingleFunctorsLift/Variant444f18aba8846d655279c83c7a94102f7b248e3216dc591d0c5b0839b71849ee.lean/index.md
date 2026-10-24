# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleFunctorsLift.Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41c2a184dc7f71859d20b499744eea1cfa99dd95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41c2a184dc7f71859d20b499744eea1cfa99dd95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/declarations/shiftiso--62f83f29a5865f444ed30d9a.md) | 50 | `declaration-track:62f83f29a5865f444ed30d9afa5092caceb8d75e8e1c24666712168b750a5138` |
| 2 | `lemma` | [map_shiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/declarations/map-shiftiso-hom-app--f6f1b7d80ba169c641220e67.md) | 58 | `result-track:f6f1b7d80ba169c641220e676bf1d342a1006ab3d9e3beec6d795dddccfc80b0` |
| 3 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/declarations/lift--dc2874175c3b4ee93e6039be.md) | 75 | `declaration-track:dc2874175c3b4ee93e6039be1f303f7cd7693881269b5d965612ff5c1fa6f130` |
| 4 | `lemma` | [map_lift_shiftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/declarations/map-lift-shiftiso-hom-app--653ef1a8d2e9ed2b20209145.md) | 92 | `result-track:653ef1a8d2e9ed2b2020914566e79c50d7b61ff4c860b8bbcb59033bb93402cf` |
| 5 | `def` | [liftPostcompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/declarations/liftpostcompiso--a392732d95307db2fa7fb0a8.md) | 102 | `declaration-track:a392732d95307db2fa7fb0a841292b17594e76292af39e69163129aab4518c48` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctorsLift/Variant444f18aba8846d655279c83c7a94102f7b248e3216dc591d0c5b0839b71849ee.lean/declarations/instance--f790e27584919da78b36da7c.md) | 110 | `declaration-track:f790e27584919da78b36da7cd4065b5dc99f79be6c93a247fd5439b29e36f372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
