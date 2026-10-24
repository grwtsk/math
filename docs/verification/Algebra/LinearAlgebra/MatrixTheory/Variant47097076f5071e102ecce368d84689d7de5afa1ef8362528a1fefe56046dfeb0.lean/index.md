# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a36667eae6f527712d75efb01a694c570ee7f03",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a36667eae6f527712d75efb01a694c570ee7f03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean.json)

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
| 1 | `lemma` | [hasEigenvector_toLin_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/haseigenvector-tolin-diagonal--81142e8a369f380b4a520f22.md) | 43 | `result-track:81142e8a369f380b4a520f22e12072df51881709d2df16da296a46d97b32d07e` |
| 2 | `lemma` | [hasEigenvector_toLin'_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/haseigenvector-tolin-diagonal--fb8a6ef85e49ee9465729225.md) | 48 | `result-track:fb8a6ef85e49ee946572922556788915238ac245b0b34f4dfcc7a6bfc679bdf8` |
| 3 | `lemma` | [hasEigenvalue_toLin_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/haseigenvalue-tolin-diagonal-iff--cc49752ee8d31f13cb95942b.md) | 55 | `result-track:cc49752ee8d31f13cb95942b3832bcee9538c1978eae0189d161cfe004597d16` |
| 4 | `lemma` | [hasEigenvalue_toLin'_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/haseigenvalue-tolin-diagonal-iff--3c0ab1d60eec5d708454dbe9.md) | 79 | `result-track:3c0ab1d60eec5d708454dbe95215892e39ca7e1ed71830bf9f269e62679f235c` |
| 5 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.HasEigenvectorToLinDiagonal.Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.Module.End.HasEigenvalue.nonempty](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/root-grwtsk-algebra-linearalgebra-haseigenvectortolindiagonal-variant442--d611b3063f451259cc23745d.md) | 89 | `result-track:d611b3063f451259cc23745d99d23e5dea5748311078ead97cbc521afd4f21e8` |
| 6 | `lemma` | [iSup_eigenspace_toLin_diagonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/isup-eigenspace-tolin-diagonal-eq-top--4afe33e91b140e3ad1135ea6.md) | 97 | `result-track:4afe33e91b140e3ad1135ea6ead3fbb54590ab6ea488a0b0b5b3e38745ef78ec` |
| 7 | `lemma` | [iSup_eigenspace_toLin'_diagonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/isup-eigenspace-tolin-diagonal-eq-top--63b5bd4fec049c5fa361317a.md) | 103 | `result-track:63b5bd4fec049c5fa361317a863c12178908498d6f2f3705ea6566260ffe1434` |
| 8 | `lemma` | [maxGenEigenspace_toLin_diagonal_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/maxgeneigenspace-tolin-diagonal-eq-eigenspace--b225204f91e8771c922ac86b.md) | 108 | `result-track:b225204f91e8771c922ac86b2040652b221e57af996cdd5d3e875416281cf44c` |
| 9 | `lemma` | [maxGenEigenspace_toLin'_diagonal_eq_eigenspace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/maxgeneigenspace-tolin-diagonal-eq-eigenspace--86b5d8db61b71e6e8a855dd9.md) | 124 | `result-track:86b5d8db61b71e6e8a855dd9ea656fd29c80dccb05a0a1c435576946b38fb189` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.HasEigenvectorToLinDiagonal.Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.LinearMap.spectrum_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/root-grwtsk-algebra-linearalgebra-haseigenvectortolindiagonal-variant442--3019b6a5ea4226f9fb3b2c39.md) | 129 | `result-track:3019b6a5ea4226f9fb3b2c3956ca1eb1ca3943e402a82af6dac0f881c2ba7f41` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.HasEigenvectorToLinDiagonal.Variant4429263ed0fb0f7baadfb57f401d91dbdfa9289aa398388d6684f252b97e65e4.LinearMap.spectrum_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/root-grwtsk-algebra-linearalgebra-haseigenvectortolindiagonal-variant442--a64b738088c0ad8ca1a939d2.md) | 134 | `result-track:a64b738088c0ad8ca1a939d26fcf6b123082ad526552a0ddfcdd55acd02804d7` |
| 12 | `theorem` | [spectrum_toLin](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/spectrum-tolin--9e91cdd57e7eb56c3455e50f.md) | 139 | `result-track:9e91cdd57e7eb56c3455e50f2297273f96c1c070ffe8635203b6519be1aaa837` |
| 13 | `theorem` | [spectrum_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/spectrum-tolin--ceed18635b547056659ec196.md) | 144 | `result-track:ceed18635b547056659ec1965e3da33b9478e2cbc0febbbdb7e54acae313a4f3` |
| 14 | `lemma` | [spectrum_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/declarations/spectrum-diagonal--7e84dedeee422e220f5351c0.md) | 150 | `result-track:7e84dedeee422e220f5351c0975ddca4cb2c4501779c868a5f82e5aa14d3bcb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
