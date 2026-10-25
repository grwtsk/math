# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscreteFixedPoint.Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f82a13f587d27e81779a808936afd658f61d60c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f82a13f587d27e81779a808936afd658f61d60c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.AuthorityElements.AuthorityProfile` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotAuthority` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VersionedOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/versionedoperator--dcb4cadba0bd3f7cc2e81ac1.md) | 24 | `declaration-track:dcb4cadba0bd3f7cc2e81ac18db0bc81ff714c4bc43eb95189f82c4821b780dd` |
| 2 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/step--457e3cbab774c7e2d17f86c8.md) | 37 | `declaration-track:457e3cbab774c7e2d17f86c8a3ac45071d463cb706b6e23ff22eafbce65c44f7` |
| 3 | `theorem` | [step_value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/step-value--d6b08304a36fd8184bb7f3b9.md) | 42 | `result-track:d6b08304a36fd8184bb7f3b9e503e96e97589b3d06f861b4cf0dbc0900d94984` |
| 4 | `def` | [onUniverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/onuniverse--25785f50876ad19d474a0601.md) | 49 | `declaration-track:25785f50876ad19d474a0601ebf8dec6f0b93f340e6ac928a51a56689f451953` |
| 5 | `structure` | [CertifiedFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/certifiedfixedpoint--a879822224e4b23fedd59625.md) | 65 | `declaration-track:a879822224e4b23fedd59625de7a8ca26adebd994a1ef38848cdaedd8f9e853f` |
| 6 | `theorem` | [step_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/step-eq--ee7ae6c96efd69edd36ef136.md) | 77 | `result-track:ee7ae6c96efd69edd36ef1361a1110af438b69856d92f8b0ef1f005f72042658` |
| 7 | `theorem` | [raw_step_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/raw-step-eq--8b62f4c674ede056810240b7.md) | 83 | `result-track:8b62f4c674ede056810240b7107371ae75698cc60ba94f6c227f2f615080a4d8` |
| 8 | `theorem` | [iterate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/iterate-eq--1b32e46ff66cff1612edb4b9.md) | 89 | `result-track:1b32e46ff66cff1612edb4b99b47ca017679e20f9e1fdc505ee4c60370ea3313` |
| 9 | `def` | [fixedResidual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/fixedresidual--f037e8740210ef3ffe5dd08a.md) | 98 | `declaration-track:f037e8740210ef3ffe5dd08a90ef3a53b6ed7bc4a33c05390c17c187f9c10a12` |
| 10 | `structure` | [ApproximateFixedPointObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/approximatefixedpointobservation--2afc7f70b733ea3c49170a6e.md) | 109 | `declaration-track:2afc7f70b733ea3c49170a6eb0cbe8b57c5b95806dbca0cfbe08f8731a932849` |
| 11 | `structure` | [CandidateFixedFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/candidatefixedfamily--d849524a3a423fb2295e6958.md) | 120 | `declaration-track:d849524a3a423fb2295e69585372913d78d137a789f0c6864706467dc0ab92e6` |
| 12 | `structure` | [CertifiedFixedFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/certifiedfixedfamily--e27204368fd622baa9ecd28b.md) | 129 | `declaration-track:e27204368fd622baa9ecd28bfc3c39ff4ad5f1f3868bea10e90a2d1065606a46` |
| 13 | `structure` | [ExhaustiveFixedFamilyOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variantdd4a9f2b97eefb9b12150c6941abf8221082cf7c2f2164e831f15109dd903797.lean/declarations/exhaustivefixedfamilyon--0c89ba69d6e997f6b58e4438.md) | 140 | `declaration-track:0c89ba69d6e997f6b58e44382315b4713b5d39dd6f114b242763c5b68a2687b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
