# Verification target: GRWTSK.Algebra.GroupTheory.CyclicStream.Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52b9f733cbd3972673f2976f99c70c88bfb6d1dd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52b9f733cbd3972673f2976f99c70c88bfb6d1dd`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseStepStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestepstream--8e9ba70adcae7d0d29a04312.md) | 50 | `declaration-track:8e9ba70adcae7d0d29a04312f163ce11595f0c73c411b8fb6ecaab1992b19410` |
| 2 | `def` | [indexedStepStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/indexedstepstream--74fdffc952054e4ee0d8cb61.md) | 61 | `declaration-track:74fdffc952054e4ee0d8cb61963d92d00acde1223925f1f311440db30af2e490` |
| 3 | `def` | [braidedStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/braidedstream--c6c10baddb58d351c219caad.md) | 75 | `declaration-track:c6c10baddb58d351c219caad301bd547510c44b5cd37185e6244afb0bf7da207` |
| 4 | `theorem` | [braidedStream_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/braidedstream-apply--0979072ab428f6b56f1d3dd2.md) | 81 | `result-track:0979072ab428f6b56f1d3dd2003e2d114672b8156d299264b52de046e22667e3` |
| 5 | `theorem` | [braidedStream_mod_cycle_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/braidedstream-mod-cycle-apply--0468bf80f635d5708d85ddba.md) | 91 | `result-track:0468bf80f635d5708d85ddba2c9f1c4b0fdda71a50aa0375d544b5bed196bf9a` |
| 6 | `def` | [shiftPhaseStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/shiftphasestream--bb5be95e60b7d43c843b1426.md) | 101 | `declaration-track:bb5be95e60b7d43c843b14265a875c78d4c96152de246881347a7c4c38024daa` |
| 7 | `def` | [shiftInput](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/shiftinput--a4ae91b45e15880c8a2d90f0.md) | 107 | `declaration-track:a4ae91b45e15880c8a2d90f0df9e2994a413b410deea41776887edba7e5563b4` |
| 8 | `def` | [phaseStreamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport--3fc79e3d91496ed98ca341e4.md) | 116 | `declaration-track:3fc79e3d91496ed98ca341e4bdd8db45c434e8927fe59fcabfa14551230482cb` |
| 9 | `def` | [streamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport--904cb6aa869fd9e9349c30e6.md) | 130 | `declaration-track:904cb6aa869fd9e9349c30e60a55aa6dc9c4299573988e1f37122993af7f8796` |
| 10 | `theorem` | [phaseStreamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport-zero--3833f6fcc4be88f04eb46739.md) | 136 | `result-track:3833f6fcc4be88f04eb46739894aec0d2b4ddc761a5b6150aa2df56af58c7964` |
| 11 | `theorem` | [phaseStreamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport-succ--5b71d9f9ac81904ddb0bc25c.md) | 142 | `result-track:5b71d9f9ac81904ddb0bc25c573b11111813d0121486ea7ac0283afd37a906d1` |
| 12 | `theorem` | [streamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-zero--9f421946d8abc6efe5e982d6.md) | 150 | `result-track:9f421946d8abc6efe5e982d6aac02e54293b55d6ae5f3592b8ab10d7e5a8758e` |
| 13 | `theorem` | [streamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-succ--adf26850b0cc813b58d43525.md) | 156 | `result-track:adf26850b0cc813b58d43525bc493d37570f56a291182d6f36011f5b4383a69f` |
| 14 | `theorem` | [streamTransport_two_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-two-apply--f13ba4aec83b64eaf5ea254f.md) | 168 | `result-track:f13ba4aec83b64eaf5ea254fa1ab90ed16a2c3c263a14403664678af53673662` |
| 15 | `def` | [reverseStreamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/reversestreamtransport--9a0d6565aedce1f096d2e17d.md) | 183 | `declaration-track:9a0d6565aedce1f096d2e17d8e10eb96e3fd4f5761230b6625a0c77fefe13685` |
| 16 | `theorem` | [reverseStreamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/reversestreamtransport-zero--54ae3f0c6a85b7bdb6885074.md) | 192 | `result-track:54ae3f0c6a85b7bdb68850746d26940beb4ec162915fcdde7b7c4ad97f14bbc4` |
| 17 | `theorem` | [reverseStreamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/reversestreamtransport-succ--29b8073ff8ff59977a59195b.md) | 199 | `result-track:29b8073ff8ff59977a59195b6905e569943df62e6806694a8879e6936ca7ba89` |
| 18 | `theorem` | [reverseStreamTransport_two_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/reversestreamtransport-two-apply--208f37121f1da698ad9bde15.md) | 211 | `result-track:208f37121f1da698ad9bde156fe65dccba8df683c451811f07f583c2ad358aeb` |
| 19 | `theorem` | [shiftPhaseStream_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/shiftphasestream-zero--4cd9c32a9b4529ed145c8681.md) | 219 | `result-track:4cd9c32a9b4529ed145c86812615cbe9eb6435d06ba02b062682f3bec47be1d6` |
| 20 | `theorem` | [shiftPhaseStream_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/shiftphasestream-add--92f1db2a451477b9b5fdcb54.md) | 225 | `result-track:92f1db2a451477b9b5fdcb5434c998194dce2eeae42a4c410a080128e4fe9d3b` |
| 21 | `theorem` | [shiftInput_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/shiftinput-zero--78cbd96445a74f327faf244d.md) | 232 | `result-track:78cbd96445a74f327faf244dbef6636a224d7cde2d03e0dff624993a2aa3f353` |
| 22 | `theorem` | [shiftInput_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/shiftinput-add--fc0c5278a6106ee2b640037c.md) | 238 | `result-track:fc0c5278a6106ee2b640037c5f64d28248019242cf938c02d327f9a22a55e4da` |
| 23 | `theorem` | [phaseStreamTransport_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport-add--7dbba785591e8f8d194920e9.md) | 245 | `result-track:7dbba785591e8f8d194920e970a7dd0b59e04398204960822b3aeac1940bfcd2` |
| 24 | `theorem` | [streamTransport_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-add--029f283398a807452d0485f9.md) | 263 | `result-track:029f283398a807452d0485f982b147fe559f408e2bb7ed8ee79862ecfaae07e6` |
| 25 | `def` | [successorPhaseStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/successorphasestream--256c1fd5b25e107685e64caf.md) | 281 | `declaration-track:256c1fd5b25e107685e64caffde6d6011a08b53a268092def91223a6c162bd7c` |
| 26 | `theorem` | [phaseStreamTransport_successor_eq_forwardProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport-successor-eq-forwardproduct--f770f9d59836dac7565969ee.md) | 291 | `result-track:f770f9d59836dac7565969ee2a172c460d7fbd6b8f3e2360b906ca686680a374` |
| 27 | `theorem` | [phaseStreamTransport_successor_cycle_eq_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport-successor-cycle-eq-monodromy--1cc909cc5721abecdf55d485.md) | 314 | `result-track:1cc909cc5721abecdf55d4858ab6d9c66b070ace7b162f79fd0d33390a96a8f0` |
| 28 | `theorem` | [streamTransport_bijective](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-bijective--4f249d01f1e8ed1472820f0c.md) | 324 | `result-track:4f249d01f1e8ed1472820f0ccfbc248a4f0b9704a618440883af1eeae92cc7a1` |
| 29 | `theorem` | [phaseStreamTransport_bijective](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/phasestreamtransport-bijective--d84a8ec1670d6d0bdab0c1a1.md) | 331 | `result-track:d84a8ec1670d6d0bdab0c1a1b30ffe1ba5c2e514816d7d422e12a0b9bd09e61e` |
| 30 | `def` | [StreamInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streaminsubgroup--c2db911adb85ec5bab0ae852.md) | 338 | `declaration-track:c2db911adb85ec5bab0ae852d807ca2114be74a41c0f0b420d4176b34c906830` |
| 31 | `theorem` | [streamTransport_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-mem-subgroup--c4e0bca8f1ede9775d7354c7.md) | 345 | `result-track:c4e0bca8f1ede9775d7354c71874fb174cb029f3ed08130322dd4aa2d4840389` |
| 32 | `theorem` | [streamTransport_mem_subgroup_of_phasewise](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variantb0f644e8aa8d70544668d4da9616f950a5b3647f048557876b36bb2e10fd0d47.lean/declarations/streamtransport-mem-subgroup-of-phasewise--d61e0bf9e5d2eed14772a1b7.md) | 362 | `result-track:d61e0bf9e5d2eed14772a1b7fa9bc5ce64b207fe6fdff112cad07498ff0e9e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
