# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveAtlasQuadraticCertificate.Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e1817d4a9ca33fdea39e1e53366ba638618d9a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e1817d4a9ca33fdea39e1e53366ba638618d9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteQuadraticCertificate` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramProblem](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/gramproblem--312a14a9f46e269849d9ea88.md) | 16 | `declaration-track:312a14a9f46e269849d9ea8827d32241c328caebe203db6a38fcd86249fc577b` |
| 2 | `def` | [gramCertificate](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/gramcertificate--5bb1c1180d900faa93ca5dbf.md) | 21 | `declaration-track:5bb1c1180d900faa93ca5dbf7c1e3b056b2ba544592fea5760220019c292444a` |
| 3 | `theorem` | [accepts_gram](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/accepts-gram--e08d94ab25edc8ccd16e4858.md) | 27 | `result-track:e08d94ab25edc8ccd16e485883e151c55b9b26b990ba2a42855395f15ba3767c` |
| 4 | `def` | [negativeProblem](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/negativeproblem--5ffeb3f31904cbed1fedbf24.md) | 38 | `declaration-track:5ffeb3f31904cbed1fedbf24b212bd057a07eff1aa1a36e0fe9a41ecab9c2e1c` |
| 5 | `theorem` | [rejects_negative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/rejects-negative--709b9deedf62f5568bd3f5f0.md) | 44 | `result-track:709b9deedf62f5568bd3f5f0d4441a539bbdcda84efb8dbcc714f2968701a98a` |
| 6 | `def` | [constrainedProblem](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/constrainedproblem--6752018257f1b3f165ed4ec9.md) | 53 | `declaration-track:6752018257f1b3f165ed4ec900872b7c3f3b3dfd12caf361e2e1b1b3595f1da9` |
| 7 | `def` | [constrainedCertificate](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/constrainedcertificate--d44871a37cae595120dd7fe0.md) | 58 | `declaration-track:d44871a37cae595120dd7fe0e566f7759386011af862b99569f99f121184dffe` |
| 8 | `theorem` | [accepts_constrained](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/accepts-constrained--0cd31f7e44a705f2298dbef4.md) | 64 | `result-track:0cd31f7e44a705f2298dbef49c345d62d368a02d7e00267289a664d0d7be4901` |
| 9 | `def` | [inequalityProblem](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/inequalityproblem--d376cfe52a31fba283040ec0.md) | 75 | `declaration-track:d376cfe52a31fba283040ec0d59b7adb00c8e3086bf797397327cfa0ab63abd1` |
| 10 | `def` | [inequalityCertificate](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/inequalitycertificate--a8aee06324dd2e3165a6b650.md) | 80 | `declaration-track:a8aee06324dd2e3165a6b65058410092bd4aab0a8700c5e1e46269a5258f8844` |
| 11 | `theorem` | [accepts_inequality](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/accepts-inequality--62aaecf799a9c08e6b48054c.md) | 86 | `result-track:62aaecf799a9c08e6b48054c4c7b27a27630377bd6a902a5fd2cfcc8230cd22e` |
| 12 | `def` | [negativeMultiplierProblem](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/negativemultiplierproblem--0023b612079c5d91e5951bed.md) | 97 | `declaration-track:0023b612079c5d91e5951bed8eb3bf6d55928fe4e38214813dae4b8243b6431a` |
| 13 | `def` | [negativeMultiplierCertificate](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/negativemultipliercertificate--a30672e6e259b5f6ab997891.md) | 102 | `declaration-track:a30672e6e259b5f6ab997891ed096af5fe0febb851250a629353b1950fd75e22` |
| 14 | `theorem` | [rejects_negative_multiplier](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/rejects-negative-multiplier--b2b22ffbf2c24df140627f37.md) | 108 | `result-track:b2b22ffbf2c24df140627f3750adb1512d9bbb4834958c10cf2ee477f9ce31b3` |
| 15 | `theorem` | [transports_inequality](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/transports-inequality--0ff050015294482ffe0045ac.md) | 117 | `result-track:0ff050015294482ffe0045acb695cbaeae6644e5fb3e582b59342197a7f703de` |
| 16 | `theorem` | [constrained_target_negative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/constrained-target-negative--f4a88caafc4f59406d055aee.md) | 123 | `result-track:f4a88caafc4f59406d055aee97f4b75086c66fe3dba75144ac9ee1264c31303d` |
| 17 | `theorem` | [hostile_vector_not_admissible](../../../../../mathematics/Algebra/LinearAlgebra/PositiveAtlasQuadraticCertificate/Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017.lean/declarations/hostile-vector-not-admissible--18c29ec65d9286af2d2c462d.md) | 127 | `result-track:18c29ec65d9286af2d2c462d87876583f658e8ad7b2cddc36912a81ae7a3059d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
