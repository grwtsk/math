# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProofHorizon.Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30059abc680bdfaef334b63402068646638a9507",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30059abc680bdfaef334b63402068646638a9507`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Polarity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/polarity--839cd2a24481949a617ce1d1.md) | 21 | `declaration-track:839cd2a24481949a617ce1d1a4f5e83a24cf2b53f884e291b8ce7fafe3000d51` |
| 2 | `structure` | [FiniteProofAperture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/finiteproofaperture--e2f4467ea175c139f22550aa.md) | 29 | `declaration-track:e2f4467ea175c139f22550aa6bab9dadf622f2a47e7e861280bb8cb953e3f139` |
| 3 | `def` | [FiniteProofAperture.HasAccepted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/finiteproofaperture-hasaccepted--9e309a0de8a21dc729681dbd.md) | 40 | `declaration-track:9e309a0de8a21dc729681dbd1c153d90d9b4498ec6cd380481c585a17d960528` |
| 4 | `def` | [LocallyUnresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/locallyunresolved--3b92587b961281fff3330997.md) | 45 | `declaration-track:3b92587b961281fff3330997e12e9b54b682634fe5091ddf3f427522dba7e521` |
| 5 | `def` | [FiniteProofAperture.checkUnresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/finiteproofaperture-checkunresolved--04c86500410aac1fd254a975.md) | 49 | `declaration-track:04c86500410aac1fd254a97548fc1027012fdddd362a63651b5a9c5854b91818` |
| 6 | `theorem` | [FiniteProofAperture.checkUnresolved_eq_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/finiteproofaperture-checkunresolved-eq-true--a570b3d3cca47dbbd774e1c7.md) | 56 | `result-track:a570b3d3cca47dbbd774e1c7e0a93cd540964189ba815e994272c36b00ba6bf8` |
| 7 | `def` | [FiniteProofAperture.SoundFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/finiteproofaperture-soundfor--a0540dde080bfb5f333c8d01.md) | 63 | `declaration-track:a0540dde080bfb5f333c8d0151f9d66b64b0d56a7f864ef41b824465f34321a8` |
| 8 | `theorem` | [locallyUnresolved_iff_all_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/locallyunresolved-iff-all-rejected--d1708f791ece35cda451742b.md) | 69 | `result-track:d1708f791ece35cda451742b3e33e6efe9c0439d66f28f65075143312f0ab8b5` |
| 9 | `theorem` | [FiniteProofAperture.not_both](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/finiteproofaperture-not-both--a2d1c3bbecec4175a94b1a3c.md) | 87 | `result-track:a2d1c3bbecec4175a94b1a3c745a7eab97bba284e31799831da02f1ef5545272` |
| 10 | `def` | [emptyProofAperture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/emptyproofaperture--3e68e643e27424c49304ec36.md) | 95 | `declaration-track:3e68e643e27424c49304ec36092f724c4dc07b6102ce20dd50c7586df64f3a58` |
| 11 | `theorem` | [emptyProofAperture_unresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/emptyproofaperture-unresolved--1549792ded3fcfa73af8323c.md) | 102 | `result-track:1549792ded3fcfa73af8323c1b42ab77be041fc1004c4b2b4c3670758db8e060` |
| 12 | `theorem` | [emptyProofAperture_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/emptyproofaperture-sound--29e59de795b1e2d08343358c.md) | 106 | `result-track:29e59de795b1e2d08343358c0bb198016d33efa8a748de65ca53f2b947e57bf2` |
| 13 | `theorem` | [local_unresolvedness_does_not_imply_truth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/local-unresolvedness-does-not-imply-truth--54cdb28898d49fa2f25921dd.md) | 111 | `result-track:54cdb28898d49fa2f25921ddf2bfc7d6a72753866daf4a910f09fb36d94a0f2c` |
| 14 | `theorem` | [local_unresolvedness_does_not_imply_falsehood](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant13c3ce2d681476399f0fa0ba7f351a811fc668411c070505017b401d2a5c1aec.lean/declarations/local-unresolvedness-does-not-imply-falsehood--8b1daa63e923b36ab27d113d.md) | 118 | `result-track:8b1daa63e923b36ab27d113d60d8c4bc6907d40b73c2c162c1a63fcd3024d97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
