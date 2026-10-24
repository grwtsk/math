# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "157ce7b261eb67521c777cb6dfc4f30a76c98e45",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `157ce7b261eb67521c777cb6dfc4f30a76c98e45`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean.json)

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
| 1 | `theorem` | [hasBasis_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/hasbasis-generate--7b40dd1fa78e87c403dfaa9d.md) | 31 | `result-track:7b40dd1fa78e87c403dfaa9d438bc8ebbaf17905aa288a0d822f24fd0920cac6` |
| 2 | `def` | [FilterBasis.ofSets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/filterbasis-ofsets--ead298c962948e98b9cbdcbb.md) | 36 | `declaration-track:ead298c962948e98b9cbdcbb0324514b246864343f091f46bec08cca38cdb338` |
| 3 | `lemma` | [FilterBasis.ofSets_sets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/filterbasis-ofsets-sets--73cfbf620a41518654457e44.md) | 44 | `result-track:73cfbf620a41518654457e4497543220b03409540c1d5e8b28f8628bfa8b294f` |
| 4 | `theorem` | [generate_eq_generate_inter](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/generate-eq-generate-inter--e158d1dc3f9a385435a410ed.md) | 48 | `result-track:e158d1dc3f9a385435a410ed50ef97cb8f0dfb656dbfafc2ac4be5f7ede582ea` |
| 5 | `theorem` | [ofSets_filter_eq_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/ofsets-filter-eq-generate--ba47c4c5a281c6bd834eab90.md) | 52 | `result-track:ba47c4c5a281c6bd834eab908c4d3791dba2116f4b38f5ef41c927dee23e9fab` |
| 6 | `theorem` | [generate_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/generate-nebot-iff--bc116bfc2b34baa41e7b2f51.md) | 56 | `result-track:bc116bfc2b34baa41e7b2f51e5765091ea7f7e0bbb23396dff7b47d40da45d8d` |
| 7 | `theorem` | [HasBasis.iInf'](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/hasbasis-iinf--5436a7580c9da1304fab4f9a.md) | 60 | `result-track:5436a7580c9da1304fab4f9a46b3ed41ba406eb6f6eb3da3d820b2696cb0dc4b` |
| 8 | `theorem` | [HasBasis.iInf](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/hasbasis-iinf--e5c07c1220e6b4ee3ead8225.md) | 75 | `result-track:e5c07c1220e6b4ee3ead8225692be03d5b0bfbd5ba045b793f16862208184aaa` |
| 9 | `theorem` | [HasBasis.iInf_of_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/hasbasis-iinf-of-finite--44c3ade13c8f8dfd931da08d.md) | 90 | `result-track:44c3ade13c8f8dfd931da08d0d3e675bc29ac7ff84ca31e16deaeca0a9080ee0` |
| 10 | `theorem` | [HasBasis.biInf_finset](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/hasbasis-biinf-finset--716dd6d57bf0ddabc02f869b.md) | 100 | `result-track:716dd6d57bf0ddabc02f869b288af31aec339d6a5ddf1fad21b5c03644723ca4` |
| 11 | `theorem` | [_root_.Pairwise.exists_mem_filter_basis_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/root-pairwise-exists-mem-filter-basis-of-disjoint--62a4790fba8dbd592b98dfb1.md) | 109 | `result-track:62a4790fba8dbd592b98dfb16889210572d8f8c86ee98fbcac194c0a10691321` |
| 12 | `theorem` | [_root_.Set.PairwiseDisjoint.exists_mem_filter_basis](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/root-set-pairwisedisjoint-exists-mem-filter-basis--bd68acf875b3745ebad4cc91.md) | 117 | `result-track:bd68acf875b3745ebad4cc9135a647ddf731704954eaeb79e64153f2fd1b5acc` |
| 13 | `theorem` | [hasBasis_iInf_principal_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/declarations/hasbasis-iinf-principal-finite--1ea5045d4c7901be763b1a67.md) | 127 | `result-track:1ea5045d4c7901be763b1a679dfec6ffab8f05094d5c94f5328e4bef08931846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
