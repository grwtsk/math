# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.StupidTrunc.Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f41fb3bfbf3ac38bef52a69445d45d15e0c3fce",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f41fb3bfbf3ac38bef52a69445d45d15e0c3fce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Extend` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.IsSupported` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.Restriction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stupidTrunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtrunc--dcf8b267dec871664eacb359.md) | 45 | `declaration-track:dcf8b267dec871664eacb3596e3a326f3a30812aa56fd6ce0e9f4165c1370195` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/instance--103605c329c7f6221e4c2a0c.md) | 47 | `declaration-track:103605c329c7f6221e4c2a0c8c0aaa59c4c49ca07fd480b7837fb46d7a16fc0f` |
| 3 | `def` | [stupidTruncXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtruncxiso--1f5f148469f2e41bcc9310af.md) | 52 | `declaration-track:1f5f148469f2e41bcc9310af529ad7b1e38756dffa51529a42d3560575d80909` |
| 4 | `lemma` | [isZero_stupidTrunc_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/iszero-stupidtrunc-x--26265d24666ce98438bde775.md) | 56 | `result-track:26265d24666ce98438bde7758eb71dbc511d5ffda5e3ff257012d963159b557f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/instance--cd8e4a5af3b8c744ef5d4c21.md) | 60 | `declaration-track:cd8e4a5af3b8c744ef5d4c218b2b2e3364e19747684ef1a31f17d0913a0938c9` |
| 6 | `lemma` | [isZero_stupidTrunc_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/iszero-stupidtrunc-iff--79b84a85133ce0ee57f75f70.md) | 70 | `result-track:79b84a85133ce0ee57f75f7094bb02b28900e3c31bd9dda4e333808baf333d20` |
| 7 | `def` | [stupidTruncMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtruncmap--9c0783379ed32bb52b58816d.md) | 84 | `declaration-track:9c0783379ed32bb52b58816d3d30aa5ba5b1b18628ef7b1800d142fe344a0455` |
| 8 | `lemma` | [stupidTruncMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtruncmap-id--28fdb152587a7ee047fb4cd8.md) | 89 | `result-track:28fdb152587a7ee047fb4cd8232c6bedfe47d4be06c590ebdaf9eff69e48e01a` |
| 9 | `lemma` | [stupidTruncMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtruncmap-comp--20ce554ebbad17b20d53e969.md) | 93 | `result-track:20ce554ebbad17b20d53e9697ee3813a8eadf720a3f2633d7fb4ec75c334e0e3` |
| 10 | `lemma` | [stupidTruncMap_stupidTruncXIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtruncmap-stupidtruncxiso-hom--c0dc6a47ccd0e39cd180c9f8.md) | 98 | `result-track:c0dc6a47ccd0e39cd180c9f845e5a95f88a6c369ea812fbe37a1ffe0f153f9f5` |
| 11 | `def` | [stupidTruncFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variantd4042d1b6f32c6201944e5fe2ed81dfb1bd1d7b62f18fd380ce5098992245469.lean/declarations/stupidtruncfunctor--25cc3c54c79f68abf4d16279.md) | 113 | `declaration-track:25cc3c54c79f68abf4d162793f8091e65d1490a6b6aa73a72b479543cd1648f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
