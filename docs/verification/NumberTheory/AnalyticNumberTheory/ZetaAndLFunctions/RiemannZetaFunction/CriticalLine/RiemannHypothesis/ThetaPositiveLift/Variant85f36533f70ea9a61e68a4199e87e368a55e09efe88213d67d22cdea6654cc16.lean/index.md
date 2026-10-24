# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43fbdaad99e5c2a2708a7fa421bff61017793841",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43fbdaad99e5c2a2708a7fa421bff61017793841`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWhitenedProjection` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiWhitenedParityCompression_isHermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/declarations/thetaphiwhitenedparitycompression-ishermitian--5afaef2ef562fd5e8f8be3a1.md) | 29 | `result-track:5afaef2ef562fd5e8f8be3a1e79137bf1a17837bad5bf560e821217459c4e13d` |
| 2 | `theorem` | [thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/declarations/thetaphiwhitenedparitycompression-eigenvalue-sq-le-one--61c326b5922dd48c2e1278eb.md) | 40 | `result-track:61c326b5922dd48c2e1278eb9e31b1668a7e2d44626b954acb29e6f80211b668` |
| 3 | `theorem` | [thetaPhiWhitenedParityCompression_eigenvalue_mem_Icc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/declarations/thetaphiwhitenedparitycompression-eigenvalue-mem-icc--dc31d09c0a8c5d552c18ea0b.md) | 92 | `result-track:dc31d09c0a8c5d552c18ea0b8f0f694110f906e1caa2308d559df9804fae3ccc` |
| 4 | `theorem` | [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/declarations/thetaphinormalizedparitycompression-eq-prod-eigenvalues--e131a6237c9bd14959411a48.md) | 104 | `result-track:e131a6237c9bd14959411a4800939198446338c6c40cdecbb095b8207521db67` |
| 5 | `def` | [thetaPhiWhitenedNegativeEigenvalueCount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/declarations/thetaphiwhitenednegativeeigenvaluecount--836cbda18f48a5c21b200f86.md) | 118 | `declaration-track:836cbda18f48a5c21b200f862981f2efef38b8ee5b055e2f840bc6f753eb0bc5` |
| 6 | `def` | [ThetaPhiWhitenedNegativeInertiaParity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant85f36533f70ea9a61e68a4199e87e368a55e09efe88213d67d22cdea6654cc16.lean/declarations/thetaphiwhitenednegativeinertiaparity--e1c023e9d7003e47c9e42725.md) | 128 | `declaration-track:e1c023e9d7003e47c9e427252399f83aa513ca3a7bb59563fccdafdaaba1c58c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
