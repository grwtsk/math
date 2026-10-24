# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Determinant.Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d42d30b4553f9820dc2a3e53fd8ed8076ec4627b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d42d30b4553f9820dc2a3e53fd8ed8076ec4627b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitematrix--c8596424133c2aaee06d7ab4.md) | 27 | `declaration-track:c8596424133c2aaee06d7ab4e3cedff45e9d53687d149eea352d2c365674ab01` |
| 2 | `structure` | [SquareFiniteMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/squarefinitematrix--557eddd9f74cf531e36112b0.md) | 33 | `declaration-track:557eddd9f74cf531e36112b06659b64ae5cb7b1bb2d4092b41b11781b2e23a24` |
| 3 | `structure` | [FiniteDeterminantMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitedeterminantmatrix--c5f947f5c6bc89dd4dae6363.md) | 38 | `declaration-track:c5f947f5c6bc89dd4dae63633ddb8e3fe1660d999087acccf4274541c73c6983` |
| 4 | `structure` | [FiniteDeterminantCoefficients](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitedeterminantcoefficients--11dfeaa4b3355e368759093c.md) | 45 | `declaration-track:11dfeaa4b3355e368759093ce1c09e397a0604ac848b04eda5cdfccf344e7719` |
| 5 | `structure` | [FiniteTracePowerSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitetracepowersums--5a25de6b26e44ae44d11dda4.md) | 52 | `declaration-track:5a25de6b26e44ae44d11dda4fd2c5683a654576c82450b0eae32ad3b39745baf` |
| 6 | `structure` | [FiniteDeterminantPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitedeterminantpayload--3788f3f1260e314f843c05dd.md) | 59 | `declaration-track:3788f3f1260e314f843c05ddfc6f262d4eacb872cf80a8e9ea338d49db8a114f` |
| 7 | `theorem` | [finite_determinant_matrix_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-determinant-matrix-sound--2064a0d7ca6d53ad0be1cd8e.md) | 67 | `result-track:2064a0d7ca6d53ad0be1cd8eeef19f8ddf5deb827a90b203077e83b264f483b3` |
| 8 | `theorem` | [finite_determinant_coefficients_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-determinant-coefficients-sound--9732469e356136df7c2fd91e.md) | 72 | `result-track:9732469e356136df7c2fd91e87e3326852c7fbfd34d696addf9864ecf64e7168` |
| 9 | `theorem` | [finite_trace_power_sums_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-trace-power-sums-sound--71d2796ff6b52b6cac15312c.md) | 77 | `result-track:71d2796ff6b52b6cac15312c797aa977f913781c4dde1b4b2e976cbc589e6dd9` |
| 10 | `theorem` | [finite_determinant_payload_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-determinant-payload-sound--7755527d96d2482dbfe34415.md) | 82 | `result-track:7755527d96d2482dbfe3441540676dd5dfa2b09fe3e646b0581e80721a5de46c` |
| 11 | `structure` | [FiniteMatrixMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitematrixmap--6d2f8f9e09ff6d11dfcbc977.md) | 92 | `declaration-track:6d2f8f9e09ff6d11dfcbc9778c136b2324cee67af22c32809944485d9c481761` |
| 12 | `structure` | [FiniteComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitecomplex--bf23e1f9c696839e2b9dfb55.md) | 104 | `declaration-track:bf23e1f9c696839e2b9dfb556ec611321e8fceca03259ae38520c7be82ad8328` |
| 13 | `def` | [FinitePayloadConstructsDeterminantLine](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitepayloadconstructsdeterminantline--01796f0de5e3188b7ed8e006.md) | 111 | `declaration-track:01796f0de5e3188b7ed8e0063c88955a45ef6509b58722e07728b6386104d756` |
| 14 | `def` | [FinitePayloadOwnsDeterminantLineFunctoriality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitepayloadownsdeterminantlinefunctoriality--3aae9f5af62f7982aec33086.md) | 116 | `declaration-track:3aae9f5af62f7982aec3308655f2a832247ba5334dd646fdcd45b6e3540a77eb` |
| 15 | `def` | [FinitePayloadOwnsZetaRegularizedDeterminant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitepayloadownszetaregularizeddeterminant--ece35794094395de881f07d0.md) | 121 | `declaration-track:ece35794094395de881f07d095cd53d41496c97a86c19b6352254803724309a2` |
| 16 | `def` | [FinitePayloadOwnsFredholmDeterminantConvergence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitepayloadownsfredholmdeterminantconvergence--a9745f7f4b86dcb4392a388a.md) | 126 | `declaration-track:a9745f7f4b86dcb4392a388ab899f275c2f88ee21a2c9933a6e2c21b6d890c3d` |
| 17 | `def` | [FinitePayloadOwnsTraceLogExpansion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitepayloadownstracelogexpansion--cdaee96a74764dca33b566e1.md) | 131 | `declaration-track:cdaee96a74764dca33b566e1a3c3a3e6ef8cc7598e6bfeac2596baeddc5cc35d` |
| 18 | `def` | [FinitePayloadOwnsAnomalyFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finitepayloadownsanomalyformula--2832bdbb65d4f2a0835df804.md) | 136 | `declaration-track:2832bdbb65d4f2a0835df804e6d4638fda0d12bc670b35361a0dca0ad1a99911` |
| 19 | `theorem` | [finite_payload_not_determinant_line](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-payload-not-determinant-line--af44210737b7a82112b9087c.md) | 140 | `result-track:af44210737b7a82112b9087c0c11e9754917b67ec68ea94fedfdb914d2d03e2f` |
| 20 | `theorem` | [finite_payload_not_determinant_line_functoriality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-payload-not-determinant-line-functoriality--202dd3545e2cce2ba3195c4b.md) | 146 | `result-track:202dd3545e2cce2ba3195c4b62b814ee8a6a6174f2577040cd553bb74f5dfb6e` |
| 21 | `theorem` | [finite_payload_not_zeta_regularized_determinant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-payload-not-zeta-regularized-determinant--6fd162e3e36bbca6fd8ca6fb.md) | 152 | `result-track:6fd162e3e36bbca6fd8ca6fbd0d49f3b03db81f1258363bc098a870ed5940ce5` |
| 22 | `theorem` | [finite_payload_not_fredholm_determinant_convergence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-payload-not-fredholm-determinant-convergence--0b8087b293cf09648b34126e.md) | 158 | `result-track:0b8087b293cf09648b34126ee504d9b1f254befaf488033530d8d31e9aa6cded` |
| 23 | `theorem` | [finite_payload_not_trace_log_expansion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-payload-not-trace-log-expansion--045fc8b053eee5d6bbb75875.md) | 164 | `result-track:045fc8b053eee5d6bbb7587540de26d28ed18a5f430eae06df71a23b33df37c9` |
| 24 | `theorem` | [finite_payload_not_anomaly_formula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-payload-not-anomaly-formula--2ea685ec6598d27ffa05d765.md) | 170 | `result-track:2ea685ec6598d27ffa05d7651fe067809707a494a52037b102015957a23f3b75` |
| 25 | `theorem` | [finite_determinant_payload_boundary_summary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Determinant/Variant6be85cd9356b897804a414dbcaa9494ea88c8d712a0e8f6ad8951695c6cd9a8f.lean/declarations/finite-determinant-payload-boundary-summary--46ffbe214ad57cc6947670d4.md) | 183 | `result-track:46ffbe214ad57cc6947670d4d359bec884b8060ca578e6bf1aeb3d25d7012f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
