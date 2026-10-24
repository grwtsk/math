# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftFirstDifference

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3eeb984404cfdf422b21d0f0d93855e1ab312327",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3eeb984404cfdf422b21d0f0d93855e1ab312327`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedMertensCells`](../../../../mathematics/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_cumulative_second_to_first_tail](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/finite-cumulative-second-to-first-tail--41cc7907094dddc4cb75c59d.md) | 22 | `result-track:41cc7907094dddc4cb75c59dce1604911b336bafb88c4092bf3b74f0ddf104b9` |
| 2 | `theorem` | [sum_succ_range_filter_eq_Ico_growing](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/sum-succ-range-filter-eq-ico-growing--aaee04d699e4727780d97682.md) | 46 | `result-track:aaee04d699e4727780d9768244fb45b841f1df3d779a674ed9df16895be047e0` |
| 3 | `def` | [coreGrowingShiftAnchor](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/coregrowingshiftanchor--0201466b63e0f6bd529b807f.md) | 71 | `declaration-track:0201466b63e0f6bd529b807fd22e0fc49e83cbcc41d013cd31dbc70127d42ab1` |
| 4 | `def` | [coreGrowingShiftFirstDifferenceTail](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/coregrowingshiftfirstdifferencetail--f2e65ca150c1629fbd2ca32c.md) | 81 | `declaration-track:f2e65ca150c1629fbd2ca32c071fa0325cc9afa979e653043210cbf1f925b003` |
| 5 | `def` | [coreGrowingShiftFirstDifferenceDepth](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/coregrowingshiftfirstdifferencedepth--221eba6120b120b92072de9e.md) | 90 | `declaration-track:221eba6120b120b92072de9e788c76836053d16922d3397c9d015a3a6b6c05c4` |
| 6 | `theorem` | [logarithmicLongDepthRemainder_eq_terminal_add_signedInterior](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/logarithmiclongdepthremainder-eq-terminal-add-signedinterior--0aea133f0f716f79d9ef68c1.md) | 97 | `result-track:0aea133f0f716f79d9ef68c14b1b266fc3f9dee33d3b53cbab31090f7aa5f6f0` |
| 7 | `theorem` | [harmonicTerminal_add_signedInterior_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/harmonicterminal-add-signedinterior-eq-growingshift--2b78f9da3f49fb6975be0b40.md) | 115 | `result-track:2b78f9da3f49fb6975be0b40fab051f4c39d3306a4ef91d202f800cdb0a5b3b6` |
| 8 | `theorem` | [logarithmicLongDepthRemainder_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/logarithmiclongdepthremainder-eq-growingshift--c665891afdfab76f043330c1.md) | 173 | `result-track:c665891afdfab76f043330c1f7d51e3a4c69a11e2a0e0954af02905b8746f9cf` |
| 9 | `def` | [coreGrowingShiftFirstDifferencePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/coregrowingshiftfirstdifferencepacket--5571fc54bdf2b3087c8856ea.md) | 183 | `declaration-track:5571fc54bdf2b3087c8856ea67cf182e178229f216dbb95a435519f39715c51f` |
| 10 | `theorem` | [coreLongDeepRemainderPacket_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/corelongdeepremainderpacket-eq-growingshift--657a967e7ff70e12639ee755.md) | 190 | `result-track:657a967e7ff70e12639ee755435eb2f0eb614d229f1171338db07e6d343c3f83` |
| 11 | `theorem` | [coreBoundary_add_nonboundaryMertensCells_eq_growingShift](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/coreboundary-add-nonboundarymertenscells-eq-growingshift--f00aee06e277aec2d8f27a4c.md) | 202 | `result-track:f00aee06e277aec2d8f27a4c10766b5877e0bb0b8f26e41e2e8c7cae433c77cf` |
| 12 | `def` | [SubpolynomialCoreGrowingShiftFirstDifferencePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/subpolynomialcoregrowingshiftfirstdifferencepacket--28021a61cf8af0c2f2ef814a.md) | 215 | `declaration-track:28021a61cf8af0c2f2ef814a1fb582f30accc80b53196ff11ca2469168e556c6` |
| 13 | `theorem` | [subpolynomialCoreGrowingShiftFirstDifferencePacket_iff_coreRemainder](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/subpolynomialcoregrowingshiftfirstdifferencepacket-iff-coreremainder--a0879431053a8df6bb5fa459.md) | 222 | `result-track:a0879431053a8df6bb5fa459477eb629155c33cc0f37853f4c52a1ed622e5ace` |
| 14 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftfirstdifferencepacket--d562d051b7c521960ab5fa59.md) | 241 | `result-track:d562d051b7c521960ab5fa598dab1795d4bac701e72772601ebf23bd7aa1d2d2` |
| 15 | `structure` | [GrowingShiftBinaryMobiusSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/growingshiftbinarymobiussource--ec29134b0cd7488cd6c812ee.md) | 249 | `declaration-track:ec29134b0cd7488cd6c812eebc02a1ab958f9949a8dc1c9d093ea904c6526d28` |
| 16 | `structure` | [ToCoreGrowingShiftFirstDifferencePacketAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/tocoregrowingshiftfirstdifferencepacketadapter--f52ee670e51420ced18b13f7.md) | 259 | `declaration-track:f52ee670e51420ced18b13f761c0d2cffdd042bb2240b7befa6d296a3cbccacc` |
| 17 | `theorem` | [riemannHypothesis_of_growingShiftBinaryAdapter](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/declarations/riemannhypothesis-of-growingshiftbinaryadapter--0f81cb59e084268681dfc8aa.md) | 272 | `result-track:0f81cb59e084268681dfc8aae3af65b982e8f94f2c296787bb7039b5765b9df9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
