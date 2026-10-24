# Verification target: GRWTSK.Topology.GeneralTopology.ApproximateUnit.Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f60566fcc3f99f22738cda7df2df625234a9fb38",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f60566fcc3f99f22738cda7df2df625234a9fb38`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Monoid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filter.IsApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/declarations/filter-isapproximateunit--932edb8fb4020ea19b477f37.md) | 25 | `declaration-track:932edb8fb4020ea19b477f3705f0f9069e2a7357055b601c396bb3e38ecad2f2` |
| 2 | `lemma` | [pure_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/declarations/pure-one--2d7d6388a25d0bc024d1fd4e.md) | 42 | `result-track:2d7d6388a25d0bc024d1fd4e783e2081d999dc4f3a973cce8d0b3034044f85fb` |
| 3 | `lemma` | [mono](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/declarations/mono--f10db6571f024712c1d17704.md) | 48 | `result-track:f10db6571f024712c1d1770444bd24cc0ce095d8104080db62d60dcc2b5167a7` |
| 4 | `lemma` | [nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/declarations/nhds-one--6feb2c4cbb7136362a6c7c53.md) | 55 | `result-track:6feb2c4cbb7136362a6c7c53504f546a1526fa8d4f988892a311eff590348431` |
| 5 | `lemma` | [iff_neBot_and_le_nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/declarations/iff-nebot-and-le-nhds-one--fcc0576ee4747188bb10237b.md) | 60 | `result-track:fcc0576ee4747188bb10237b2abe579101c7b9adf3d75cce5f91a5f0cbe3b178` |
| 6 | `lemma` | [iff_le_nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/declarations/iff-le-nhds-one--793103b635590441fbd331d5.md) | 66 | `result-track:793103b635590441fbd331d56f9fe6db9f651e594eb7e5a6e46a3cfc96d25a25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
