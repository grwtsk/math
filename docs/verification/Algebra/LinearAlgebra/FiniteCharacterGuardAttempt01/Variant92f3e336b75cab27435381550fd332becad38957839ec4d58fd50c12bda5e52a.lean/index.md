# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt01.Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8095a2df121c53e917563566376be2536c1a7bf9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8095a2df121c53e917563566376be2536c1a7bf9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/coefficientmap--7d70bed95ea5cf27a0bd3208.md) | 22 | `declaration-track:7d70bed95ea5cf27a0bd3208e624909cda6db3556f05220e886fb37741c4d4dd` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/coefficient-eq-expect--87f80897f4a731d1d88153e5.md) | 28 | `result-track:87f80897f4a731d1d88153e54660b69ac290b5a2464861638365ff452205421b` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/trivial-coefficient-eq-mean--f4d55ae50cdd44251273d1c6.md) | 33 | `result-track:f4d55ae50cdd44251273d1c62a70645f0d5ba38c1de790e3f082f798ba84a300` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/coefficient-character--453df00ee573b562954598f2.md) | 38 | `result-track:453df00ee573b562954598f2f7c5e7b9c64196ead896caacfde1648b79bb6e56` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/coefficient-eq-basis-repr--451bf1b96718db5f06c90d70.md) | 43 | `result-track:451bf1b96718db5f06c90d70a07dc0318446c63959ce25b1b734a48fa28f53de` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/complete-reconstruction--3f1433af9c51c8ba093488ef.md) | 51 | `result-track:3f1433af9c51c8ba093488ef6e5b26fc26ef11962a8c9c8567871b426586ec16` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/incompletereconstruction--d390eb5d51de987de00ca9ec.md) | 57 | `declaration-track:d390eb5d51de987de00ca9ec69c54f74272cb04bee5fb5821e421af14ee1cdf4` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/reconstruction-split--bd7f56346434be2fee590548.md) | 62 | `result-track:bd7f56346434be2fee590548e04b39c64552575748edbdf180462150789d24fc` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/incomplete-eq-self-iff--f1315e0deabac66a7a72e482.md) | 70 | `result-track:f1315e0deabac66a7a72e482d285df2901b760e68086c11be8509d12699d9922` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/nontrivialspan--7977ebfa209614bc5737d85f.md) | 81 | `declaration-track:7977ebfa209614bc5737d85f35989b42755372f9e160b9c8bfa6d2fcb0feec04` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/nontrivialspan-le-trivial-kernel--98f7b758e7f79c5e6b8bb0a2.md) | 84 | `result-track:98f7b758e7f79c5e6b8bb0a2ff8c3bbf88d5200e3b61a092384473772bd98bdf` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt01/Variant92f3e336b75cab27435381550fd332becad38957839ec4d58fd50c12bda5e52a.lean/declarations/trivial-not-mem-nontrivialspan--63cd6ceea1fe3a5d284c9d63.md) | 93 | `result-track:63cd6ceea1fe3a5d284c9d63b1630288059b62dfbcec0558f3396063ddcb3095` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
