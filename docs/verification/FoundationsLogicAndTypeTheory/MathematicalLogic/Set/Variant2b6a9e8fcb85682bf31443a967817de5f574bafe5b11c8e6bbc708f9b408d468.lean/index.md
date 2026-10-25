# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Set.Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29900c5e0e155a91a118dd6603c0ee3b3abbd282",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29900c5e0e155a91a118dd6603c0ee3b3abbd282`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [small_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-subset--7d659e8a1388f0c74f17ac8d.md) | 25 | `result-track:7d659e8a1388f0c74f17ac8d9c7d73cbf49a72b57bf0272d811f970b18f8833a` |
| 2 | `instance` | [small_powerset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-powerset--9f794c38355ba07d63ae4fe1.md) | 28 | `declaration-track:9f794c38355ba07d63ae4fe1431bb53ed72333516f17538142b77987e1692261` |
| 3 | `instance` | [small_setProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-setprod--16ac9e8c804237aea7c423cb.md) | 31 | `declaration-track:16ac9e8c804237aea7c423cbd3a13cff89881613ff386911399788a4acb23253` |
| 4 | `instance` | [small_setPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-setpi--525f845390883a659619f430.md) | 35 | `declaration-track:525f845390883a659619f4303db15b5d543328b61f9e60be63dc2e770a80f8be` |
| 5 | `instance` | [small_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-range--5676926b34032afd8df4d8ae.md) | 39 | `declaration-track:5676926b34032afd8df4d8ae7593e5e7bd8b3289c7e078bcf5442191d74cdb42` |
| 6 | `instance` | [small_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-image--48ba5eca67c0c29880ddeafc.md) | 43 | `declaration-track:48ba5eca67c0c29880ddeafcf04175a85b524b9f120d2a76550b598e9859db34` |
| 7 | `instance` | [small_image2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-image2--7bc3f546fa9522b4822d73be.md) | 47 | `declaration-track:7bc3f546fa9522b4822d73be7d231ac1b1201a6292f04352aa0ad369d4eb4f82` |
| 8 | `theorem` | [small_univ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-univ-iff--1e9c80844bb96f4271d90078.md) | 52 | `result-track:1e9c80844bb96f4271d900789d0c29bfd28c7d566b1a09ea0291fc56ef694cc6` |
| 9 | `instance` | [small_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-univ--7b78e06d173b64dac6db7f6c.md) | 55 | `declaration-track:7b78e06d173b64dac6db7f6ce5dda9ba8b294b97d6af383abd1d2f33b109aee4` |
| 10 | `instance` | [small_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-union--1dffbf900b7b096e1c1b1fdc.md) | 58 | `declaration-track:1dffbf900b7b096e1c1b1fdcc12c2db3dd24610d9834a457f3b6bd1083701bb2` |
| 11 | `instance` | [small_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-iunion--47091ac5abdf39558256d2c1.md) | 63 | `declaration-track:47091ac5abdf39558256d2c16d5a73c9c84113ec9ab4856ebb458040aef18835` |
| 12 | `instance` | [small_sUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-sunion--0efb9de306cec01c00f866d5.md) | 67 | `declaration-track:0efb9de306cec01c00f866d52c0456b0bab6c856ccf3173fbf2d36f2c0641d26` |
| 13 | `instance` | [small_biUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-biunion--3d0917a1c410420f46e82a6b.md) | 71 | `declaration-track:3d0917a1c410420f46e82a6bec5d7e28776e3a3e9f7657f49cb1267f7f8b3b6b` |
| 14 | `instance` | [small_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-insert--ba1fbaef21b56446daa2fa12.md) | 75 | `declaration-track:ba1fbaef21b56446daa2fa12a9261da905795efc5e6bbadfdb90b50c6f67adae` |
| 15 | `instance` | [small_diff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-diff--847879d76581dca81df87310.md) | 79 | `declaration-track:847879d76581dca81df87310f66084fad6ca5d2fc1d4fca9bf166daa0e2b3392` |
| 16 | `instance` | [small_sep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-sep--7b728a520a63576dbd44a497.md) | 82 | `declaration-track:7b728a520a63576dbd44a497b722b0dda336e51b0029cfe661a0341df554fa1d` |
| 17 | `instance` | [small_inter_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-inter-of-left--73c0f22c72eb93086cf91531.md) | 86 | `declaration-track:73c0f22c72eb93086cf915311dba692ea892f60535c5aab5bf426739540551f1` |
| 18 | `instance` | [small_inter_of_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-inter-of-right--fe474d6b66c968b715ef661f.md) | 90 | `declaration-track:fe474d6b66c968b715ef661f3f019de92bf7216644ff35bed88617354d9f65c1` |
| 19 | `theorem` | [small_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-iinter--829713c1321e6bfd468ac1f1.md) | 94 | `result-track:829713c1321e6bfd468ac1f1c18072ca048db503252b92c91a7a18ccf1938248` |
| 20 | `instance` | [small_iInter'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-iinter--cb39332d456a0088f3c39dc8.md) | 98 | `declaration-track:cb39332d456a0088f3c39dc8e3b3e898dc32ceacf6b5a5bf5fb33c4102960a5f` |
| 21 | `theorem` | [small_sInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-sinter--d4dc9253f1994f28282bfbb8.md) | 103 | `result-track:d4dc9253f1994f28282bfbb8c99b094e3504c6a08f886a43a328b6b91ec33735` |
| 22 | `instance` | [small_sInter'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-sinter--9d365c093e4d8fdc8e58d82e.md) | 107 | `declaration-track:9d365c093e4d8fdc8e58d82e210a19bbf46fea28a5d0565ae3b726783cb1a427` |
| 23 | `theorem` | [small_biInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-biinter--012bec5dec0ba8d4127300b4.md) | 112 | `result-track:012bec5dec0ba8d4127300b4bab7766482303e927694389b44feb62007bedc4c` |
| 24 | `instance` | [small_biInter'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-biinter--b6f149affb619bd3ea1ecbbb.md) | 116 | `declaration-track:b6f149affb619bd3ea1ecbbb7f46b4fd0260640e90416f7e5ef447c4fda55c4d` |
| 25 | `theorem` | [small_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-empty--bbb3286b18dbf61fc6bbd206.md) | 121 | `result-track:bbb3286b18dbf61fc6bbd20667051e041543538450f74b4f9990df006d2ef8d7` |
| 26 | `theorem` | [small_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-single--d8609086fc586e30c9486e60.md) | 124 | `result-track:d8609086fc586e30c9486e6084767d3bc35e28edd1bae99f7efa281767ccad37` |
| 27 | `theorem` | [small_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant2b6a9e8fcb85682bf31443a967817de5f574bafe5b11c8e6bbc708f9b408d468.lean/declarations/small-pair--442e21a5525b17745fb0175b.md) | 127 | `result-track:442e21a5525b17745fb0175bbe7e14a5332eba82e33620ab54ad89d567f6313b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
