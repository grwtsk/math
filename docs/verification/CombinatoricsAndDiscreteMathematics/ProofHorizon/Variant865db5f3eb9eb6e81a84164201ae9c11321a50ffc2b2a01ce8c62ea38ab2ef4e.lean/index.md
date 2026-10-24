# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ProofHorizon.Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7508eb999828d3acfc830706edba7f7b713eff44",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7508eb999828d3acfc830706edba7f7b713eff44`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean.json)

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
| 1 | `inductive` | [Polarity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/polarity--ed51aad546ae98b972a6d675.md) | 21 | `declaration-track:ed51aad546ae98b972a6d675c6e4d1e27f0caeb6a3d70a80e33c959671a2cd52` |
| 2 | `structure` | [FiniteProofAperture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/finiteproofaperture--0997590fc5bdfc5ebcae8e2d.md) | 29 | `declaration-track:0997590fc5bdfc5ebcae8e2d052c513479a2d295f4e25f87feeba2498ae812a0` |
| 3 | `def` | [FiniteProofAperture.HasAccepted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/finiteproofaperture-hasaccepted--de108de0ab8eb9a13e50892e.md) | 40 | `declaration-track:de108de0ab8eb9a13e50892e6964e687dfd98615074a1412fcdf07e6aaa3c2fb` |
| 4 | `def` | [LocallyUnresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/locallyunresolved--a61b5256f3a9c3cfe904f31d.md) | 45 | `declaration-track:a61b5256f3a9c3cfe904f31dfcd6f6569358141672935e9ff9461e518976a697` |
| 5 | `def` | [FiniteProofAperture.checkUnresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/finiteproofaperture-checkunresolved--e3cfb46483206f59f1687119.md) | 49 | `declaration-track:e3cfb46483206f59f1687119aba07defca3179b78c6d0b07f10fce66770f6262` |
| 6 | `theorem` | [FiniteProofAperture.checkUnresolved_eq_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/finiteproofaperture-checkunresolved-eq-true--e44bede6503f1acfc450cc5d.md) | 56 | `result-track:e44bede6503f1acfc450cc5d2c60b295c71edb776b8a6e4454e456ce257907dd` |
| 7 | `def` | [FiniteProofAperture.SoundFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/finiteproofaperture-soundfor--8a670d1c1902cc6a82cd4e20.md) | 63 | `declaration-track:8a670d1c1902cc6a82cd4e20a49112b11e3b82fa79c7b209a524e2a356a0dcea` |
| 8 | `theorem` | [locallyUnresolved_iff_all_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/locallyunresolved-iff-all-rejected--21dce100c55e41ecf426f033.md) | 69 | `result-track:21dce100c55e41ecf426f0332717453310b9b5fe4cdf06319521f732ac7025c3` |
| 9 | `theorem` | [FiniteProofAperture.not_both](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/finiteproofaperture-not-both--6da2fcc878167490e15ffb5a.md) | 87 | `result-track:6da2fcc878167490e15ffb5a7e0ee96456a0dc51c1f1bcba506352bd9a687120` |
| 10 | `def` | [emptyProofAperture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/emptyproofaperture--975e1c4a9498a35d5ef557c4.md) | 95 | `declaration-track:975e1c4a9498a35d5ef557c49473c18e8eaa940ad35c67160f2d28c37b8309cb` |
| 11 | `theorem` | [emptyProofAperture_unresolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/emptyproofaperture-unresolved--a5161d1ae18c7d11cd24d0c2.md) | 102 | `result-track:a5161d1ae18c7d11cd24d0c2b39f9b66869889cff8a17c15f08ca21d17172628` |
| 12 | `theorem` | [emptyProofAperture_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/emptyproofaperture-sound--a34fb96d48033533407f4da1.md) | 106 | `result-track:a34fb96d48033533407f4da10edfc14265aa61198ff2ed4d429be059897789fb` |
| 13 | `theorem` | [local_unresolvedness_does_not_imply_truth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/local-unresolvedness-does-not-imply-truth--091a4f1cbfac72e01c98020b.md) | 111 | `result-track:091a4f1cbfac72e01c98020b0f6ea0b06380a2e893754a7c2cc111ad1aebc00c` |
| 14 | `theorem` | [local_unresolvedness_does_not_imply_falsehood](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant865db5f3eb9eb6e81a84164201ae9c11321a50ffc2b2a01ce8c62ea38ab2ef4e.lean/declarations/local-unresolvedness-does-not-imply-falsehood--c4c3fec367359420e7e0b2ad.md) | 118 | `result-track:c4c3fec367359420e7e0b2ad62773fc1a48122bcc78ed6fe3a24568998934fda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
