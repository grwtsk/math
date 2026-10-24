# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UniversalVerts.Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6a687b683636f25ee4293237337bd534c8e9729",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6a687b683636f25ee4293237337bd534c8e9729`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Represents` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Matching` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/declarations/universalverts--ed1a7968c010f5bffb6fe408.md) | 40 | `declaration-track:ed1a7968c010f5bffb6fe40845f1433304630720791e178baec8fabfd935e456` |
| 2 | `lemma` | [isClique_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/declarations/isclique-universalverts--0bc985f66ac0af38b2eefced.md) | 42 | `result-track:0bc985f66ac0af38b2eefced5fd7581623e8415665e2a8bfdabe9a41ccfa814d` |
| 3 | `def` | [deleteUniversalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/declarations/deleteuniversalverts--98270a77dd298680777e2a10.md) | 49 | `declaration-track:98270a77dd298680777e2a108bea3cfdbba8c94b02c8b78deabfa35540d2fbeb` |
| 4 | `lemma` | [Subgraph.IsMatching.exists_of_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/declarations/subgraph-ismatching-exists-of-universalverts--03e2b3ee5ad356924806b211.md) | 52 | `result-track:03e2b3ee5ad356924806b2111a6ddcdea440614cb18fe0f4b1ec413ae4099741` |
| 5 | `lemma` | [disjoint_image_val_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/declarations/disjoint-image-val-universalverts--34f51bd83b1823d6793c387b.md) | 63 | `result-track:34f51bd83b1823d6793c387b6d075aa6f028dde478ee03f1aa4c776d33276403` |
| 6 | `lemma` | [even_ncard_image_val_supp_sdiff_image_val_rep_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UniversalVerts/Variant0b58c5be80353dc74af103e6e0b78ab8a08f1a9352ebb6e0118aacc62ccef806.lean/declarations/even-ncard-image-val-supp-sdiff-image-val-rep-union--8129aa89c573c29227ee71cd.md) | 73 | `result-track:8129aa89c573c29227ee71cd33f5f057ffcb3b0b5252868158e03e771449fc9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
