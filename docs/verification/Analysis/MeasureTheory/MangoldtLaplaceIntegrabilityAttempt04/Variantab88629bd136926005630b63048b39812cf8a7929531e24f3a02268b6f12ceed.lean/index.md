# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt04.Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "838ff1cc8aa4fd03edc8416f01d2d10d371cf0da",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `838ff1cc8aa4fd03edc8416f01d2d10d371cf0da`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/mangoldtlogprefix-measurable--e38999efc01b0600bbe30edc.md) | 18 | `result-track:e38999efc01b0600bbe30edc5c89f9b5d04c4250ee20577aa8d8b40086f546cc` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/mangoldtlogerror-measurable--92eb284649debdd97fabb005.md) | 22 | `result-track:92eb284649debdd97fabb005ee749742e2cb807e18b0b3c6ec7d19ba95f5f2ee` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/centeredmangoldterror-measurable--7d1e618a2927b385cfd8d758.md) | 26 | `result-track:7d1e618a2927b385cfd8d7584ed284d188bae652a0fae70da0d388ab7691ab45` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/centeredmangoldterror-bound--f47915b98e2415cc50004824.md) | 31 | `result-track:f47915b98e2415cc50004824d39dd05b0627981de5c56ce831e182c5676e19d7` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/centeredmangoldterror-laplace-integrable--2d8f2769a02343b11bb6c510.md) | 37 | `result-track:2d8f2769a02343b11bb6c510589342fa17d617e0b79531b31f5e2b2e250ffa1a` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/mangoldtlogerror-laplace-integrable--152838473b23b977e8c5b93c.md) | 59 | `result-track:152838473b23b977e8c5b93c2d03be16fd8b8b55b7ee5b2edf9be3b6dbdd5465` |
| 7 | `theorem` | [linear_exponential_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/linear-exponential-integrable--52732c0ae7d035ee48e4befe.md) | 71 | `result-track:52732c0ae7d035ee48e4befec6b1b8adcc8c493e31bbe063c833d134f35dd476` |
| 8 | `theorem` | [linear_complex_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/linear-complex-laplace-integrable--848b08cf023b35a1d25948ad.md) | 78 | `result-track:848b08cf023b35a1d25948ad1e42452588e0ecaff7224a321ef704b73440c368` |
| 9 | `theorem` | [mangoldtLogPrefix_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/mangoldtlogprefix-laplace-integrable--9a9e799419fe5fea675cd5cb.md) | 91 | `result-track:9a9e799419fe5fea675cd5cbd41977e66e9aa570b56713dcbbf710224db17d3b` |
| 10 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/declarations/centeredmangoldterror-below-first-atom--b20920cf030f2e738d2a6016.md) | 101 | `result-track:b20920cf030f2e738d2a6016aa7491837da12e0461a7dbf39c71e2ec1aad797d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
