# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt03.Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0526073b5a857240c4ff184e62799a4cfb3544d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0526073b5a857240c4ff184e62799a4cfb3544d`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/mangoldtlogprefix-measurable--3014d697062c60f15cdaa7d7.md) | 26 | `result-track:3014d697062c60f15cdaa7d74f7c2424914a6f90be8430ca2d4a92f5328242c5` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/mangoldtlogerror-measurable--e813673706d0f3387015749d.md) | 30 | `result-track:e813673706d0f3387015749dc600adccb799c3c29148b1d1cd88396cc711a03d` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/centeredmangoldterror-measurable--5be42869e9d8b6af8fca3080.md) | 34 | `result-track:5be42869e9d8b6af8fca30807710e35c9799830860238f8f4ee0d7db4c179ef1` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/centeredmangoldterror-bound--4ac1e041dc71237c2aa6dfb8.md) | 39 | `result-track:4ac1e041dc71237c2aa6dfb88c7c2b93783cec20d608dec553708c6b3bac29df` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/centeredmangoldterror-laplace-integrable--fa1ec4e6f76b3f47f94a24b7.md) | 45 | `result-track:fa1ec4e6f76b3f47f94a24b78bf8b7cada1edf02b886948803b15a7a4e6650c6` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/mangoldtlogerror-laplace-integrable--5912b41b8ef53e5e10b388e8.md) | 67 | `result-track:5912b41b8ef53e5e10b388e8028b855cfc51b1e7102c61581365d0bb5d7c7dc4` |
| 7 | `theorem` | [linear_exponential_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/linear-exponential-integrable--55e78b81212d59a805c8c3f8.md) | 79 | `result-track:55e78b81212d59a805c8c3f854c080ccf9847e02f90ce36931bf96c951d32c3e` |
| 8 | `theorem` | [linear_complex_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/linear-complex-laplace-integrable--9535d46c95572086e2a77feb.md) | 86 | `result-track:9535d46c95572086e2a77febcb9352b06dc2742f9c59528c37ef8209f3b92ce1` |
| 9 | `theorem` | [mangoldtLogPrefix_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/mangoldtlogprefix-laplace-integrable--9712734716f7bce8efd0f39a.md) | 100 | `result-track:9712734716f7bce8efd0f39a95d6b259e051aa14d6bc971451602bd8fb8046e4` |
| 10 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variant22c712a837146dfa59c1137519afd335cf79de36a4fee98cfee123d515e824a5.lean/declarations/centeredmangoldterror-below-first-atom--d10a6a0bf462bc29e1ee62c0.md) | 110 | `result-track:d10a6a0bf462bc29e1ee62c0378b0b0aa513f8b33dbf76868cae7fa86d857f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
