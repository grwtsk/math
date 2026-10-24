# Verification target: GRWTSK.Algebra.GroupTheory.Graph.Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dff422b488ef27c138c8fb65736e7dab4e25a8b8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dff422b488ef27c138c8fb65736e7dab4e25a8b8`.

Source path: `GRWTSK/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/mgraph--1e13fe883988969673228076.md) | 50 | `declaration-track:1e13fe8839889696732280762e7eca54dd23ed1ed3ee381da4a1f3e043aa2236` |
| 2 | `lemma` | [mem_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/mem-mgraph--792bb247daa66c83c04c7d70.md) | 62 | `result-track:792bb247daa66c83c04c7d70a729a56814776d7c02b4bf06644504a22b4d480a` |
| 3 | `lemma` | [mgraph_eq_mrange_prod](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/mgraph-eq-mrange-prod--4d09d87f1fb95ed5ea4577af.md) | 65 | `result-track:4d09d87f1fb95ed5ea4577af6df3a479d10f67bc435c6f56ef6ec78508dffd7b` |
| 4 | `lemma` | [exists_mrange_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/exists-mrange-eq-mgraph--f7852b0c507333eb6eabe197.md) | 80 | `result-track:f7852b0c507333eb6eabe1972ffbb37e708a67b34abaf2d3d1ecff2d305378ad` |
| 5 | `lemma` | [exists_mulEquiv_mrange_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/exists-mulequiv-mrange-eq-mgraph--b1e97b7ed2359d22a8b32fc7.md) | 106 | `result-track:b1e97b7ed2359d22a8b32fc7c2db5e7c9b344e644358cf7fbddd4caa4c9efe2e` |
| 6 | `lemma` | [Submonoid.exists_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/submonoid-exists-eq-mgraph--d75a482f28eea74bb905ce5b.md) | 133 | `result-track:d75a482f28eea74bb905ce5be7faa364650dbce2dcbadac0ecf8ab3dcdd625fa` |
| 7 | `lemma` | [Submonoid.exists_mulEquiv_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/submonoid-exists-mulequiv-eq-mgraph--8cbed515ae2cf9afc0cfdbdd.md) | 146 | `result-track:8cbed515ae2cf9afc0cfdbdd943c6fd91202b7c535c7cf06e79db18406dda297` |
| 8 | `def` | [graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/graph--5acfa521623836f6463123f3.md) | 166 | `declaration-track:5acfa521623836f6463123f3526897c02a1228c8e1a395476782196b45fb4ce9` |
| 9 | `lemma` | [mem_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/mem-graph--b5a3cf96a86a7f17db3f362b.md) | 177 | `result-track:b5a3cf96a86a7f17db3f362b798dd9c8eb7a0bd8356c1f4389efcce972b30763` |
| 10 | `lemma` | [graph_eq_range_prod](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/graph-eq-range-prod--5dea22fe8597c5d55865c808.md) | 180 | `result-track:5dea22fe8597c5d55865c80811eb7831c4a921e68e5def7f6adbacc92cf04637` |
| 11 | `lemma` | [exists_range_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/exists-range-eq-graph--cfa4dfcfc0e21ad52e465db1.md) | 195 | `result-track:cfa4dfcfc0e21ad52e465db1e36a1e2b2bc3ee09f08fcabedc2c77dee5edf08e` |
| 12 | `lemma` | [exists_mulEquiv_range_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/exists-mulequiv-range-eq-graph--60dc4ee30cec5e6a2d340d9d.md) | 212 | `result-track:60dc4ee30cec5e6a2d340d9da402813f0edc621f03818479e29f42fb43574ad3` |
| 13 | `lemma` | [Subgroup.exists_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/subgroup-exists-eq-graph--5330afe5b85b2a1ed33e63bb.md) | 228 | `result-track:5330afe5b85b2a1ed33e63bbc3b1313fd18f4913075446eb934c83ee0c0a18e2` |
| 14 | `lemma` | [Subgroup.exists_mulEquiv_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantcb0e5dd53b7ac0f707aaa0bf22be2296c1a5c0c7664ee4b715496ac86c782022.lean/declarations/subgroup-exists-mulequiv-eq-graph--f08f799b4e638f9343e7c93f.md) | 240 | `result-track:f08f799b4e638f9343e7c93fd9abba3fcaa8778e34ab2133fbdd951e0ba9262e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
