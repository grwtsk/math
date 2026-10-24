# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a1c08d3822ced071a902b1e2342aeef4ce7fd84",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a1c08d3822ced071a902b1e2342aeef4ce7fd84`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean.json)

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
| 1 | `theorem` | [hasBasis_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/hasbasis-generate--e2b57162b8f27b72acb932d0.md) | 39 | `result-track:e2b57162b8f27b72acb932d04736063f7eb2d8446c0022530e831493613d4ec6` |
| 2 | `def` | [FilterBasis.ofSets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/filterbasis-ofsets--d6bbc02220a021ae4bfd8c4a.md) | 44 | `declaration-track:d6bbc02220a021ae4bfd8c4a5a11975872d38e55b445956c292a5b8733f3f369` |
| 3 | `lemma` | [FilterBasis.ofSets_sets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/filterbasis-ofsets-sets--aada394c48d7627541571afa.md) | 52 | `result-track:aada394c48d7627541571afa4a8b4737b1baae52a090b1898da4ce9700eae8bd` |
| 4 | `theorem` | [generate_eq_generate_inter](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/generate-eq-generate-inter--75b1da25b6ff75b980b910c3.md) | 56 | `result-track:75b1da25b6ff75b980b910c38d02606e9399cb2dd6d09509b78d06a31105c69b` |
| 5 | `theorem` | [ofSets_filter_eq_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/ofsets-filter-eq-generate--4fef8650d2d072e891ce56f1.md) | 60 | `result-track:4fef8650d2d072e891ce56f1752b4198ef33693e1ad9163d671c4ea65e394756` |
| 6 | `theorem` | [generate_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/generate-nebot-iff--712913b562365070fbe04ba0.md) | 64 | `result-track:712913b562365070fbe04ba0c48eb26bc29918adcf9323556bf3f1df21dfc5d6` |
| 7 | `theorem` | [HasBasis.iInf'](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/hasbasis-iinf--aa2447d863357c7501a3637d.md) | 68 | `result-track:aa2447d863357c7501a3637d6f094e5518a635b72835ac943d538a66c0f0926c` |
| 8 | `theorem` | [HasBasis.iInf](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/hasbasis-iinf--be27e926b2c4750b2ea0e8d8.md) | 83 | `result-track:be27e926b2c4750b2ea0e8d859ab7c8ca5f741525550e98e5ddd8ad2191f7985` |
| 9 | `theorem` | [HasBasis.iInf_of_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/hasbasis-iinf-of-finite--ab93b0aeb5e97c05cd509e62.md) | 98 | `result-track:ab93b0aeb5e97c05cd509e62f5cb7b179797c0efdfd413a6abbdcb21edbf801d` |
| 10 | `theorem` | [HasBasis.biInf_finset](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/hasbasis-biinf-finset--4f562b667fb3993f2128a1cc.md) | 108 | `result-track:4f562b667fb3993f2128a1cc08819fbc0c846048d242bd0b402fdcf6164bc291` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.Pairwise.exists_mem_filter_basis_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/root-grwtsk-topology-generaltopology-hasbasisgenerate-variant3b708dd87a7--00364a04300e153a8001bdf9.md) | 117 | `result-track:00364a04300e153a8001bdf97687099d2e561df0e52112fb52997e332b70db6e` |
| 12 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasBasisGenerate.Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.Set.PairwiseDisjoint.exists_mem_filter_basis](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/root-grwtsk-topology-generaltopology-hasbasisgenerate-variant3b708dd87a7--ab4d7652f12bc0e3fade2b5a.md) | 125 | `result-track:ab4d7652f12bc0e3fade2b5a01f580d21055417694bf2706b7e05cb4e0cfa272` |
| 13 | `theorem` | [hasBasis_iInf_principal_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant821d651fc54298f2dd7ca1e2d780cc0f97a46080376f33a786ac86ed1f878971.lean/declarations/hasbasis-iinf-principal-finite--4b2cb2238ad0df9f66a57f8d.md) | 135 | `result-track:4b2cb2238ad0df9f66a57f8dc1ffcdfaf0ca33e25eceb32978f3f7f65010a700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
