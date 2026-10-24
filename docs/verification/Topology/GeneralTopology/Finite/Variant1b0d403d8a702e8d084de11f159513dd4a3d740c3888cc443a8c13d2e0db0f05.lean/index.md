# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad067a06ac0be24e0d077ac4fe05bbbef03a410",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad067a06ac0be24e0d077ac4fe05bbbef03a410`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Bases.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasBasis_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/hasbasis-generate--f0a72c11db31c3486957dd24.md) | 36 | `result-track:f0a72c11db31c3486957dd248cc0ee0700c8c32684e5f34bd50a7fc7938e31c9` |
| 2 | `def` | [FilterBasis.ofSets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/filterbasis-ofsets--f33216ca2bda9a36900c2da4.md) | 41 | `declaration-track:f33216ca2bda9a36900c2da47362701565b75c9bd4b58ccbd4852af0d420b00b` |
| 3 | `lemma` | [FilterBasis.ofSets_sets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/filterbasis-ofsets-sets--ecb5a74694de8fa2647e9c38.md) | 49 | `result-track:ecb5a74694de8fa2647e9c38eb7bd8267ae3cb891fe4572bc17eb4349102664c` |
| 4 | `theorem` | [generate_eq_generate_inter](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/generate-eq-generate-inter--328928ff16bbd99ee6f63322.md) | 53 | `result-track:328928ff16bbd99ee6f6332278f66758554fb421370592e77f123db91cff62cc` |
| 5 | `theorem` | [ofSets_filter_eq_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/ofsets-filter-eq-generate--94832c9a8ea3d4f6c006c57e.md) | 57 | `result-track:94832c9a8ea3d4f6c006c57edee6cc3bb19ea4776434a6f7d73fdc84f2d7ee0d` |
| 6 | `theorem` | [generate_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/generate-nebot-iff--f1def8bc850ec45c3074375c.md) | 61 | `result-track:f1def8bc850ec45c3074375c9b96c50e538d790460e960f96b5a40f7447cee19` |
| 7 | `theorem` | [HasBasis.iInf'](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/hasbasis-iinf--283b262a14ad9dd60be5b308.md) | 65 | `result-track:283b262a14ad9dd60be5b3082b8999e9ff1390ca0a825b99e3ac546906ff8738` |
| 8 | `theorem` | [HasBasis.iInf](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/hasbasis-iinf--42e8f6cc72c93ee9422394c8.md) | 83 | `result-track:42e8f6cc72c93ee9422394c87c2a8c7f71b4c610e387a06425b6e3ab8acb7672` |
| 9 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.Pairwise.exists_mem_filter_basis_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/root-grwtsk-topology-generaltopology-hasbasisgenerate-variant5ad2e1f297f--4c1d68374b9a5f91754738cf.md) | 100 | `result-track:4c1d68374b9a5f91754738cfa95cc8ecd15341ca43ea72e35a75f914690356dd` |
| 10 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.Set.PairwiseDisjoint.exists_mem_filter_basis](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/root-grwtsk-topology-generaltopology-hasbasisgenerate-variant5ad2e1f297f--264e974f7fcf902eb0ad0fca.md) | 108 | `result-track:264e974f7fcf902eb0ad0fca0e8d9a1a0a8787cef6ef080c5408785e18cdcdf9` |
| 11 | `theorem` | [hasBasis_iInf_principal_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant1b0d403d8a702e8d084de11f159513dd4a3d740c3888cc443a8c13d2e0db0f05.lean/declarations/hasbasis-iinf-principal-finite--e46b73ab7f02d76b7359ce7d.md) | 118 | `result-track:e46b73ab7f02d76b7359ce7d7014dfd52bbe06c9978934e74189941934588809` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
