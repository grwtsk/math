# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProofHorizon.Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45903d5fb22bec674625f626922ab20821b97739",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45903d5fb22bec674625f626922ab20821b97739`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Polarity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/polarity--a8974d41bc193200069d8f34.md) | 13 | `declaration-track:a8974d41bc193200069d8f344121508f7359b8dceb9f826b4d5b56999c7014b2` |
| 2 | `structure` | [FiniteProofAperture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/finiteproofaperture--015bd9d929fa5783a1cee8d7.md) | 21 | `declaration-track:015bd9d929fa5783a1cee8d77c53bd6262a9707fb046c323896c62fb12100e7c` |
| 3 | `def` | [FiniteProofAperture.HasAccepted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/finiteproofaperture-hasaccepted--6bafa9455356b6f379af1188.md) | 32 | `declaration-track:6bafa9455356b6f379af1188231c8d86f037e23f99ea9d1c45e82c21ff3ab6c5` |
| 4 | `def` | [LocallyUnresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/locallyunresolved--7c053ec886957e49e6a8ad58.md) | 37 | `declaration-track:7c053ec886957e49e6a8ad585e6576f47b12859355ef78e12575d9bece599b64` |
| 5 | `def` | [FiniteProofAperture.checkUnresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/finiteproofaperture-checkunresolved--e984c82e3a07236b95ed5223.md) | 41 | `declaration-track:e984c82e3a07236b95ed5223fc22538af0cbca5f1521b711b22024b86f4367cf` |
| 6 | `theorem` | [FiniteProofAperture.checkUnresolved_eq_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/finiteproofaperture-checkunresolved-eq-true--ac5a8ce9e434600d3909cb1c.md) | 48 | `result-track:ac5a8ce9e434600d3909cb1c367ace8ec70311e28334d8866b30af53f2bf770e` |
| 7 | `def` | [FiniteProofAperture.SoundFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/finiteproofaperture-soundfor--9d8c679b8055489ce739bb6a.md) | 55 | `declaration-track:9d8c679b8055489ce739bb6ac7056b76d810ff88b18cb6c22cd4a3c74c7f281d` |
| 8 | `theorem` | [locallyUnresolved_iff_all_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/locallyunresolved-iff-all-rejected--b3145833e3ebb330dfa44100.md) | 61 | `result-track:b3145833e3ebb330dfa441000c3cedcb490c663d48d5708edad5ee7882ebb236` |
| 9 | `theorem` | [FiniteProofAperture.not_both](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/finiteproofaperture-not-both--0d8a4ae418833f3d60911133.md) | 79 | `result-track:0d8a4ae418833f3d6091113310a0026f69f02f4626ecd9919a364d0e71c334b8` |
| 10 | `def` | [emptyProofAperture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/emptyproofaperture--aeb8e17f4ebd92d23d7f1f4c.md) | 87 | `declaration-track:aeb8e17f4ebd92d23d7f1f4c40f544d673f3603a1c9fa178692b2860aa978ec4` |
| 11 | `theorem` | [emptyProofAperture_unresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/emptyproofaperture-unresolved--62b94f0c562d9116f4b578be.md) | 94 | `result-track:62b94f0c562d9116f4b578be64b68b669a2c6c279b43d1cfb2369684d8348bf3` |
| 12 | `theorem` | [emptyProofAperture_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/emptyproofaperture-sound--3b5c79a5ad21cea4984d421b.md) | 98 | `result-track:3b5c79a5ad21cea4984d421b7019eedbf427a255c6cdd69aeeaeab49fb2c4e1a` |
| 13 | `theorem` | [local_unresolvedness_does_not_imply_truth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/local-unresolvedness-does-not-imply-truth--1227fdd01947b2cd18326610.md) | 103 | `result-track:1227fdd01947b2cd183266106d4113c99613505079f7af3ace49efe5718a8a36` |
| 14 | `theorem` | [local_unresolvedness_does_not_imply_falsehood](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant12fb345ee819ffcc380a16f0f2ed74d7c1dc6f921c3c643a8dec40d8885a2183.lean/declarations/local-unresolvedness-does-not-imply-falsehood--57c07d22e2c28107e318c54c.md) | 110 | `result-track:57c07d22e2c28107e318c54cdf54b4bf78deba7326a78de2358c88099a0dc6e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
