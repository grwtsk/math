# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ToeplitzHankel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34b83ba36bdd11d4052f123b8f60a8e986d92d11",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34b83ba36bdd11d4052f123b8f60a8e986d92d11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Block` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toeplitz](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/toeplitz--c20927b03b14601ffca7d945.md) | 17 | `declaration-track:c20927b03b14601ffca7d94503afe231a86bd5afac67160453a9a7d64d954c09` |
| 2 | `def` | [hankel](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/hankel--89ca05466944d50aec87ac83.md) | 20 | `declaration-track:89ca05466944d50aec87ac83c968aadab5be5a7025b90c6ba502212fee877ed1` |
| 3 | `def` | [crossBlock](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/crossblock--8be6380fc21f27db5fbc4a16.md) | 23 | `declaration-track:8be6380fc21f27db5fbc4a160e712f2d79619a32accce473dc2b49a244dc16bc` |
| 4 | `def` | [joinIndex](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/joinindex--3647db05d7fcb116308ed03b.md) | 27 | `declaration-track:3647db05d7fcb116308ed03b65491211cdf5c01c216b8e7484bf30c117f964fd` |
| 5 | `def` | [reverseIndex](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/reverseindex--6091a5084f25e71e38f4c4e8.md) | 31 | `declaration-track:6091a5084f25e71e38f4c4e8810c8a8ae097fec257587d3f8d10a1b203967bc3` |
| 6 | `lemma` | [reverseIndex_involutive](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/reverseindex-involutive--0511a14918bb4887b8aadd78.md) | 33 | `result-track:0511a14918bb4887b8aadd781770f0965cb6ba320333a7a9f0183fa04b3a539a` |
| 7 | `def` | [reverseEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/reverseequiv--3a52fdb629914440256fb284.md) | 39 | `declaration-track:3a52fdb629914440256fb2845e7e291bf0ed0628b5aed2f03c7a8f01c9b5a118` |
| 8 | `lemma` | [crossBlock_reverse](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/crossblock-reverse--5902c0a44ad9a971d1e18a9e.md) | 45 | `result-track:5902c0a44ad9a971d1e18a9e5b929a573bdadf8afa6dc956b1a8a445e1298251` |
| 9 | `theorem` | [toeplitz_doubling](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/toeplitz-doubling--5a18047fabdc20a16507a1d8.md) | 53 | `result-track:5a18047fabdc20a16507a1d8cc33b835fecb37781c34ffdc7da9a7485b82b257` |
| 10 | `def` | [doubled](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/doubled--0810f3c9b1c23fffc3aa6eb9.md) | 70 | `declaration-track:0810f3c9b1c23fffc3aa6eb91665a8441fd4d12ec4ae91d9e63af95dec277c1b` |
| 11 | `def` | [cut](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/cut--2364b688b2cc5d8e228840b9.md) | 73 | `declaration-track:2364b688b2cc5d8e228840b94280e68e387081f7335fb12c2edbb3075516d873` |
| 12 | `theorem` | [cut_commutator](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/cut-commutator--73f280e6b6e26b86b1938d08.md) | 77 | `result-track:73f280e6b6e26b86b1938d088c4ca408ebb48256c92ff3a6093991aa9526f65a` |
| 13 | `def` | [squareSum](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/squaresum--8125297d56afbc8835392aa1.md) | 89 | `declaration-track:8125297d56afbc8835392aa1042f87414d7a05d54d63c84b6fd3e72e5d1b0f65` |
| 14 | `lemma` | [squareSum_blocks](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/squaresum-blocks--f8a4d3913844a48c7bc43955.md) | 92 | `result-track:f8a4d3913844a48c7bc43955828a99cf6753a2d4b233c0c5acf3e98ce1465229` |
| 15 | `theorem` | [squareSum_doubled](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrence4da7ebc0811daf1f0224c0b9.lean/declarations/squaresum-doubled--1143769fab6e065a707df24e.md) | 103 | `result-track:1143769fab6e065a707df24e663d0e525198a7cf1048a3301e6b08305144e4ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
