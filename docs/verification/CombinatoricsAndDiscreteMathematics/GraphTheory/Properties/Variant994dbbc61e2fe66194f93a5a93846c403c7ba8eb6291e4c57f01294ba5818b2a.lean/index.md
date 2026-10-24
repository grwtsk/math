# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Properties.Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2befb42ed58d87578a8636461e197ff3f2491b7d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2befb42ed58d87578a8636461e197ff3f2491b7d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Ends.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/declarations/instance--005ea792315a20758d9e1b69.md) | 21 | `declaration-track:005ea792315a20758d9e1b69b39738ade46c17bea6ada26f1e53354296378384` |
| 2 | `lemma` | [end_componentCompl_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/declarations/end-componentcompl-infinite--1e42a869f675b3cd4c02cefd.md) | 30 | `result-track:1e42a869f675b3cd4c02cefd8643029d451b0a2dfe9c5a0e38285b9d34efeac1` |
| 3 | `instance` | [compononentComplFunctor_nonempty_of_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/declarations/compononentcomplfunctor-nonempty-of-infinite--23e153aec3d3f21fe2d1830f.md) | 36 | `declaration-track:23e153aec3d3f21fe2d1830f6604ae76b48fdfe07883ec88231d92a95cbe6c00` |
| 4 | `instance` | [componentComplFunctor_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/declarations/componentcomplfunctor-finite--1af65a09d56f5bbee9817d27.md) | 39 | `declaration-track:1af65a09d56f5bbee9817d274857dc69e2d11a535bbe5c01d96bbf27f8ad61f9` |
| 5 | `lemma` | [nonempty_ends_of_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/declarations/nonempty-ends-of-infinite--76cd2ef2404691bacebf79cf.md) | 43 | `result-track:76cd2ef2404691bacebf79cf587bfc422bc9416715ff7b23a113a7155479095f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
