# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Dependency.Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ee7677c6a9487da3a227a88467b8caf9347073c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ee7677c6a9487da3a227a88467b8caf9347073c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFounded` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DependsTransitively](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/dependstransitively--6d028f69eb5cdba9f1396ca1.md) | 17 | `declaration-track:6d028f69eb5cdba9f1396ca10c319c7cde24a17e2027ed7a52b47a3e8df5d449` |
| 2 | `structure` | [DependencyGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/dependencygraph--14ed959fb25f2635a550a2b5.md) | 29 | `declaration-track:14ed959fb25f2635a550a2b59a71c23ecb5a0e346444f9f3ae9130e651f58eff` |
| 3 | `theorem` | [wellFoundedCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/wellfoundedcertificate--88357c84c1f2220ee1f7dd97.md) | 39 | `result-track:88357c84c1f2220ee1f7dd97d7db517d5ad46f8d3415aa7794dcf7861f3f7cb3` |
| 4 | `theorem` | [noDependencyCycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/nodependencycycle--05415ed65a4e0ea4b95055a5.md) | 48 | `result-track:05415ed65a4e0ea4b95055a5b994b6bb2a7921722bf9c1fbd6af85524b2687a9` |
| 5 | `theorem` | [transitiveRankLt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/transitiveranklt--a5b3d85e8164b31cfb615bf4.md) | 58 | `result-track:a5b3d85e8164b31cfb615bf49f8af48e6eeec9ed659927ea0c83a36c20db836d` |
| 6 | `theorem` | [noTransitiveSelfDependency](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/notransitiveselfdependency--860bd2ca934da4d95b5b4b91.md) | 70 | `result-track:860bd2ca934da4d95b5b4b91b6a82d43ac393f57b2ef325f8ea70d1095358f5f` |
| 7 | `inductive` | [AssuranceProjectComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/assuranceprojectcomponent--91b18cce4d85f73ab3fde69e.md) | 81 | `declaration-track:91b18cce4d85f73ab3fde69efb594c685a8778156281941b667d1b6091488855` |
| 8 | `def` | [assuranceProjectRank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/assuranceprojectrank--3e8b721b912e6b2f44cf5c34.md) | 91 | `declaration-track:3e8b721b912e6b2f44cf5c34471d52f7871b4e4b044488e903693c2476471fe3` |
| 9 | `inductive` | [AssuranceProjectDepends](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/assuranceprojectdepends--079dbc233f3127a3b600c6e4.md) | 100 | `declaration-track:079dbc233f3127a3b600c6e4a59898cff4df7360e8509311822bc55c18c298bc` |
| 10 | `def` | [assuranceProjectGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/assuranceprojectgraph--f6515526a2c176b90f34eff6.md) | 109 | `declaration-track:f6515526a2c176b90f34eff66b9754bee9e0563a7f8e849bd897593d52880ded` |
| 11 | `theorem` | [assuranceProjectGraph_acyclic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variantb23afda03376e29c79ce737dc52a5759f705fe25280dca06bbe20f7ac11d658f.lean/declarations/assuranceprojectgraph-acyclic--d3c1b257efe655d0cb2a5a9e.md) | 117 | `result-track:d3c1b257efe655d0cb2a5a9eb2052e7039ab776829037ae5f608ad13d8b2bf26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
