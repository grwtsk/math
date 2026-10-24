# Verification target: GRWTSK.Algebra.UniversalAlgebra.Opposite.Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b260962086f7a4f934218f02f716c34ef9ec4b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b260962086f7a4f934218f02f716c34ef9ec4b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instmulzeroclass--333661be2f16aad97ee4b0dd.md) | 19 | `declaration-track:333661be2f16aad97ee4b0ddbcedaca7b48a8f64f030dafbe08efddcbc73f9e6` |
| 2 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instmulzerooneclass--e225797ad0278c0e88ce33af.md) | 23 | `declaration-track:e225797ad0278c0e88ce33af0ed3ddd4ae6608ba4e1e96fed9da04ecba80f315` |
| 3 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instsemigroupwithzero--b49807bc693d65a0ae314d4b.md) | 27 | `declaration-track:b49807bc693d65a0ae314d4bc4a6633bb438cc973c0f4bbfb281f1ebffa841a0` |
| 4 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instmonoidwithzero--ceb302876281cb1a4d9d40b5.md) | 31 | `declaration-track:ceb302876281cb1a4d9d40b5b5ea32e261a5986ce2fa6f46526ea46348bf686c` |
| 5 | `instance` | [instGroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instgroupwithzero--3dd8818750c22a74817574f5.md) | 35 | `declaration-track:3dd8818750c22a74817574f570160e3da1dccd903211cebce3dc2d11994d3c3d` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instnozerodivisors--bf73ddf8a872240ccabd9476.md) | 42 | `declaration-track:bf73ddf8a872240ccabd947663051ca8f597c99bf5580e29c71668dd8eeebe64` |
| 7 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instmulzeroclass--6f6d85b164270b5d2939c7bb.md) | 51 | `declaration-track:6f6d85b164270b5d2939c7bb3332eed1c8dc4231716b4bbee04753cfc54579ba` |
| 8 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instmulzerooneclass--1e4eae70bb99b8ec252e0d4e.md) | 55 | `declaration-track:1e4eae70bb99b8ec252e0d4e80401e8ff66c4d76f4f7a80056facf90e82d4e27` |
| 9 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instsemigroupwithzero--2554205cd506f9f26241e31f.md) | 59 | `declaration-track:2554205cd506f9f26241e31f0b0cf8c633a13ba855f395af2f9a12b56139f9ff` |
| 10 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instmonoidwithzero--02f2499fd7c68cdd9724dc4d.md) | 63 | `declaration-track:02f2499fd7c68cdd9724dc4dbcd778db2d2ec848f747529ce716eb5bb51a880a` |
| 11 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instnozerodivisors--db85d133258ed3baea0e226f.md) | 67 | `declaration-track:db85d133258ed3baea0e226f89582a86aaf93b453825d84606b716a0347f5d45` |
| 12 | `instance` | [instGroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/declarations/instgroupwithzero--45e0dd568159eb355d3e44da.md) | 72 | `declaration-track:45e0dd568159eb355d3e44da003960f45946db175a4f7b27c2caebeaf3de5a80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
