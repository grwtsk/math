# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LimitKernel.Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b9d9361008f287890f392526a4a14636f737e01",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b9d9361008f287890f392526a4a14636f737e01`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Boundary.LimitState` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveProbabilityLaw](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/projectiveprobabilitylaw--61caabdc1ada8c4c49863e75.md) | 25 | `declaration-track:61caabdc1ada8c4c49863e75102141fb390c09a72731c63f64a51a5ecf70ffa7` |
| 2 | `structure` | [CompatibleSchedule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/compatibleschedule--89d0941c722435db42f4163f.md) | 41 | `declaration-track:89d0941c722435db42f4163fb184146ab91ee9e9f00b537d8f524404620ebe0e` |
| 3 | `def` | [ProjectiveBoundarySystem.defaultLimitSchedule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/projectiveboundarysystem-defaultlimitschedule--37984d07a2926793c5d8a19b.md) | 57 | `declaration-track:37984d07a2926793c5d8a19bd9d5358426a6a45d0be712bb34fdae3fc14e901e` |
| 4 | `inductive` | [LimitContractionSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/limitcontractionsource--584a9d8be20e8d850c92930a.md) | 72 | `declaration-track:584a9d8be20e8d850c92930a1cf332cf00ee3724f6d4e557b57c13f9ede4bcd6` |
| 5 | `structure` | [ProjectiveLimitKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/projectivelimitkernel--c2ff6781684c3d4ba7f6f8db.md) | 77 | `declaration-track:c2ff6781684c3d4ba7f6f8dba36d5c4387b92f90567f066d377fd801d4d112fd` |
| 6 | `def` | [ProjectiveLimitKernel.invariantLawRealization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/projectivelimitkernel-invariantlawrealization--c4efb9ad69ac5db018aeaa32.md) | 147 | `declaration-track:c4efb9ad69ac5db018aeaa325e379d5fc4b6709afe9168fe765be7d0a9189d5b` |
| 7 | `theorem` | [projective_limit_kernel_contractive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/projective-limit-kernel-contractive--900f190411b2e1f3a8c0d274.md) | 162 | `result-track:900f190411b2e1f3a8c0d274d375a670e9beb001f64b53a8078d3d9b631a9615` |
| 8 | `theorem` | [projective_limit_invariant_law_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variant8c1960d9477167e96188203ebeb233c46efe8ac6a66d388f4be2ac19dc4dbd43.lean/declarations/projective-limit-invariant-law-unique--9905617215ee4dd74d3d61e2.md) | 183 | `result-track:9905617215ee4dd74d3d61e2d5c995c86707d60ad7231411eaa81ffcf765a6f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
