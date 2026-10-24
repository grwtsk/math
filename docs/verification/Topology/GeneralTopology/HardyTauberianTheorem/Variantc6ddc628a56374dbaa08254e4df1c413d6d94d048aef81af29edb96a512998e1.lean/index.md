# Verification target: GRWTSK.Topology.GeneralTopology.HardyTauberianTheorem.Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70d22fe46bdb3cee54d3235d96cd5fcf6a216252",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70d22fe46bdb3cee54d3235d96cd5fcf6a216252`.

Source path: `GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hardy_s](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-s--5f303b9769ab593173e81aca.md) | 47 | `declaration-track:5f303b9769ab593173e81aca380ff30ae0c2c082bb5b7c2d9727ed4cf86d951b` |
| 2 | `def` | [hardy_sigma](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-sigma--91806bb62e8b5c0177f5a225.md) | 52 | `declaration-track:91806bb62e8b5c0177f5a2254d5229cf2dfa8ed2e78e46a117919e29af32a614` |
| 3 | `def` | [hardy_sigma_delayed](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-sigma-delayed--c506f6ab7a0ee4247cbebb1a.md) | 57 | `declaration-track:c506f6ab7a0ee4247cbebb1a6960f18d3192a3e28445a0eac634bfdd208ee500` |
| 4 | `theorem` | [hardy_sigma_delayed_eq](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-sigma-delayed-eq--506559cf802965d8a698eb7b.md) | 62 | `result-track:506559cf802965d8a698eb7b320efdd59e8fee8c3f6b25938dc581d41f3ab1ec` |
| 5 | `theorem` | [hardy_sigma_delayed_tendsto](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-sigma-delayed-tendsto--6d4d0d08904491d2c9edff85.md) | 77 | `result-track:6d4d0d08904491d2c9edff8557f76eadc815b9eee8cb0df130cec1bf63a4b81e` |
| 6 | `theorem` | [hardy_sigma_delayed_sub_s_eq](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-sigma-delayed-sub-s-eq--cbc13a806a783ee373741aa2.md) | 122 | `result-track:cbc13a806a783ee373741aa285ccb640cb4c1a28ed3d207a4ee0c6234c6984d4` |
| 7 | `theorem` | [hardy_sigma_delayed_bound](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-sigma-delayed-bound--8a07636c5c9d5492c6159c6d.md) | 146 | `result-track:8a07636c5c9d5492c6159c6de1b2d139db7bd8e33a45abdf707702a50436277a` |
| 8 | `lemma` | [k_n_properties](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/k-n-properties--ba9c15eed29c2725375e4df3.md) | 171 | `result-track:ba9c15eed29c2725375e4df3ec08c324ecebcee0c03ebc7d4cb86ccd557673e6` |
| 9 | `def` | [hardy_k](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-k--4952e14c183565224ca944a4.md) | 182 | `declaration-track:4952e14c183565224ca944a41e5df9a7529d969e49e68b5286b70c02c56dbde9` |
| 10 | `lemma` | [hardy_diff_bound](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-diff-bound--77fc2b421d3f22de83257d5a.md) | 187 | `result-track:77fc2b421d3f22de83257d5a7f1dc5c010ff23a36551e9ad587b29b49a4ced7d` |
| 11 | `lemma` | [tendsto_of_approx_aux](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/tendsto-of-approx-aux--066a10b57495083b1c1c5c8c.md) | 209 | `result-track:066a10b57495083b1c1c5c8cf113996bb4f9ee15573fc92295245fed51a6ce2c` |
| 12 | `lemma` | [hardy_k_ratio_bounded](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-k-ratio-bounded--00eaef7a20ec62b822735bc1.md) | 220 | `result-track:00eaef7a20ec62b822735bc139e9bba95331672cb9dbeb82a93726ed312d7556` |
| 13 | `theorem` | [hardy_tauberian](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-tauberian--259f10487f2cbc628f5fead1.md) | 236 | `result-track:259f10487f2cbc628f5fead121a9770999f2f5bae83a0e6f789b0b9dd0968145` |
| 14 | `theorem` | [hardy_tauberian_theorem](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variantc6ddc628a56374dbaa08254e4df1c413d6d94d048aef81af29edb96a512998e1.lean/declarations/hardy-tauberian-theorem--6d1d5b90f3c93080d15b7745.md) | 255 | `result-track:6d1d5b90f3c93080d15b7745fadd3a98490e17a2e3029536171c5ddbed86b0d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
