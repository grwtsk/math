# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37c5aa544d214412b888597fde30aa4babf56e1f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37c5aa544d214412b888597fde30aa4babf56e1f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasEigenvector_toLin_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/haseigenvector-tolin-diagonal--fac54ca822348c42e7104489.md) | 35 | `result-track:fac54ca822348c42e7104489669ed00af41b4e7161d1889ee9096764eec88e85` |
| 2 | `lemma` | [hasEigenvector_toLin'_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/haseigenvector-tolin-diagonal--d381e0e795a5f447773bd3d5.md) | 40 | `result-track:d381e0e795a5f447773bd3d5320d6b4f41148ef559ffd589e89f24721546b7c1` |
| 3 | `lemma` | [hasEigenvalue_toLin_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/haseigenvalue-tolin-diagonal-iff--057d0d774eccc7e4d3fdc96d.md) | 47 | `result-track:057d0d774eccc7e4d3fdc96d41af76d2fbc35a7162e2c4211ac2d9ec257825b4` |
| 4 | `lemma` | [hasEigenvalue_toLin'_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/haseigenvalue-tolin-diagonal-iff--6e918527bb96b498766c36c1.md) | 71 | `result-track:6e918527bb96b498766c36c15fcf18188241e237edd086863f66becdc00c8912` |
| 5 | `lemma` | [_root_.Module.End.HasEigenvalue.nonempty](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/root-module-end-haseigenvalue-nonempty--cac1c2e9cd630e580fc306de.md) | 81 | `result-track:cac1c2e9cd630e580fc306deec49294a016fa02341db0a88b8aa3c204ac40ffa` |
| 6 | `lemma` | [iSup_eigenspace_toLin_diagonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/isup-eigenspace-tolin-diagonal-eq-top--2f97d9d0f36518d32ac9b9fe.md) | 89 | `result-track:2f97d9d0f36518d32ac9b9fefe54ba103ea72c48d6961ad472f9eeac2e80f86b` |
| 7 | `lemma` | [iSup_eigenspace_toLin'_diagonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/isup-eigenspace-tolin-diagonal-eq-top--5a082032d336cedb3da146ef.md) | 95 | `result-track:5a082032d336cedb3da146ef0cf23beba66c60e5855c0dd2edfa4259face9d2b` |
| 8 | `lemma` | [maxGenEigenspace_toLin_diagonal_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/maxgeneigenspace-tolin-diagonal-eq-eigenspace--b5270ba594a93c062581f6b6.md) | 100 | `result-track:b5270ba594a93c062581f6b6467a7670d2453517c1f2d602366ee012b7eb0d38` |
| 9 | `lemma` | [maxGenEigenspace_toLin'_diagonal_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/maxgeneigenspace-tolin-diagonal-eq-eigenspace--9c9c3c1db3e2f5041771762f.md) | 116 | `result-track:9c9c3c1db3e2f5041771762f6733268384414a2c6e345dffcdf6d01b66aecd0b` |
| 10 | `theorem` | [_root_.LinearMap.spectrum_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/root-linearmap-spectrum-tomatrix--1a78402d2e2a1cb90d0b5a11.md) | 121 | `result-track:1a78402d2e2a1cb90d0b5a112d13883900e59a379312f4581f224fe7e7c3f37a` |
| 11 | `theorem` | [_root_.LinearMap.spectrum_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/root-linearmap-spectrum-tomatrix--01323ff4cd1c68d3eaea3fd0.md) | 126 | `result-track:01323ff4cd1c68d3eaea3fd0a4742628be399655235ff6bedf0451000a262ca1` |
| 12 | `theorem` | [spectrum_toLin](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/spectrum-tolin--802e67a12b60a64016a0527a.md) | 131 | `result-track:802e67a12b60a64016a0527ac8925327fc5f8e9d5519f78730284ff2e9212a02` |
| 13 | `theorem` | [spectrum_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/spectrum-tolin--631a27a566876c2f46b51463.md) | 136 | `result-track:631a27a566876c2f46b51463b1a7604394421f7af82c3fba34846dfadd5d0172` |
| 14 | `lemma` | [spectrum_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.lean/declarations/spectrum-diagonal--921fbcf9a83a98257472bc07.md) | 142 | `result-track:921fbcf9a83a98257472bc077dfb867180ed2f102114f82628fa2f99349894e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
