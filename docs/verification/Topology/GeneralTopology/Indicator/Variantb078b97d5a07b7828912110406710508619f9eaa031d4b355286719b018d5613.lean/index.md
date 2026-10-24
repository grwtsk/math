# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e02c32a5138b3cf49ab11a0c9f236beed6ebb46",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e02c32a5138b3cf49ab11a0c9f236beed6ebb46`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_mulIndicator_subset_of_eq_one](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/prod-mulindicator-subset-of-eq-one--aacf8904c2ef9b18890182bb.md) | 29 | `result-track:aacf8904c2ef9b18890182bb96cc9f79f8d5131423d43e362bb6c35e1f09ebe8` |
| 2 | `lemma` | [prod_mulIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/prod-mulindicator-subset--f316490971e1bef66ad8bad4.md) | 40 | `result-track:f316490971e1bef66ad8bad4ba574e67970b8b043412c5cd326975a5f5b27723` |
| 3 | `lemma` | [prod_mulIndicator_eq_prod_filter](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/prod-mulindicator-eq-prod-filter--756fec6ce379cc408c1f643e.md) | 45 | `result-track:756fec6ce379cc408c1f643eb9dbbf0ffdf46322969910ce8325bd5ba8fef0e6` |
| 4 | `lemma` | [prod_mulIndicator_eq_prod_inter](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/prod-mulindicator-eq-prod-inter--be197cb06fd914d10dff29f1.md) | 54 | `result-track:be197cb06fd914d10dff29f10a2bed52e870d9ac39c57b5b72c9e4107737fcbd` |
| 5 | `lemma` | [mulIndicator_prod](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/mulindicator-prod--5d335ac59ac0d449c2380de7.md) | 59 | `result-track:5d335ac59ac0d449c2380de770111a2bf7f7d92e81ef5e8f20f2d397f4a9ccbd` |
| 6 | `lemma` | [mulIndicator_biUnion](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/mulindicator-biunion--16056af0d57c69f66905be27.md) | 64 | `result-track:16056af0d57c69f66905be27999c95fd91c123eedab2acc53307e88907a72070` |
| 7 | `lemma` | [mulIndicator_biUnion_apply](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variantb078b97d5a07b7828912110406710508619f9eaa031d4b355286719b018d5613.lean/declarations/mulindicator-biunion-apply--3065073e025bbb5cec683803.md) | 77 | `result-track:3065073e025bbb5cec6838035aa01f42e73c13e1bfa22c53cf285d3a7b38bd9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
