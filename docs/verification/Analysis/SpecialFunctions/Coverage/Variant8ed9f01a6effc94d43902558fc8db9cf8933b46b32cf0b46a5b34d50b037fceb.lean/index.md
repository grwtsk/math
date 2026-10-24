# Verification target: GRWTSK.Analysis.SpecialFunctions.Coverage.Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.ExtendedEML` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [classicalWitness](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/classicalwitness--772404607afd1ae2cb6ebb1a.md) | 6 | `declaration-track:772404607afd1ae2cb6ebb1a2a75ebf535eae2c229b72e162b278b995c9138c3` |
| 2 | `inductive` | [RepresentsDeclaredAt](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/representsdeclaredat--5dede6be5d62fe6ac3556e19.md) | 29 | `declaration-track:5dede6be5d62fe6ac3556e194b6cf1b8cf9cc86cc9eefd1221483a50175a1313` |
| 3 | `inductive` | [CoveredByExtendedEMLAt](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/coveredbyextendedemlat--4eecb124576357d3fdd3435b.md) | 83 | `declaration-track:4eecb124576357d3fdd3435b1ef33da7958c1f1c50522eaa3e707d11d1d14f23` |
| 4 | `theorem` | [classicalWitness_requiredFoundation](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/classicalwitness-requiredfoundation--b80e838e0d0e01dba487fa16.md) | 90 | `result-track:b80e838e0d0e01dba487fa16abbfce9883dc0895853c732d2e9764a37b1d4e31` |
| 5 | `theorem` | [coverage_requires_sufficient_foundation](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/coverage-requires-sufficient-foundation--a245b698ec611ec3f06cc9b2.md) | 95 | `result-track:a245b698ec611ec3f06cc9b2d215f71e6cf3e2a9a2e6229fd666a48f310562a2` |
| 6 | `theorem` | [insufficient_foundation_cannot_cover](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/insufficient-foundation-cannot-cover--af1aea1577b5cc14dc88f752.md) | 103 | `result-track:af1aea1577b5cc14dc88f7521cd3f11b5f3416f1a4625c81d3e31b83868e9d1c` |
| 7 | `theorem` | [witness_foundation_sound](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/witness-foundation-sound--934c42be6486a4e7510aef93.md) | 110 | `result-track:934c42be6486a4e7510aef9373fa1751f338a2d5d457e511e96b347592e0b982` |
| 8 | `def` | [coveredClassical](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/coveredclassical--56b688a80dc83b1bcb3ca435.md) | 153 | `declaration-track:56b688a80dc83b1bcb3ca43579ed36d49be5d9ac3d66ef4983c7602290e1aa8c` |
| 9 | `def` | [coveredMeasurable](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/coveredmeasurable--2bc6eb1e1262c36d8a39eab3.md) | 159 | `declaration-track:2bc6eb1e1262c36d8a39eab3ca372552af2585999800f2f4e34da5b71c95602f` |
| 10 | `def` | [coveredFractal](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/coveredfractal--b7cd9f66b5aca1070f7bbaf7.md) | 165 | `declaration-track:b7cd9f66b5aca1070f7bbaf75324820938ca711a6edd7a866781abaa2adb6eab` |
| 11 | `def` | [coveredZetaMobiusFractal](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/coveredzetamobiusfractal--0ca9d15482cb69ac72cc10ae.md) | 171 | `declaration-track:0ca9d15482cb69ac72cc10ae1dfa3ea601d708e2c8753425b701e60486365074` |
| 12 | `theorem` | [declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/declaredsurfaceobject-covered-by-extendedeml-at-sufficientgamma--4539c934395719cd864c4163.md) | 177 | `result-track:4539c934395719cd864c416341c4318503510abd81995b6312a1f961115c134c` |
| 13 | `theorem` | [matrix_covered_at_constructive](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/matrix-covered-at-constructive--131f70fb2b40d95c7f287b2c.md) | 233 | `result-track:131f70fb2b40d95c7f287b2c1fc2cb0f7bf6dd99c651c5e302cc492f2205c297` |
| 14 | `theorem` | [bijectiveFlow_covered_at_bijectiveGamma](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/bijectiveflow-covered-at-bijectivegamma--fc089f8244e20cabba78d508.md) | 242 | `result-track:fc089f8244e20cabba78d508059ba1bc15e7e3d2997ca0b1793acb384775bd95` |
| 15 | `theorem` | [heatAveragingGamma_cannot_cover_bijectiveFlow_claim](../../../../../mathematics/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/declarations/heataveraginggamma-cannot-cover-bijectiveflow-claim--acdee13f8a9dbfd3149d2f4a.md) | 250 | `result-track:acdee13f8a9dbfd3149d2f4ad339e97585023f4992d65feed3748d44181b12a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
