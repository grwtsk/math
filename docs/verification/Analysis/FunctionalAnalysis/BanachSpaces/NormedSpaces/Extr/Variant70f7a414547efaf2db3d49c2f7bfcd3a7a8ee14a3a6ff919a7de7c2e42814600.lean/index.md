# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Extr.Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c304da7a64e5c4648bfe75f5f932e38f9b5d17",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c304da7a64e5c4648bfe75f5f932e38f9b5d17`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Ray` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxFilter.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/ismaxfilter-norm-add-sameray--ce4b02db2d94a5d8931c7b5b.md) | 42 | `result-track:ce4b02db2d94a5d8931c7b5b73dbeca48a30e1a645df69357ba589f1a0dc1650` |
| 2 | `theorem` | [IsMaxFilter.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/ismaxfilter-norm-add-self--169fdef10afad12b2cc3a90c.md) | 52 | `result-track:169fdef10afad12b2cc3a90c26ba134df81b082619fbe86d751fa65aa5f788f9` |
| 3 | `theorem` | [IsMaxOn.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/ismaxon-norm-add-sameray--bd3b0571e9aa841a7d3b0788.md) | 59 | `result-track:bd3b0571e9aa841a7d3b07883b7c4e22bc6e33035e018e23c927665490c88392` |
| 4 | `theorem` | [IsMaxOn.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/ismaxon-norm-add-self--30363662303abb1ad69af5cb.md) | 65 | `result-track:30363662303abb1ad69af5cb42a7c7dc8c1ebef6a35f128522ac844a7501881a` |
| 5 | `theorem` | [IsLocalMaxOn.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/islocalmaxon-norm-add-sameray--0a47caeae03f73e4ef54366a.md) | 75 | `result-track:0a47caeae03f73e4ef54366ae209d5c3703572b9b2b5bc010fed36116793bcaf` |
| 6 | `theorem` | [IsLocalMaxOn.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/islocalmaxon-norm-add-self--c8f55441ebce111411fecaef.md) | 81 | `result-track:c8f55441ebce111411fecaef11f366d29c1daf39777c238d220ace2cfddffdf6` |
| 7 | `theorem` | [IsLocalMax.norm_add_sameRay](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/islocalmax-norm-add-sameray--05bf1413915f95ca45b0111d.md) | 88 | `result-track:05bf1413915f95ca45b0111d27328293188299d81c73916335778fa8bd03b099` |
| 8 | `theorem` | [IsLocalMax.norm_add_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Extr/Variant70f7a414547efaf2db3d49c2f7bfcd3a7a8ee14a3a6ff919a7de7c2e42814600.lean/declarations/islocalmax-norm-add-self--f1e96405ce0cf6d718708e6c.md) | 94 | `result-track:f1e96405ce0cf6d718708e6cc48ecc0eb58ec39c879185f408c559444075959f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
