# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt01.Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5796c8fed4eaf00dc5a96329cf512812527ade2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5796c8fed4eaf00dc5a96329cf512812527ade2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/positivemeasure--0a59e11668c26e09993532a8.md) | 22 | `declaration-track:0a59e11668c26e09993532a8afffc5a49e74e40afdd158dd30f70475093b349d` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/positivel2--7b84b79820196555ad8ccdc4.md) | 23 | `declaration-track:7b84b79820196555ad8ccdc40638f6ddab8c8473013508420d4af3b1d4edf984` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilatefunc--8c5a4d4b94b48da748cccb2f.md) | 25 | `declaration-track:8c5a4d4b94b48da748cccb2f4fc5312242ca62b1d53856195b280899782fa44f` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/positivemeasure-map-mul--30895e2b37f776c70f4bf3b0.md) | 27 | `result-track:30895e2b37f776c70f4bf3b002c4db9cff821c22def99b44d5f8e53eadb76cd2` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/positive-mul-quasi--d3bee5635593e95657315d50.md) | 36 | `result-track:d3bee5635593e95657315d501052a2bff0c3581684ed74b55af795a539107e46` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilatefunc-memlp--c43d38c19a6d94f1aaf7f2e6.md) | 42 | `result-track:c43d38c19a6d94f1aaf7f2e68b1e8d2aa58797d438112d67e5d14cbcb4c25587` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate--92b236f741a3477eb3033ee5.md) | 49 | `declaration-track:92b236f741a3477eb3033ee58508d2b49d113d162839c9b11ac6b929bf724e85` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-ae--10d3712cc1d9365a37946a3f.md) | 52 | `result-track:10d3712cc1d9365a37946a3f6ad1051a1cc0854055f40b266de4e63dd479182b` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/norm-sq-integral--c0badc6dd90c80cf145cb48b.md) | 56 | `result-track:c0badc6dd90c80cf145cb48bf7faa96c7fb18d55cfb1e61c1f7049577a104f29` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-norm-sq--c7fc0fcfc2e68d55253c9b08.md) | 65 | `result-track:c7fc0fcfc2e68d55253c9b08650488c07af369c42f042afe54f2070e70c4a102` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-norm--70c604090b5552c47eeda927.md) | 78 | `result-track:70c604090b5552c47eeda927de70c79123298c70cf9a9659c22bdce8aeacf577` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-one--4d6c2861fd04b1f868950156.md) | 81 | `result-track:4d6c2861fd04b1f868950156db0fcbb406a16b7bcd3e4873b7a6b293b8c18dc2` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-comp--aa419e9b951dacdb9fb81aca.md) | 86 | `result-track:aa419e9b951dacdb9fb81aca2661a18ef54764ce91148950f183b9277ada7346` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-inverse--b126ff0ce92888d80bceb8ea.md) | 98 | `result-track:b126ff0ce92888d80bceb8eaa58c55f4c5fb716e025f407b9be956af0ffe8fe2` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-add--6eeb4f411bc288b1a2e830dc.md) | 102 | `result-track:6eeb4f411bc288b1a2e830dc09279eb1bf01b20e2677fd2f3b1406bf0d4db92d` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilate-smul--8e0855c3493d6b5321bb1ca8.md) | 111 | `result-track:8e0855c3493d6b5321bb1ca8f3e35dd5f1e1fa04f0f67dfc600940e24160bbb7` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilationisometry--3d4c8438fb745dc1004e1159.md) | 121 | `declaration-track:3d4c8438fb745dc1004e1159e882d6f7253f49b4c01d3d8d90f55beb8555842a` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt01/Variant3a9baa743ceb4aa6ed50ba231d00bced2941c2143e823dd7c67fac340fd059dc.lean/declarations/dilationequiv--16c14b46c652ddc9a6c24764.md) | 127 | `declaration-track:16c14b46c652ddc9a6c247648616d6f38565e0da23549a0765bfad31d3dec6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
