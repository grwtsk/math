# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EulerCharacteristic.Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39339691b18fff976b0a72d2e8fd5c9e0b8f5ef1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EulerCharSigns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulercharsigns--6f072eb75394a38540ab9002.md) | 55 | `declaration-track:6f072eb75394a38540ab900254ab5d05f39c27d72967505ff79c71605d944077` |
| 2 | `abbrev` | [χ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/anonymous--d5a573ff42dca9a48a1e50e8.md) | 64 | `declaration-track:d5a573ff42dca9a48a1e50e87b53b85bfd46931bb67771d0e859bdc3f1da304d` |
| 3 | `lemma` | [χ_next](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/next--8abd240b671df2336a400057.md) | 67 | `result-track:8abd240b671df2336a40005710e4d4902667df8cd8578dc557a9b9d268d5e408` |
| 4 | `lemma` | [χ_prev](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/prev--7498f5a5892603d36145e926.md) | 70 | `result-track:7498f5a5892603d36145e926fe0938c09250858a6edbd2f86d0e17643a3149fb` |
| 5 | `instance` | [eulerCharSignsUpInt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulercharsignsupint--6bdef32361c45fefa82a9d06.md) | 73 | `declaration-track:6bdef32361c45fefa82a9d0697f2785ad1f619e51efa18a714dccc44d8ae93ed` |
| 6 | `instance` | [eulerCharSignsDownInt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulercharsignsdownint--f53c9704b63b28b30d409a43.md) | 78 | `declaration-track:f53c9704b63b28b30d409a43c92b5da7d5afafa881c03307dda538c2ada77d15` |
| 7 | `instance` | [eulerCharSignsUpNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulercharsignsupnat--271ed2c0e996c9859f8fedb7.md) | 83 | `declaration-track:271ed2c0e996c9859f8fedb7c59ac109dcb868167097b07b46972f9f92ad53b0` |
| 8 | `instance` | [eulerCharSignsDownNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulercharsignsdownnat--ab79812c002f3614b5c06c0f.md) | 88 | `declaration-track:ab79812c002f3614b5c06c0fad50e47f9076fbdc3b1b6069384e24fe34274f9d` |
| 9 | `def` | [finrankSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/finranksupport--681c66b097cde4e8ed858d6c.md) | 106 | `declaration-track:681c66b097cde4e8ed858d6ced6304aa1ca0f5b9eea606a3fb4c3b9059a16208` |
| 10 | `lemma` | [finrankSupport_subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/finranksupport-subset-iff--d1320e8307f693ce1f1d5c67.md) | 111 | `result-track:d1320e8307f693ce1f1d5c67d4fd8a384dac32ad6d2f62fa1dbe4f8713b2029f` |
| 11 | `def` | [eulerChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulerchar--90606f797f8b54363dc8fc81.md) | 118 | `declaration-track:90606f797f8b54363dc8fc817503e288955bc304c57c204fe266121ba30f73f7` |
| 12 | `lemma` | [support_eulerChar_summand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/support-eulerchar-summand--6765b3cf2985289e00a79e5b.md) | 123 | `result-track:6765b3cf2985289e00a79e5b352a41c7dff583567287c34bb27d527e07825cd7` |
| 13 | `theorem` | [eulerChar_eq_sum_finSet_of_finrankSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulerchar-eq-sum-finset-of-finranksupport-subset--cf9738982ace0446501c30f7.md) | 130 | `result-track:cf9738982ace0446501c30f7013a2a480837faa7db56c1944d3d0cee59db518f` |
| 14 | `abbrev` | [eulerChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulerchar--87afeeae827e19b13b3a55fd.md) | 147 | `declaration-track:87afeeae827e19b13b3a55fd97c21e155c29ae8684b92b6a71405e6b0970b95c` |
| 15 | `abbrev` | [homologyEulerChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/homologyeulerchar--c4ad6d40d97de4bf5b9ef16e.md) | 153 | `declaration-track:c4ad6d40d97de4bf5b9ef16ed7e04e21fc36c1f8e26f2a5c72948458f83759a5` |
| 16 | `theorem` | [eulerChar_eq_sum_finSet_of_finrankSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/eulerchar-eq-sum-finset-of-finranksupport-subset--f9bc06789a892bad1d650dcb.md) | 159 | `result-track:f9bc06789a892bad1d650dcb2a3282dd7528f8f3469b0f58822c2f9897240f3c` |
| 17 | `theorem` | [homologyEulerChar_eq_sum_finSet_of_finrankSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variantcf3900bd27da8495e3b85f8633ec14d1d665f27ee276bacc128f4a477acca502.lean/declarations/homologyeulerchar-eq-sum-finset-of-finranksupport-subset--27d6fa469e6135391c3858ca.md) | 167 | `result-track:27d6fa469e6135391c3858ca33b08645a9b3cb286ec67c7793a0744bd0054e42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
