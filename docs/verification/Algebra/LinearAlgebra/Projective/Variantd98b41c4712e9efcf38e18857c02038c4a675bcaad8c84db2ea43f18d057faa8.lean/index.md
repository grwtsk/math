# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f2d05777b3df15664553bc6d8f8ee7502b4522",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f2d05777b3df15664553bc6d8f8ee7502b4522`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/module-projective--95da9f27d98d3697e0d7d789.md) | 82 | `declaration-track:95da9f27d98d3697e0d7d789d02570addb92f98b5bd4356eb76ee5624d4785bb` |
| 2 | `theorem` | [projective_def](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-def--b8a73b06095d5d8e5c97ce6d.md) | 94 | `result-track:b8a73b06095d5d8e5c97ce6dbd3e028031f055251911873c7f75b1cad7869506` |
| 3 | `theorem` | [projective_def'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-def--71a1e0537aa1356f99bf314c.md) | 99 | `result-track:71a1e0537aa1356f99bf314cf44506d62d3c24973142eb8d087caf72ae808533` |
| 4 | `theorem` | [projective_lifting_property](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-lifting-property--13a6d6076b4e85ec513d1c18.md) | 105 | `result-track:13a6d6076b4e85ec513d1c18c69d9caadd93c3857bb143282bc9de5ba48c9251` |
| 5 | `theorem` | [Projective.of_lifting_property''](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-of-lifting-property--2e387306a7b39b437e42cf40.md) | 129 | `result-track:2e387306a7b39b437e42cf409ac624ae5a68931e86c585c291ef76419eca4c7a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/instance--d37c6e74c40ed5f762ba01e6.md) | 138 | `declaration-track:d37c6e74c40ed5f762ba01e6a5ef17b87834656f60b47030ab80934d63468141` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/instance--b0d264932458040ec832630c.md) | 147 | `declaration-track:b0d264932458040ec832630c85be8b70377690ecfe635f1c9d6b570d5f09ecbc` |
| 8 | `theorem` | [Projective.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-of-basis--da821368a569210d637d659b.md) | 163 | `result-track:da821368a569210d637d659bcc5d1f8abedcce75efb4c37e2058f4d2b585d575` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/instance--09bceb31842c155f5728a532.md) | 173 | `declaration-track:09bceb31842c155f5728a532dbc2b480b2d8fc2d9606b4784b8b20d1f6a74d4d` |
| 10 | `theorem` | [Projective.of_lifting_property'](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-of-lifting-property--530b3be9dc2c9e02fb4fac34.md) | 185 | `result-track:530b3be9dc2c9e02fb4fac344be47a2d40627c1aa64b40d88273b0f1d7437f9f` |
| 11 | `theorem` | [Projective.of_lifting_property](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantd98b41c4712e9efcf38e18857c02038c4a675bcaad8c84db2ea43f18d057faa8.lean/declarations/projective-of-lifting-property--4b7ba4f4f7291458c327da23.md) | 199 | `result-track:4b7ba4f4f7291458c327da23b7cc260e59f2eace43f60677ddf51d4787315f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
