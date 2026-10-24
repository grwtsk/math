# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrectionAudit.Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bab3fa5713841130ceb2140fb670c27ebcae6ebe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bab3fa5713841130ceb2140fb670c27ebcae6ebe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [source_multiplier_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/declarations/source-multiplier-lower--f2132aae023581e62aeec2c7.md) | 18 | `result-track:f2132aae023581e62aeec2c7cc120f1493cb7cab3389f1c0c07f48bfce81d643` |
| 2 | `lemma` | [archimedeanValue_lower_of_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/declarations/archimedeanvalue-lower-of-mass--b765ccbb484fe14ce73ef593.md) | 26 | `result-track:b765ccbb484fe14ce73ef593dc1acf9833f21db5f3f80d6d816556fb09db802a` |
| 3 | `lemma` | [first_correction_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/declarations/first-correction-lower--85fce9159ba46213b85f849b.md) | 38 | `result-track:85fce9159ba46213b85f849be682331fa1e8ff3aa8f099d33af15b3b30fb174d` |
| 4 | `lemma` | [second_correction_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/declarations/second-correction-lower--ea41e7e8b443428b81ff8687.md) | 63 | `result-track:ea41e7e8b443428b81ff8687a64467ed7db395111625e46d032d9883aa68ade8` |
| 5 | `lemma` | [correction_lower_of_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/declarations/correction-lower-of-mass--af96ad7f2733a33ee0737d77.md) | 89 | `result-track:af96ad7f2733a33ee0737d77a4fb9dcb51cdbc032a2044c20c1db450e6eeef33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
