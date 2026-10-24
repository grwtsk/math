# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainLiteralCheck.Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8383749e0d4f86809d61073bd26d351506ce5358",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8383749e0d4f86809d61073bd26d351506ce5358`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisorremaindercore--083697049a5e6185248bd6d9.md) | 16 | `declaration-track:083697049a5e6185248bd6d9dbe67f65f9698d601c790001a186ea612f6cedf2` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisorremaindercore-measurable--5cb8d9292722f4e9c58a0d87.md) | 22 | `result-track:5cb8d9292722f4e9c58a0d87f90ad09539fc64fd0cb54dbacbc3bd48da0be0e6` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisorremaindercore-sq-le--4e3fce5265034805f04d3d1a.md) | 34 | `result-track:4e3fce5265034805f04d3d1acc8859c14372206faf74a77f0c8569697fccd507` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/remaindermajorant-integrable--b8384f9ac2dbe97af3b0e575.md) | 63 | `result-track:b8384f9ac2dbe97af3b0e575fba601c3134746bcfc5890be1ea08b6ace6ef305` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisorremaindercore-memlp--9d45c4d1413a50437358b06f.md) | 70 | `result-track:9d45c4d1413a50437358b06f0ae8414291fdbf57d58c69baf44e438f62550d4e` |
| 6 | `def` | [divisorRemainderVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisorremaindervector--c6d6ed6edfab3c5b3365f1c3.md) | 81 | `declaration-track:c6d6ed6edfab3c5b3365f1c36f6e3afb4b0c3c5e79824c90a091e641ba31783d` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisorremaindervector-norm-le--e9ccf51e2ba94fbcc7c8f916.md) | 85 | `result-track:e9ccf51e2ba94fbcc7c8f91611a1a47950dcffddf5a0e1335144471c9f14d883` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/sourcemultiplier-divisorremainder-norm-le--1594d1f3d4666be450214d60.md) | 108 | `result-track:1594d1f3d4666be450214d601435bc7070ddde991f6816232ba8528ebd02afeb` |
| 9 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisormainresidual--267e27d89fa7cfa09e98eda5.md) | 133 | `declaration-track:267e27d89fa7cfa09e98eda5ab136d4d8b973890c669926fa4a2d719553db351` |
| 10 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/arithmeticresidual-eq-main-sub-remainder--952c3e78313c52ac95e0c67a.md) | 143 | `result-track:952c3e78313c52ac95e0c67a3a2ff9a3e41fa405d600e6e5d85c6eb321e73916` |
| 11 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisormaincore--3d457ba82e122cb0fb3a5e36.md) | 154 | `declaration-track:3d457ba82e122cb0fb3a5e3627e2301ac8e2a3719ef943b269710d807d5039b5` |
| 12 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/maincore-eq-add--079e9d37411bf154dc0cbfef.md) | 158 | `result-track:079e9d37411bf154dc0cbfef5ebc5e6ce0fe28a0a84d7313888aeaa55f0173f4` |
| 13 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisormaincore-memlp--f56f7736737cb3b1be0e4d8d.md) | 173 | `result-track:f56f7736737cb3b1be0e4d8d8a5370ee5ba6a26f38ddecc3739920c9e2b0ed18` |
| 14 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/divisormainvector--58aa4b8c8d0a425f88e4d238.md) | 181 | `declaration-track:58aa4b8c8d0a425f88e4d23844199bb82cf4cc9d5609e62ac1215eefd59c72b5` |
| 15 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/mainvector-eq-add--444f2ee216ffaa448649c608.md) | 185 | `result-track:444f2ee216ffaa448649c608bb50c273e25327bdc9bde8e7c039314152928276` |
| 16 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/filtered-core-main-norm-difference-le--f83e880883f674ff9297e46d.md) | 203 | `result-track:f83e880883f674ff9297e46dd679d6db461d74af8aa0e87bc403dee25294dc29` |
| 17 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/example--4434f75bf81dc786fb9aa6f9.md) | 230 | `declaration-track:4434f75bf81dc786fb9aa6f95c8190bd4e67c9223b7b1452ed2a642c0eddaed5` |
| 18 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/example--0244edd9b1867fb8e51ec0cc.md) | 238 | `declaration-track:0244edd9b1867fb8e51ec0cc53a5f15790619ff6dd7c220b302c7287f2cf8bba` |
| 19 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/example--2babaebf34cb936f982a2f06.md) | 244 | `declaration-track:2babaebf34cb936f982a2f0667a0f77ceb9a521962fdacd9ccec48dbbec55e75` |
| 20 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/example--12ec6f4890fd52f87e7bf888.md) | 248 | `declaration-track:12ec6f4890fd52f87e7bf8880ffd9cdad5df48cf727bfa2fa6d9794d299fb5d8` |
| 21 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/example--90b9ee1051333dd902a1a6c6.md) | 251 | `declaration-track:90b9ee1051333dd902a1a6c6e2cf09ec7caae34b0bb4ee94c2ae3f1ae8178b5b` |
| 22 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/declarations/example--9f0ab8f77893d61d4c448449.md) | 255 | `declaration-track:9f0ab8f77893d61d4c44844948000d4f8509fa92d7384249033fa745d6f3a809` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
