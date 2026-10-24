# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a46e40eb205c2a03cc5ee2be449684faae8802",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a46e40eb205c2a03cc5ee2be449684faae8802`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Bases.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasBasis_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/hasbasis-generate--347c7276d6a278911297a3f4.md) | 28 | `result-track:347c7276d6a278911297a3f4bbbfb3cc8f28207fe1f06644ddd0aae928878aa0` |
| 2 | `def` | [FilterBasis.ofSets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/filterbasis-ofsets--c215d2ee37ba8e396838f6ba.md) | 33 | `declaration-track:c215d2ee37ba8e396838f6ba59f5ae6c36f662fe792f235e7becae80bd12e7a9` |
| 3 | `lemma` | [FilterBasis.ofSets_sets](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/filterbasis-ofsets-sets--3e195ed6c633de1b2ec19b27.md) | 41 | `result-track:3e195ed6c633de1b2ec19b27f038bff3553c14f17e7899f02914651ecd686ae8` |
| 4 | `theorem` | [generate_eq_generate_inter](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/generate-eq-generate-inter--164b082406753e87ba994029.md) | 45 | `result-track:164b082406753e87ba994029425e7dec932bcea9ab93ed6af7e695219b48da28` |
| 5 | `theorem` | [ofSets_filter_eq_generate](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/ofsets-filter-eq-generate--54b0475788b2b572c38bbc1e.md) | 49 | `result-track:54b0475788b2b572c38bbc1e146386ae01468bf5aa488332da079343ebacfbe2` |
| 6 | `theorem` | [generate_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/generate-nebot-iff--3b5d1d45c8784178cc6400f4.md) | 53 | `result-track:3b5d1d45c8784178cc6400f4860574c1cc0dad1c157e3cdc79867c266c94b1e1` |
| 7 | `theorem` | [HasBasis.iInf'](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/hasbasis-iinf--a536d749de08eba6f0e2c5a6.md) | 57 | `result-track:a536d749de08eba6f0e2c5a631c0e3ea466e5d09fd22694937ec2103dda13c95` |
| 8 | `theorem` | [HasBasis.iInf](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/hasbasis-iinf--5d693a7458904c65a303cc33.md) | 75 | `result-track:5d693a7458904c65a303cc3326c88eebaaf54e6117f12a517ddafe2111264dd0` |
| 9 | `theorem` | [_root_.Pairwise.exists_mem_filter_basis_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/root-pairwise-exists-mem-filter-basis-of-disjoint--cb8ec017e434ebb95d4141aa.md) | 92 | `result-track:cb8ec017e434ebb95d4141aa038ee9ef2c4231a89473ae94191d7500dd755b13` |
| 10 | `theorem` | [_root_.Set.PairwiseDisjoint.exists_mem_filter_basis](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/root-set-pairwisedisjoint-exists-mem-filter-basis--0d49ba187131905fb95368d4.md) | 100 | `result-track:0d49ba187131905fb95368d48be0e0af03637820648cbf745fb9c039c72c89c6` |
| 11 | `theorem` | [hasBasis_iInf_principal_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant5ad2e1f297fd75ed9482713fe570199908d64c7382f60025c36354192a689b2a.lean/declarations/hasbasis-iinf-principal-finite--b283e32be305262ab7ff3ef7.md) | 110 | `result-track:b283e32be305262ab7ff3ef7b9547a558a92eb295df6ea9dd33e60bd464ea0e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
