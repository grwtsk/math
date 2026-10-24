# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dd9e1292fd52b38cc1e3fe23c45fe1592d933ee",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dd9e1292fd52b38cc1e3fe23c45fe1592d933ee`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWhitenedProjection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiWhitenedParityCompression_isHermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/declarations/thetaphiwhitenedparitycompression-ishermitian--85401f510d652a4e2a24a2dd.md) | 37 | `result-track:85401f510d652a4e2a24a2ddbfd20b2ed3c7adf24c5ec2de41e7de6a20c5c415` |
| 2 | `theorem` | [thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/declarations/thetaphiwhitenedparitycompression-eigenvalue-sq-le-one--431fbb97456b654741902339.md) | 48 | `result-track:431fbb97456b65474190233979fe190ead89834c6c73db721adecc7b210e3f22` |
| 3 | `theorem` | [thetaPhiWhitenedParityCompression_eigenvalue_mem_Icc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/declarations/thetaphiwhitenedparitycompression-eigenvalue-mem-icc--d4d17ad63bdc2d63e757d775.md) | 100 | `result-track:d4d17ad63bdc2d63e757d7756d622a3678b37cb378b6fb68d625750e1d67b22b` |
| 4 | `theorem` | [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/declarations/thetaphinormalizedparitycompression-eq-prod-eigenvalues--38b89e2df82bf8a57464f617.md) | 112 | `result-track:38b89e2df82bf8a57464f61773a89e142bcb3423817663a175f32bf420cbbf19` |
| 5 | `def` | [thetaPhiWhitenedNegativeEigenvalueCount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/declarations/thetaphiwhitenednegativeeigenvaluecount--0edd7d9c88c7046f34090443.md) | 126 | `declaration-track:0edd7d9c88c7046f34090443281b49b16be841fbf5fd67c52f6690cbbee20335` |
| 6 | `def` | [ThetaPhiWhitenedNegativeInertiaParity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc582b7ce2712d2e2e144338b93b1037b49bbb500d19d994effc4d9c686da4b18.lean/declarations/thetaphiwhitenednegativeinertiaparity--4e02047bfe3461101e1332ae.md) | 136 | `declaration-track:4e02047bfe3461101e1332ae3fa44ae3f17925eb0091ff72daec1ce476f4cfb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
