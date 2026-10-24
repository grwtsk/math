# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Tutte.Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179c143888869dcba807b277c2f36b27ef736769",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179c143888869dcba807b277c2f36b27ef736769`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean.json)

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
| 1 | `def` | [IsTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/istutteviolator--2b1b7d2af6705088f1a13d79.md) | 44 | `declaration-track:2b1b7d2af6705088f1a13d795f555c38d8b5564e0969f34fd4a9ac0a5290f25e` |
| 2 | `lemma` | [tutte_exists_isAlternating_isCycles](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/tutte-exists-isalternating-iscycles--a06f3a00c5ea201293f2d9c3.md) | 49 | `result-track:a06f3a00c5ea201293f2d9c3d3e469788d34f49635d2fcc99d21611734da271f` |
| 3 | `lemma` | [IsTutteViolator.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/istutteviolator-mono--35a4b4c745004585f5ae41f8.md) | 68 | `result-track:35a4b4c745004585f5ae41f8923cada35317e909b8139e641c004679cded63ad` |
| 4 | `lemma` | [Subgraph.IsMatching.exists_verts_compl_subset_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/subgraph-ismatching-exists-verts-compl-subset-universalverts--de56a59421e9323198fd7b9a.md) | 85 | `result-track:de56a59421e9323198fd7b9a031c4ab83b7e93bcf8305cfa7321029470aaa443` |
| 5 | `theorem` | [Subgraph.IsPerfectMatching.exists_of_isClique_supp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/subgraph-isperfectmatching-exists-of-isclique-supp--8a143b663eb81e4f18ede38c.md) | 131 | `result-track:8a143b663eb81e4f18ede38c2d0722c85edbede580122fa4da9c3bda5306b941` |
| 6 | `theorem` | [IsTutteViolator.empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/istutteviolator-empty--1f834860410d712ee02be8d7.md) | 147 | `result-track:1f834860410d712ee02be8d7fa45a1d25849e4293b3740821dc43ba0b2fee182` |
| 7 | `lemma` | [not_isTutteViolator_of_isPerfectMatching](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/not-istutteviolator-of-isperfectmatching--6387b4eda3a6e5e638681806.md) | 152 | `result-track:6387b4eda3a6e5e6386818062b55b4bc7f2682d16196baae62ba90e4c67b7f46` |
| 8 | `theorem` | [tutte_exists_isPerfectMatching_of_near_matchings](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/tutte-exists-isperfectmatching-of-near-matchings--18f99828e19ca0c50239a531.md) | 165 | `result-track:18f99828e19ca0c50239a53192ca5e027a4c85c38682aa838f2aa022165e5175` |
| 9 | `lemma` | [exists_isTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/exists-istutteviolator--3da4fbd16e873c60cd31ea3f.md) | 280 | `result-track:3da4fbd16e873c60cd31ea3f5299c04b480d8b994daf59f5460412f60994b8b8` |
| 10 | `theorem` | [tutte](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantfe867f0fb6323a472eaa37ae8f480bfa31bebb3bd0d02c44eb2817e76e2f1b11.lean/declarations/tutte--c316332f685b382ba31a46fa.md) | 327 | `result-track:c316332f685b382ba31a46fae557bc57bfa3e7962234ec8df1e1ba5aad1bfebf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
