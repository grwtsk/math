# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Coupling.Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e9d33b7d6235709ae778962d5cfc20ee8167f6b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e9d33b7d6235709ae778962d5cfc20ee8167f6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Transformation` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.ActiveRegion` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CouplingWeightState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/couplingweightstate--bcdb0b971a365fd3b63bbb8a.md) | 24 | `declaration-track:bcdb0b971a365fd3b63bbb8a6a5bac7a829a251f4a2571351370185489ead126` |
| 2 | `theorem` | [weight_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/weight-nonnegative--7bcd92a8ba1c1a7afa959e78.md) | 40 | `result-track:7bcd92a8ba1c1a7afa959e787fa4b5b01d718d1b610b58141e1edb3ec1a0cb6e` |
| 3 | `theorem` | [weight_le_maximum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/weight-le-maximum--62cfde1ea56b8d709675b8c4.md) | 46 | `result-track:62cfde1ea56b8d709675b8c44f6328112e7f0ed049c34c60598434f6ba3b588e` |
| 4 | `theorem` | [row_normalized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/row-normalized--1dcfea9b25620add50bc0e88.md) | 52 | `result-track:1dcfea9b25620add50bc0e888790b3ed7a8ae52543e3b106532673611c940017` |
| 5 | `theorem` | [prohibited_edge_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/prohibited-edge-zero--8ec36047dff6b05834a09bb9.md) | 60 | `result-track:8ec36047dff6b05834a09bb99aeaabd4b493f7ad980865a15bd0e9d74ffd8a41` |
| 6 | `structure` | [RegistryCouplingWeightState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/registrycouplingweightstate--0714d43f2525a222c4753cac.md) | 71 | `declaration-track:0714d43f2525a222c4753cac57ceb3d656b6b6686c6e0099bb6d55535efb172c` |
| 7 | `theorem` | [RegistryCouplingWeightState.row_normalized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/registrycouplingweightstate-row-normalized--349923974409093279378c65.md) | 80 | `result-track:349923974409093279378c659569778dc84e8ac41a1d4b2825bd43e369c7770c` |
| 8 | `abbrev` | [RawWeightState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/rawweightstate--bdafb4814678f5fc90169e64.md) | 91 | `declaration-track:bdafb4814678f5fc90169e64265533a58585aff78cb9cd434c171473fbdfc6e9` |
| 9 | `structure` | [ProposedCouplingWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/proposedcouplingweights--fcdf3ea9676baca376e7809a.md) | 94 | `declaration-track:fcdf3ea9676baca376e7809a71d12b9db6e338e97646be66ce534a83cc0ea7be` |
| 10 | `structure` | [WeightDistance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/weightdistance--8c7c6c8596427bc20888ec12.md) | 100 | `declaration-track:8c7c6c8596427bc20888ec12d7bf90a3b2b529b052041923bfd2826b7cd66421` |
| 11 | `structure` | [AdmissibleProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/admissibleprojection--6cfa11c210ada1fdccb941c2.md) | 107 | `declaration-track:6cfa11c210ada1fdccb941c29da224d22d26ec8929cac1409b0c6a4bb8007a8f` |
| 12 | `theorem` | [projection_preserves_admissibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/projection-preserves-admissibility--3013bbf728166f53c1505553.md) | 122 | `result-track:3013bbf728166f53c1505553e091177abdf35df8417e6bd37f0d348f9e261b6b` |
| 13 | `theorem` | [projection_nonexpansive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/projection-nonexpansive--db4711615cb9b3677b1b2c6f.md) | 136 | `result-track:db4711615cb9b3677b1b2c6ffd8a1c5433e67e2c09a47695abcbc5290a4dee14` |
| 14 | `structure` | [SqrtStepBoundCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/sqrtstepboundcertificate--a12baef41d1fb55ff588fd5a.md) | 147 | `declaration-track:a12baef41d1fb55ff588fd5a9be2e1da37ad77a8546a1c36ebc486eaa6696833` |
| 15 | `theorem` | [inv_sqrt_step_le_telescoping](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/inv-sqrt-step-le-telescoping--eab91df5683bd8296b293b62.md) | 155 | `result-track:eab91df5683bd8296b293b625cd5fee0890f074da60d50297975e67f86d2f42c` |
| 16 | `theorem` | [cumulative_inv_sqrt_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/cumulative-inv-sqrt-le--34e0f2b486d06c90f009f332.md) | 188 | `result-track:34e0f2b486d06c90f009f332c4723268d78a462ab3325107961f8ec596f9f590` |
| 17 | `def` | [inverseSqrtStepSchedule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/inversesqrtstepschedule--485f70e92d5aa33bf8b65a7e.md) | 206 | `declaration-track:485f70e92d5aa33bf8b65a7e077f14f96be283642721c390e466107087af1ee6` |
| 18 | `structure` | [SubdiffusiveTrajectory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/subdiffusivetrajectory--35c3f08355efa22ba6941817.md) | 220 | `declaration-track:35c3f08355efa22ba6941817abd007076e78b7612175e79b717ba41b93f676a4` |
| 19 | `theorem` | [subdiffusive_displacement_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/subdiffusive-displacement-le--3357307ecae3202c196226a1.md) | 238 | `result-track:3357307ecae3202c196226a17df013c706b0061bb823e77eeeda73e6a7aa985f` |
| 20 | `structure` | [ProjectedGradientTrajectory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/projectedgradienttrajectory--51abc53bba299fd211ffa7f9.md) | 269 | `declaration-track:51abc53bba299fd211ffa7f925209e38c2c3270839cf62214f99b5d2747d259d` |
| 21 | `theorem` | [one_step_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/one-step-le--446bc5591e80cea6cb327145.md) | 292 | `result-track:446bc5591e80cea6cb3271457696f2cfc62c5bcb6ce1e45a38249e1ca4e83c16` |
| 22 | `theorem` | [displacement_le_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/displacement-le-cumulative--9e50ba4bf04057a26c92c3f4.md) | 346 | `result-track:9e50ba4bf04057a26c92c3f4bae8c7d2d30fe046a7f6c4f3d80d0e00e34ed3c1` |
| 23 | `theorem` | [subdiffusive_displacement_le_of_projected_updates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/subdiffusive-displacement-le-of-projected-updates--cafb4dd7cb6fb8da6c0b435b.md) | 374 | `result-track:cafb4dd7cb6fb8da6c0b435b054735f40a02613bdc04e957369c07eae1cfb770` |
| 24 | `structure` | [CouplingCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/couplingcertificate--dca46ee60aee9f3244e21610.md) | 395 | `declaration-track:dca46ee60aee9f3244e2161068b5737112d94b4c26058cf6a378d91cb07afb85` |
| 25 | `def` | [CouplingCertificate.ValidFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/couplingcertificate-validfor--56d9f209a1210414893754ab.md) | 400 | `declaration-track:56d9f209a1210414893754ab29e008c7764fe5707d6a657ab04ad48f0558d274` |
| 26 | `theorem` | [changed_graph_rejects_coupling_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/changed-graph-rejects-coupling-certificate--6b6a3e0674b8b67e9118daa0.md) | 407 | `result-track:6b6a3e0674b8b67e9118daa0973b8420d204462d7de5bdb30edb49fce1bc9d76` |
| 27 | `theorem` | [changed_policy_rejects_coupling_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/declarations/changed-policy-rejects-coupling-certificate--8f1779eaeb6ed64bd6baf275.md) | 416 | `result-track:8f1779eaeb6ed64bd6baf2757b24ce6cefedc98d037322b7476d0271b6fca53b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
