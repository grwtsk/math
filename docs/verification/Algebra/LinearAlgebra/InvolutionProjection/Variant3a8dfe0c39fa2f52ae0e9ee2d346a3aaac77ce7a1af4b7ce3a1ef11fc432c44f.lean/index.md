# Verification target: GRWTSK.Algebra.LinearAlgebra.InvolutionProjection.Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0244f2b58a282aee4829ea787f4312ae1a18399d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0244f2b58a282aee4829ea787f4312ae1a18399d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GlobalProjection` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisField` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryInvolutionProjection](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/binaryinvolutionprojection--2e552ecc79309c2b7b8819e9.md) | 26 | `declaration-track:2e552ecc79309c2b7b8819e955715c085ba021602ba2fad74eb854a3271ebb65` |
| 2 | `def` | [ofCertified](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/ofcertified--687f558e260e34d140e5be38.md) | 44 | `declaration-track:687f558e260e34d140e5be383d9bbbfa8935dfc7476525a580ed7ccf71ab740d` |
| 3 | `theorem` | [actionMatrix_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/actionmatrix-eq-iff--92a8f1705a417014c12fa92f.md) | 57 | `result-track:92a8f1705a417014c12fa92f8c238bbad0ea12248f8f191bfb43c7dd832c67c0` |
| 4 | `theorem` | [existsUnique_true_in_column](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/existsunique-true-in-column--46bf972c400f626c697bcb5a.md) | 63 | `result-track:46bf972c400f626c697bcb5ac1eeeadfc71aae6e695189d1600af3331aa96748` |
| 5 | `theorem` | [existsUnique_true_in_row](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/existsunique-true-in-row--8360fbc1848937cbe50962d2.md) | 71 | `result-track:8360fbc1848937cbe50962d24cce97ead50cfe4f88f574e062cf2bf8be33e785` |
| 6 | `theorem` | [actionMatrix_column](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/actionmatrix-column--55bd89810c2cbc7c47defc81.md) | 88 | `result-track:55bd89810c2cbc7c47defc8106ce218d14d0127b583b19053ca6d3d62b271382` |
| 7 | `theorem` | [f2Matrix_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2matrix-eq-ite--87de32aae38441ac699e2200.md) | 95 | `result-track:87de32aae38441ac699e2200386dd565d85b4a688ae2e08866dad977cae0f310` |
| 8 | `def` | [stateVector](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/statevector--34d4a2edd8736297aaf5ff16.md) | 109 | `declaration-track:34d4a2edd8736297aaf5ff16af8b32b75b0e824359266aac1483989afff99776` |
| 9 | `theorem` | [stateVector_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/statevector-apply--84fd407cf9b451bb83167f17.md) | 113 | `result-track:84fd407cf9b451bb83167f172386375b0da9e57695e73662d49e9d4ced7fdb9a` |
| 10 | `theorem` | [mulVec_stateVector](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/mulvec-statevector--4ae4202e7f234afa3870142f.md) | 118 | `result-track:4ae4202e7f234afa3870142fd8f0da1c83798a2eddbdbc65751459a611630a48` |
| 11 | `theorem` | [f2Matrix_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2matrix-mul-self--afc7c6c512f559d00655c24c.md) | 133 | `result-track:afc7c6c512f559d00655c24cb42c078609af5e98a89035d764769b3740ad73d1` |
| 12 | `def` | [f2LinearMap](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2linearmap--b8e99be14f8da284deb7c2f5.md) | 147 | `declaration-track:b8e99be14f8da284deb7c2f581c26d7aae00c60541ea8fa295b4f25fc8885393` |
| 13 | `theorem` | [f2LinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2linearmap-apply--359b88e6b69f01be19662093.md) | 152 | `result-track:359b88e6b69f01be19662093224cb312a1cd7ce6c082b22e0602f8e6f2fda5fc` |
| 14 | `theorem` | [f2LinearMap_involutive](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2linearmap-involutive--df35e5d199e6bf4574f6dcb6.md) | 157 | `result-track:df35e5d199e6bf4574f6dcb640e428ca05262adda6d24a76caf2f8681f1d5e27` |
| 15 | `def` | [f2LinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2linearequiv--176d5c0b95ee32e396781892.md) | 164 | `declaration-track:176d5c0b95ee32e39678189283797d2bc58d89da2ec89a8bf0e32d83d92c1dd2` |
| 16 | `theorem` | [f2LinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2linearmap-injective--ffcef9ea54695073ac1695f0.md) | 173 | `result-track:ffcef9ea54695073ac1695f02806c82454e1dc7889b234238491f205f607b67d` |
| 17 | `theorem` | [f2LinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean/declarations/f2linearmap-ker--63360e5297250e8dcae43548.md) | 181 | `result-track:63360e5297250e8dcae43548a988eda4bdaf7ac472ca3c2ccab615a1421a5113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
