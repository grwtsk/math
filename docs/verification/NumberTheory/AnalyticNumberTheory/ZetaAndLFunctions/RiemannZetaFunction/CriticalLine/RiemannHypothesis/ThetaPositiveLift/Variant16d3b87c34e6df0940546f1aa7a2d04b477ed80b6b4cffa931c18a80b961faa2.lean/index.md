# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f658fb089129ae0cf6bc543d8318a4670d34ea2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f658fb089129ae0cf6bc543d8318a4670d34ea2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWhitenedHalfThreshold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiPositiveParityProjector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphipositiveparityprojector--9c3f264086fc4cbfa62b02b0.md) | 45 | `declaration-track:9c3f264086fc4cbfa62b02b0abcc6551e824cfd762afde9fb48b5b3142575489` |
| 2 | `theorem` | [thetaPhiPositiveParityProjector_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphipositiveparityprojector-transpose--caa49c63e8997ebcdb43357d.md) | 51 | `result-track:caa49c63e8997ebcdb43357d39c86eac35acab9074c8fd3759a2193736d780dc` |
| 3 | `theorem` | [thetaPhiPositiveParityProjector_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphipositiveparityprojector-sq--a0c10e1ed8564399f8add9e8.md) | 62 | `result-track:a0c10e1ed8564399f8add9e85428a67716a81e2cea76d5ae89ecd528c35d6eff` |
| 4 | `theorem` | [thetaPhiPositiveParityProjector_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphipositiveparityprojector-possemidef--f0dabc0a89536fa1311638cd.md) | 76 | `result-track:f0dabc0a89536fa1311638cda77a8fb9e7badce5266328b1024b3ae949d03dec` |
| 5 | `theorem` | [thetaPhiParityProjectors_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiparityprojectors-add--27b3bd6abaa024690450115d.md) | 85 | `result-track:27b3bd6abaa024690450115d1718a5c219d5d44450edddbcf0e8a9e4e8248f7a` |
| 6 | `def` | [thetaPhiWhitenedPositiveParityGram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiwhitenedpositiveparitygram--58c7af2a6e7723f8b8493989.md) | 107 | `declaration-track:58c7af2a6e7723f8b8493989c1516bca22abcd3d084f7f132e3ce76e1a987d4d` |
| 7 | `theorem` | [thetaPhiWhitenedPositiveParityGram_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiwhitenedpositiveparitygram-possemidef--dfd4a7bd22c0307062d89264.md) | 115 | `result-track:dfd4a7bd22c0307062d89264a2b02e3843c9c8662447ddf1b35944fc2a642ab9` |
| 8 | `theorem` | [thetaPhiWhitenedParityGrams_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiwhitenedparitygrams-add--cc9a9f75ad821eef3d897724.md) | 126 | `result-track:cc9a9f75ad821eef3d897724342d320375dbb7c661816e997663b60de283cc76` |
| 9 | `theorem` | [thetaPhiWhitenedParityCompression_eq_positiveGram_sub_negativeGram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiwhitenedparitycompression-eq-positivegram-sub-negativegram--64616504e0976d8b09747116.md) | 148 | `result-track:64616504e0976d8b0974711699e1e0ac9c649c55184ecc68371fc203369cfa20` |
| 10 | `theorem` | [thetaPhiWhitenedNegativeParityGram_eq_one_sub_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiwhitenednegativeparitygram-eq-one-sub-positive--15a22493a56ed6f4ba3a9036.md) | 166 | `result-track:15a22493a56ed6f4ba3a903619848e94e0acad217bbc6c7dbb6c0d9e14bf0771` |
| 11 | `theorem` | [thetaPhiWhitenedPositiveParityGram_eq_one_sub_negative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant16d3b87c34e6df0940546f1aa7a2d04b477ed80b6b4cffa931c18a80b961faa2.lean/declarations/thetaphiwhitenedpositiveparitygram-eq-one-sub-negative--36deaf9129042cbabb79bda2.md) | 176 | `result-track:36deaf9129042cbabb79bda2b955bc5a94ffbb920a9cf6ffc4fb20b67e67e3b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
