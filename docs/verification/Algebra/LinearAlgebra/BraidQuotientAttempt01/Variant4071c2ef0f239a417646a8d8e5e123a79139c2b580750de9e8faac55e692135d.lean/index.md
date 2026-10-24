# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidQuotientAttempt01.Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ac7c9e201691c4d7c07cc8cec022faa1b8019fb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ac7c9e201691c4d7c07cc8cec022faa1b8019fb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/braidrelator--6c6ff1de16c7633d8d978b86.md) | 14 | `declaration-track:6c6ff1de16c7633d8d978b86482e449fd040e43a8d6b94589fb2d48c07c66646` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/braidrelations--4cf206f610c8176a8ebdde7e.md) | 18 | `declaration-track:4cf206f610c8176a8ebdde7ea80f9bcfbe32172234f58adef8421df49ca94205` |
| 3 | `def` | [B3](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/b3--592c2fdc28c759cdd70978a5.md) | 20 | `declaration-track:592c2fdc28c759cdd70978a5a017e2a6b8f8f23b8fe5eb403df2370c3a2f2bca` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/sigma1--5b54c923526bbc098a2c3057.md) | 22 | `declaration-track:5b54c923526bbc098a2c3057b654e3e8f9ae11ea0a51a684bcb341dcbccf0b88` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/sigma2--ac5a8e6eed6bcdbc27b18727.md) | 24 | `declaration-track:ac5a8e6eed6bcdbc27b1872780ce8e1d2745b8fa0ce8bb2855bda3f804821a66` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/braid-relation--31aeac520d9c04831858af22.md) | 26 | `result-track:31aeac520d9c04831858af22d21901430605f3ef554a1b69e23f2d747e42ae10` |
| 7 | `def` | [upperGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/uppergenerator--9e295fa6ac0f4fc167c07d02.md) | 34 | `declaration-track:9e295fa6ac0f4fc167c07d020f04bf9f4af6207cd04911aa8cf71aa2b8d59c19` |
| 8 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/lowergenerator--6fb3d0f55616e5708ff055e9.md) | 37 | `declaration-track:6fb3d0f55616e5708ff055e999f5636008b0557e61207b12d7053a5a337ea0ed` |
| 9 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/matrix-braid-relation--3dfc9de768a6afb3cd7c4db8.md) | 40 | `result-track:3dfc9de768a6afb3cd7c4db884ad4f988705b0becff10c834f9021ff20263a88` |
| 10 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/generatormatrix--4d315fdd4a8162b9531fcd56.md) | 48 | `declaration-track:4d315fdd4a8162b9531fcd56af43ac394f3132379400c7ebc9bb2a4630cadfe8` |
| 11 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/matrix-relator-identity--a5fa7ec28807801abdf47938.md) | 50 | `result-track:a5fa7ec28807801abdf47938c6d27c912d350e524c556c8fe9b016d3008a66fb` |
| 12 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/matrixrepresentation--688c1b8b1614f67bf5e6d27b.md) | 60 | `declaration-track:688c1b8b1614f67bf5e6d27b31cdfd5ae1722045383789d94cf3c91cd33dd59f` |
| 13 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/matrixrepresentation-sigma1--2c5b13a84a2f6f72b7653bfc.md) | 63 | `result-track:2c5b13a84a2f6f72b7653bfc9a0a8b9d0a52aad2c415d8b87c5d9565ec2f07c0` |
| 14 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/matrixrepresentation-sigma2--6e1f8d257b104775f002185f.md) | 66 | `result-track:6e1f8d257b104775f002185f40c37faba07c05a912787b52ab048831583c9b3c` |
| 15 | `def` | [generatorExponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/generatorexponent--4bf21a264c06cad6cf246dea.md) | 70 | `declaration-track:4bf21a264c06cad6cf246dea9bf8ce4b328737d9cad8c3298be04e13aedaef43` |
| 16 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/exponent-relator-identity--5c7472824f222770f88d3a88.md) | 72 | `result-track:5c7472824f222770f88d3a881aac69fb51a7e6cddc3755234e781dbc7d4d3627` |
| 17 | `def` | [exponentHom](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/exponenthom--608846e24d596f25a81d3900.md) | 80 | `declaration-track:608846e24d596f25a81d3900cfc7e8feaad52a9bdd5d2b94d510857ec4beebb1` |
| 18 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/exponenthom-sigma1--e94c6f2e9afcdbb59a497da1.md) | 83 | `result-track:e94c6f2e9afcdbb59a497da159376a5b0caea02202c042fd68a1c13258dab750` |
| 19 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/exponenthom-sigma2--9e05045e71f176665f131585.md) | 86 | `result-track:9e05045e71f176665f13158507808fde138e3b5b4ab3b3af885361328280244f` |
| 20 | `def` | [lostBraid](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/lostbraid--03222c63e59bafd434a937a2.md) | 90 | `declaration-track:03222c63e59bafd434a937a25bc0cb9fcec8081ae172c017b230c5d2cfc29f6e` |
| 21 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/generator-product-matrix--3a109910bc3d52452384f3c0.md) | 92 | `result-track:3a109910bc3d52452384f3c0fb4e5aef9d5ecbf8580f2448589bb814693a91ef` |
| 22 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/generator-product-sixth--90db64ba1e90bf098817fe77.md) | 99 | `result-track:90db64ba1e90bf098817fe773674d072d984e39c6ae5d660adbf76cd8c0c7c25` |
| 23 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/lostbraid-matrix-identity--03efc6fb8d86c60de630d7d5.md) | 105 | `result-track:03efc6fb8d86c60de630d7d5a9bcd9691dde72bc1353a41e349e40ed825e72ca` |
| 24 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/lostbraid-exponent--8b1c240ce2febefdae62593e.md) | 109 | `result-track:8b1c240ce2febefdae62593eaddb6368dc6310cd1f565b0fdf8601d2cbcac2b2` |
| 25 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/lostbraid-ne-one--62874014a56acfb247722e22.md) | 112 | `result-track:62874014a56acfb247722e222c8f55461ad76c20dd49901a88a28f8b098c09a5` |
| 26 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt01/Variant4071c2ef0f239a417646a8d8e5e123a79139c2b580750de9e8faac55e692135d.lean/declarations/matrixrepresentation-not-injective--e974b622c3a3886710cb1792.md) | 118 | `result-track:e974b622c3a3886710cb1792611bb9005bcbe962dc5952d9e5ed5ebbe8bcd48c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
