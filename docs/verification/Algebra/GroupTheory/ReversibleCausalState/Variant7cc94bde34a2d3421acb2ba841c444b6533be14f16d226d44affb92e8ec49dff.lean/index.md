# Verification target: GRWTSK.Algebra.GroupTheory.ReversibleCausalState.Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d867e425136f496222bc90e44c382b4fadcac0a1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d867e425136f496222bc90e44c382b4fadcac0a1`.

Source path: `GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReversibleSystem](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/reversiblesystem--433ab2d4ac730effe8e1be3a.md) | 31 | `declaration-track:433ab2d4ac730effe8e1be3a9c1d0476ecd2ddda6ef000c3077552cdbf88f2f0` |
| 2 | `def` | [ForwardCausalEquivalent](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardcausalequivalent--5f134580de5f63eb84afb8e6.md) | 43 | `declaration-track:5f134580de5f63eb84afb8e65ddd41f1b73e35cdf45974bbf84eea3155b55b10` |
| 3 | `def` | [BilateralCausalEquivalent](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralcausalequivalent--77f3908afa217fb146a8f751.md) | 51 | `declaration-track:77f3908afa217fb146a8f751b1722c4100d93763ef6a605112c04ee33dfc56c4` |
| 4 | `def` | [forwardSetoid](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardsetoid--efc97cc887a1bc9b73187e81.md) | 60 | `declaration-track:efc97cc887a1bc9b73187e81399befc11e037fcf06e5e5c0c79c4804c3af491e` |
| 5 | `def` | [bilateralSetoid](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralsetoid--512b8fa51142378a2013f58e.md) | 70 | `declaration-track:512b8fa51142378a2013f58e49d47f476ca2add28c0bec9a03b0788712e926f3` |
| 6 | `def` | [ForwardCausalState](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardcausalstate--7aae2e1cf4387fda390d0af7.md) | 90 | `declaration-track:7aae2e1cf4387fda390d0af7a564f4a00fbb1745d60e0e943708ef6323435b60` |
| 7 | `def` | [BilateralCausalState](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralcausalstate--5d335d0c1be3101969b18137.md) | 95 | `declaration-track:5d335d0c1be3101969b1813710f8af9bd82fc40ffcf2eff1d43feb80e147c4af` |
| 8 | `def` | [toBilateral](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/tobilateral--7c34e8d72923c9376e67be60.md) | 100 | `declaration-track:7c34e8d72923c9376e67be60dd58fd854ce52daf36ae22c25361695f3f4cee52` |
| 9 | `theorem` | [bilateral_step](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateral-step--2f935c0c6b31bca6d5799d15.md) | 105 | `result-track:2f935c0c6b31bca6d5799d153f665dd5f07f067774b8c13216999a7ded65a668` |
| 10 | `theorem` | [bilateral_step_symm](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateral-step-symm--f4301b35fe1a7f85cab64319.md) | 120 | `result-track:f4301b35fe1a7f85cab6431906c87b550b428702b55a04c31b0d4fcdd6115963` |
| 11 | `def` | [bilateralStepPerm](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralstepperm--e4f0af1cc0bec3ff1792925d.md) | 136 | `declaration-track:e4f0af1cc0bec3ff1792925d3abceeeaacaa49296ce5e506171e75934e75462a` |
| 12 | `theorem` | [bilateralStepPerm_toBilateral](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralstepperm-tobilateral--e394e4b89d6d8e7f6778cb30.md) | 155 | `result-track:e394e4b89d6d8e7f6778cb30ed927386ce81db1dea91d53b303749ba7346a70c` |
| 13 | `def` | [bilateralObserve](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralobserve--55799986abdb6e5876861eb9.md) | 163 | `declaration-track:55799986abdb6e5876861eb92eacc37dcee2de141c2bc0711a9ab37545891152` |
| 14 | `theorem` | [bilateralObserve_toBilateral](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/bilateralobserve-tobilateral--9b8367e6107b085925b6f093.md) | 172 | `result-track:9b8367e6107b085925b6f09387ddfe113066f61d1c692ebdaf6d4d2ad0ba3821` |
| 15 | `theorem` | [forward_eq_bilateral_of_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forward-eq-bilateral-of-pow-eq-one--c0b3e89106a952a1d01cd90f.md) | 183 | `result-track:c0b3e89106a952a1d01cd90f819ca1221f5c16880c6bd9747e76d53e1cf9be06` |
| 16 | `def` | [forwardCausalStateEquivBilateralOfPowEqOne](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardcausalstateequivbilateralofpoweqone--0e0b05d0faf1c9787955323e.md) | 226 | `declaration-track:0e0b05d0faf1c9787955323ef251690b2249731c93983fda7cb96df84f1fd64a` |
| 17 | `theorem` | [forwardCausalStateEquivBilateralOfPowEqOne_mk](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardcausalstateequivbilateralofpoweqone-mk--5f62c0e8ecc5ad7d735a9773.md) | 257 | `result-track:5f62c0e8ecc5ad7d735a977320e017eada99d71eeae06a230d6760518e207ae8` |
| 18 | `def` | [forwardStepPermOfPowEqOne](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardsteppermofpoweqone--b54b1e6b3475c34d9a77a50f.md) | 273 | `declaration-track:b54b1e6b3475c34d9a77a50f2d167ab36f94977b135f34b1db05b4469dab4f2c` |
| 19 | `theorem` | [forwardStepPermOfPowEqOne_mk](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardsteppermofpoweqone-mk--4002d6962806405b108fd66c.md) | 284 | `result-track:4002d6962806405b108fd66ca656457053511fa75dbb76a81a024c91d675b81b` |
| 20 | `theorem` | [forward_eq_bilateral_of_finite](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forward-eq-bilateral-of-finite--7d6bbf7f120bec552c9055dc.md) | 296 | `result-track:7d6bbf7f120bec552c9055dc534201fcbfbbf31253cba4161cb5aee07a319e41` |
| 21 | `def` | [forwardCausalStateEquivBilateralOfFinite](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardcausalstateequivbilateraloffinite--f02c3f842bc6c29a97899f74.md) | 305 | `declaration-track:f02c3f842bc6c29a97899f7438e24454819ba1e95e6a46f09e7aa7b92d3984d7` |
| 22 | `def` | [forwardStepPermOfFinite](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardsteppermoffinite--1ea871b069ae930c2bd073c7.md) | 314 | `declaration-track:1ea871b069ae930c2bd073c7c4fa292d4fea44c76c21cff4a9e98a66a93a2095` |
| 23 | `theorem` | [forwardStepPermOfFinite_mk](../../../../../mathematics/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/declarations/forwardsteppermoffinite-mk--56bba3701f002cd21efe5925.md) | 323 | `result-track:56bba3701f002cd21efe59257218a451d45699169db11156b738c04f80c66727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
