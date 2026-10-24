# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Determinant.Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2203d871879c374fe058eda86bf7f7909cf397c1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2203d871879c374fe058eda86bf7f7909cf397c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitematrix--abb3c2b83d5b825de8266704.md) | 35 | `declaration-track:abb3c2b83d5b825de8266704b398ddb7c0c0a45b0da7ea250297849dead0a3db` |
| 2 | `structure` | [SquareFiniteMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/squarefinitematrix--4e3262e8f4b02da4be352a31.md) | 41 | `declaration-track:4e3262e8f4b02da4be352a312e09be83bb15328d1aa5bb696d6b5b79c5e316c9` |
| 3 | `structure` | [FiniteDeterminantMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitedeterminantmatrix--2c88a9d18bee6d58838f37fa.md) | 46 | `declaration-track:2c88a9d18bee6d58838f37fa0b70304f52a334158506c21ba0f1ae5875e213be` |
| 4 | `structure` | [FiniteDeterminantCoefficients](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitedeterminantcoefficients--e9417a2dc125a353563a567a.md) | 53 | `declaration-track:e9417a2dc125a353563a567a566669118a9434df9127bd435cfa299a98062b8a` |
| 5 | `structure` | [FiniteTracePowerSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitetracepowersums--a8e07f2d26856352ddd905a0.md) | 60 | `declaration-track:a8e07f2d26856352ddd905a077285531a09dc8dbe5e40ed67aa8e6fafba4b4eb` |
| 6 | `structure` | [FiniteDeterminantPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitedeterminantpayload--9e33715c601a20edd4a1e742.md) | 67 | `declaration-track:9e33715c601a20edd4a1e7421d6efaa2bac9539d643842ba509774a0b85c637e` |
| 7 | `theorem` | [finite_determinant_matrix_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-determinant-matrix-sound--dd7be08752bcbc9d5515b458.md) | 75 | `result-track:dd7be08752bcbc9d5515b4580a4a42c1b06b2514cd79f91925b3aae0857f7f81` |
| 8 | `theorem` | [finite_determinant_coefficients_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-determinant-coefficients-sound--54b1660c6ae0cb374a3155cd.md) | 80 | `result-track:54b1660c6ae0cb374a3155cd7dd65114b8c1a97e454de3dee47f5358245c01c6` |
| 9 | `theorem` | [finite_trace_power_sums_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-trace-power-sums-sound--488deb050438bae27266df4b.md) | 85 | `result-track:488deb050438bae27266df4b06328ae59e4d3ac8578f63ffe4271a8108593998` |
| 10 | `theorem` | [finite_determinant_payload_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-determinant-payload-sound--707c22b36b751266a246e439.md) | 90 | `result-track:707c22b36b751266a246e4390ea8ea67e7a5c505f2702368d912df91ff02d4ab` |
| 11 | `structure` | [FiniteMatrixMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitematrixmap--2a5e8e39772a75c11423465b.md) | 100 | `declaration-track:2a5e8e39772a75c11423465b51daa8cf995cdc1a104edad8ed8b085ac92adf5f` |
| 12 | `structure` | [FiniteComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitecomplex--8eb00627e0164560ac46af68.md) | 112 | `declaration-track:8eb00627e0164560ac46af68b81abc4e010ae7e89e3999e2c965a2c7669a305f` |
| 13 | `def` | [FinitePayloadConstructsDeterminantLine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitepayloadconstructsdeterminantline--9c88669f2cc4a0c8da3b07de.md) | 119 | `declaration-track:9c88669f2cc4a0c8da3b07dec2df31cedf0bfb885e2dd1ebec2da88fa5b49ce6` |
| 14 | `def` | [FinitePayloadOwnsDeterminantLineFunctoriality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitepayloadownsdeterminantlinefunctoriality--4dc0de3f918b48d747fe2bec.md) | 124 | `declaration-track:4dc0de3f918b48d747fe2bec03517c5b15387cf0e30c9e86c61354035c2f17e3` |
| 15 | `def` | [FinitePayloadOwnsZetaRegularizedDeterminant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitepayloadownszetaregularizeddeterminant--1f587b044fb54a969f615104.md) | 129 | `declaration-track:1f587b044fb54a969f615104d2b089486e70b4e4112b865c954709e23ae5ec69` |
| 16 | `def` | [FinitePayloadOwnsFredholmDeterminantConvergence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitepayloadownsfredholmdeterminantconvergence--3c56332e13a981336dc30118.md) | 134 | `declaration-track:3c56332e13a981336dc30118174509f2dd26a83ab0358ca959675081bf01a591` |
| 17 | `def` | [FinitePayloadOwnsTraceLogExpansion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitepayloadownstracelogexpansion--e6cedd0ee86a8137e1d45df2.md) | 139 | `declaration-track:e6cedd0ee86a8137e1d45df2f402a0a450fd9a283753040fca2c0bad5f432e82` |
| 18 | `def` | [FinitePayloadOwnsAnomalyFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finitepayloadownsanomalyformula--46296698e73f49e81457804a.md) | 144 | `declaration-track:46296698e73f49e81457804a9a7e7386b69291dbedf23fd9898d114b5b212a5d` |
| 19 | `theorem` | [finite_payload_not_determinant_line](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-payload-not-determinant-line--c0f3b469874cd0d1ea63503b.md) | 148 | `result-track:c0f3b469874cd0d1ea63503b23c45e60ee0cfa9b32dd9dc3711d353c6bdc2cd7` |
| 20 | `theorem` | [finite_payload_not_determinant_line_functoriality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-payload-not-determinant-line-functoriality--c495c01d1dfc91b35838bc31.md) | 154 | `result-track:c495c01d1dfc91b35838bc31db325f735a09985bc910ec619ce06a23cfd0bca0` |
| 21 | `theorem` | [finite_payload_not_zeta_regularized_determinant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-payload-not-zeta-regularized-determinant--4c0bc4ff261cbc0b0b51e912.md) | 160 | `result-track:4c0bc4ff261cbc0b0b51e91261322512fb8b77691872238ffe97e7b78facf140` |
| 22 | `theorem` | [finite_payload_not_fredholm_determinant_convergence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-payload-not-fredholm-determinant-convergence--9f5ff1269a2c3e1d21ebf897.md) | 166 | `result-track:9f5ff1269a2c3e1d21ebf897e502e3ff25ebfeeb66f3c9eb2e50c6615407c959` |
| 23 | `theorem` | [finite_payload_not_trace_log_expansion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-payload-not-trace-log-expansion--d78a7ef376ed4362ef7cacca.md) | 172 | `result-track:d78a7ef376ed4362ef7cacca384658875453072c82c36dc16260fee61ec6fb28` |
| 24 | `theorem` | [finite_payload_not_anomaly_formula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-payload-not-anomaly-formula--b70f1671b223b2f9f1d239ad.md) | 178 | `result-track:b70f1671b223b2f9f1d239ada28b383da4e695d440a9a3e14d24e6392057afa4` |
| 25 | `theorem` | [finite_determinant_payload_boundary_summary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant3434481902560343b6afb7709a0ed1222e256f1a44198de2b0f69337b6400091.lean/declarations/finite-determinant-payload-boundary-summary--0f77a5e84caf2d8fa0fd2a22.md) | 191 | `result-track:0f77a5e84caf2d8fa0fd2a225e45f13e9e8440ab85701e9098951249e9c263f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
