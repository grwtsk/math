# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "609f838391f0a59ecf9cf3f797521b281c51c148",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `609f838391f0a59ecf9cf3f797521b281c51c148`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiKrylovWhitening` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiWhitenedProjection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedprojection--bf17ecbf29b047808c078ac4.md) | 40 | `declaration-track:bf17ecbf29b047808c078ac498c5ed629fe3b9398bc34acece17c3048c5c5860` |
| 2 | `theorem` | [thetaPhiWhitenedProjection_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedprojection-transpose--c2d11a266ebadc5d3410db59.md) | 47 | `result-track:c2d11a266ebadc5d3410db593db3cc5dc2ed75ca83339ee02df895b7aaa9974d` |
| 3 | `theorem` | [thetaPhiWhitenedProjection_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedprojection-sq--dc01ee8de2ff9621db37349f.md) | 56 | `result-track:dc01ee8de2ff9621db37349f40389bdd1fd96c21023cdd170536c23f9967f7a6` |
| 4 | `theorem` | [thetaPhiWhitenedParityCompression_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedparitycompression-transpose--d72bd59757ee7a49f72b80bb.md) | 80 | `result-track:d72bd59757ee7a49f72b80bb37f58ca0da2b0a69f8311b06cb0517f810a7e95a` |
| 5 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedparitycompression-phasedefect--9df3e82273b425d8459a4b50.md) | 93 | `result-track:9df3e82273b425d8459a4b508c01bbc03960631d9050aca34e1c5497a9f42212` |
| 6 | `def` | [thetaPhiWhitenedPhaseExcursion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedphaseexcursion--6b62a35b75fd98c067181ffc.md) | 143 | `declaration-track:6b62a35b75fd98c067181ffc8d20e18f2c758e66982c4d150e27b3f14e7cf786` |
| 7 | `theorem` | [thetaPhiWhitenedComplementProjection_transpose](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedcomplementprojection-transpose--01323412a09da05d6ceeeefe.md) | 152 | `result-track:01323412a09da05d6ceeeefe0c2d9751bc473fa8a9f1b48067dcc53dac31db10` |
| 8 | `theorem` | [thetaPhiWhitenedComplementProjection_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedcomplementprojection-sq--3da8ea5f8720df6ea9c1a111.md) | 162 | `result-track:3da8ea5f8720df6ea9c1a11181c83e6bd5ec02504e74699ec1175d8a7e6c1cea` |
| 9 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect_eq_gram](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedparitycompression-phasedefect-eq-gram--5ba36dbc844ff5a556f4ff84.md) | 184 | `result-track:5ba36dbc844ff5a556f4ff84a526b44efe4929bf6afb7252a96ddf6880dbdfba` |
| 10 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedparitycompression-phasedefect-possemidef--b79480d6fd74038b039bf57a.md) | 218 | `result-track:b79480d6fd74038b039bf57af52a7e3faee630b3545eced68dbd0fd7ccb55529` |
| 11 | `theorem` | [thetaPhiWhitenedParityCompression_phaseDefect_eq_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedparitycompression-phasedefect-eq-zero-iff--c862c0dd4d8ad3ec72445b13.md) | 231 | `result-track:c862c0dd4d8ad3ec72445b132a40e891e2a57e93131c72cfe304edb25baf013e` |
| 12 | `def` | [ThetaPhiWhitenedPhaseInvariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedphaseinvariant--b03fd00bf085cc154a7e89e5.md) | 258 | `declaration-track:b03fd00bf085cc154a7e89e5f33be550172d70c55b0858b2c5fab0010619abdd` |
| 13 | `theorem` | [thetaPhiWhitenedPhaseExcursion_eq_zero_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedphaseexcursion-eq-zero-iff--4c155dd58f62a7716c5c3bfa.md) | 268 | `result-track:4c155dd58f62a7716c5c3bfae8f5ddce272c9a4546c1a452f52bb3842bd1fd5e` |
| 14 | `theorem` | [thetaPhiWhitenedPhaseInvariant_iff_sq_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedphaseinvariant-iff-sq-one--88e431c190d9826d92704b43.md) | 276 | `result-track:88e431c190d9826d92704b43aa61b02924921b9eb7280b43130644029e28db43` |
| 15 | `theorem` | [thetaPhiWhitenedParityCompression_sq_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/declarations/thetaphiwhitenedparitycompression-sq-le-one--7762a581a13ef3ebcdcba69c.md) | 293 | `result-track:7762a581a13ef3ebcdcba69c069fca18dbd4a469b3b06baebcb90f57907c3b68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
