# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4540e807f05e99c9c9a1f82795eac9c8f0263d6f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4540e807f05e99c9c9a1f82795eac9c8f0263d6f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoxeterMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/coxetermatrix--9f956f33203994804ec18718.md) | 73 | `declaration-track:9f956f33203994804ec18718da749114bf51c94e1399fc6a8a4a0d2f71a608fb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/instance--79627992eb863e9535293441.md) | 85 | `declaration-track:79627992eb863e95352934414fc6221ab42019e63f5843b2cb7c1f657b6e7f65` |
| 3 | `theorem` | [symmetric](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/symmetric--4b3e5c48d96b61140910a3a6.md) | 91 | `result-track:4b3e5c48d96b61140910a3a63e98db239b0ae4fe196522a81dcfc9740ec6a4c4` |
| 4 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/reindex--a0e22d2ce2029173338a7d7a.md) | 94 | `declaration-track:a0e22d2ce2029173338a7d7a39f6430ae20d592be58f06f4b0f9d5b55a9ff058` |
| 5 | `theorem` | [reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/reindex-apply--4a9566ec73e568af455e65e0.md) | 100 | `result-track:4a9566ec73e568af455e65e0a9ad7703bd5d02e3bfc9322aae8a44c7b4095021` |
| 6 | `def` | [Aₙ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/a--be3396af10e0cdeeeb76c4b6.md) | 111 | `declaration-track:be3396af10e0cdeeeb76c4b6fdd5600c8222b4f9dc224fafb7a3fff17fab165a` |
| 7 | `def` | [Bₙ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/b--88bfc68c7eff032b22a81a0f.md) | 129 | `declaration-track:88bfc68c7eff032b22a81a0fdc15de50556cde94e6ea5473829485c964e6550c` |
| 8 | `def` | [Dₙ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/d--a94c3505e56ec37bbab2303b.md) | 149 | `declaration-track:a94c3505e56ec37bbab2303b1b4dfefdcb0888ffb7493ea42c9eb646c0f54426` |
| 9 | `def` | [I₂ₘ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/i--920a4138ee7ea319df4597f3.md) | 166 | `declaration-track:920a4138ee7ea319df4597f351f39832a934eb9e785416badd84f6ffbeca587c` |
| 10 | `def` | [E₆](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/e--32ee5e745d76e9e225666fa4.md) | 181 | `declaration-track:32ee5e745d76e9e225666fa40c673ae3b407f957d19dcb15dd9a0a665fd86e97` |
| 11 | `def` | [E₇](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/e--98c5b2a240e57b563dd29c58.md) | 198 | `declaration-track:98c5b2a240e57b563dd29c58f8b79ddd939e3433ccb2b273c409c367931fb2bb` |
| 12 | `def` | [E₈](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/e--88f7955876e6a3ae5aadbcc3.md) | 216 | `declaration-track:88f7955876e6a3ae5aadbcc39e097802df455b1e93cce0ce475b4a167344a1da` |
| 13 | `def` | [F₄](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/f--0e4bc08428a55bc101105fb4.md) | 234 | `declaration-track:0e4bc08428a55bc101105fb4e22129de3c06f70484e8cbf1e0999a111533ee30` |
| 14 | `def` | [G₂](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/g--8acc6bea0bbf7def6bdc3795.md) | 248 | `declaration-track:8acc6bea0bbf7def6bdc3795af94b461348b3663eafd8be58b632a5ede81fc9b` |
| 15 | `def` | [H₃](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/h--390ce8d1557394254ac5d138.md) | 260 | `declaration-track:390ce8d1557394254ac5d13847bf8377646c4259e701d1d4dbabc16ac926cd7e` |
| 16 | `def` | [H₄](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant546d4ffbb1fef6e2d05a5ec402e98a6f7ac6f39e2651b66b2ee1057aa0bf3915.lean/declarations/h--e3b630d4f2f76bad534ae151.md) | 273 | `declaration-track:e3b630d4f2f76bad534ae1519502849ad9a6b6a2abe8d2414d92e500f0635b52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
