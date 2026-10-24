# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e9179a68226e820da50427672ee93030af8ff5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e9179a68226e820da50427672ee93030af8ff5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeftLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulleftlinearmap--65a29095853ddcc120bb9a32.md) | 31 | `declaration-track:65a29095853ddcc120bb9a32b07b4569c58147d074592fed63312eb7ad8f8b74` |
| 2 | `theorem` | [mulLeftLinearMap_eq_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulleftlinearmap-eq-mulleft--084161731510c9fe525e739d.md) | 38 | `result-track:084161731510c9fe525e739d7d581850bb123708bc7c137f941725dca1d70ec2` |
| 3 | `theorem` | [mulLeftLinearMap_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulleftlinearmap-zero-eq-zero--b42625b68121538884d5af30.md) | 43 | `result-track:b42625b68121538884d5af301de6a0809b8e831d504b39638b0a4ee65f63c939` |
| 4 | `def` | [mulRightLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulrightlinearmap--922c6a1a6c3df4001c29897a.md) | 53 | `declaration-track:922c6a1a6c3df4001c29897ae478f0f1c7d89339c25acb665221613905c82b41` |
| 5 | `theorem` | [mulRightLinearMap_eq_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulrightlinearmap-eq-mulright--61d0f845650392771c7e1dcc.md) | 60 | `result-track:61d0f845650392771c7e1dcc8e079cd97906ad765f917ffc18b0ff0b4e031b7c` |
| 6 | `theorem` | [mulRightLinearMap_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulrightlinearmap-zero-eq-zero--0b0f5a074b8a9294ed3ab161.md) | 65 | `result-track:0b0f5a074b8a9294ed3ab1615b6a0d70e9089e1ff442b00369b64d5dfe3fede5` |
| 7 | `def` | [mulLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mullinearmap--5b5f487121a182f6c1a3384c.md) | 77 | `declaration-track:5b5f487121a182f6c1a3384c7e6ad4beddc97d292722475661b5ab6cdfad4adf` |
| 8 | `theorem` | [mulLinearMap_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mullinearmap-eq-mul--7a55d982444ee86635e4c550.md) | 83 | `result-track:7a55d982444ee86635e4c55018348d06f2d4ed71475ff1f4c027b24da1b49380` |
| 9 | `theorem` | [mulLeftLinearMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulleftlinearmap-mul--7faaea1dbdf949511216c014.md) | 95 | `result-track:7faaea1dbdf949511216c01493d04d6f92361659a21592da31f82236fa2e4015` |
| 10 | `theorem` | [mulRightLinearMap_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulrightlinearmap-mul--7e53f3115b46b915450a85ec.md) | 102 | `result-track:7e53f3115b46b915450a85ec2f02dfbbcd25cb422b0a4d9621823d415a71e146` |
| 11 | `theorem` | [commute_mulLeftLinearMap_mulRightLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/commute-mulleftlinearmap-mulrightlinearmap--59a5c85247b3e1a9b9da0cca.md) | 113 | `result-track:59a5c85247b3e1a9b9da0ccadd25621441d49f23595a8ca3aa168167b5140c1c` |
| 12 | `theorem` | [mulLeftLinearMap_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulleftlinearmap-one--a09bb205166de60adfd29716.md) | 131 | `result-track:a09bb205166de60adfd2971626c5aa43aef34e65d9e88f9bb915c74b9c3bab91` |
| 13 | `theorem` | [mulLeftLinearMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulleftlinearmap-eq-zero-iff--b2db3b11aa62d36ce4fd69f9.md) | 137 | `result-track:b2db3b11aa62d36ce4fd69f92edeea4c7d9bd04e6f232da9c77d00dbfbfc7940` |
| 14 | `theorem` | [pow_mulLeftLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/pow-mulleftlinearmap--d37e28008ce20bb83b8fbbb1.md) | 150 | `result-track:d37e28008ce20bb83b8fbbb1fbd4f3edc381f9d34fbc326ebd593deccffe41da` |
| 15 | `theorem` | [mulRightLinearMap_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulrightlinearmap-one--f927d19ae7eaf1c38d2b53df.md) | 164 | `result-track:f927d19ae7eaf1c38d2b53df277aed5f78fad4ee2d6c55a2a70bb889b7f35d52` |
| 16 | `theorem` | [mulRightLinearMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/mulrightlinearmap-eq-zero-iff--7bfb0318749538412c580532.md) | 170 | `result-track:7bfb0318749538412c58053236d98bdc8da0215db3dbdce65c8fddcc4df288d8` |
| 17 | `theorem` | [pow_mulRightLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant4061a49e42e0f82a52c16ae132a8f4d601678cdd5beb23860a97d4672175feb6.lean/declarations/pow-mulrightlinearmap--ae9d0f541d3433a9c2552b2a.md) | 183 | `result-track:ae9d0f541d3433a9c2552b2a1d07475aa595541d3173b0a44206c5b17508797c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
