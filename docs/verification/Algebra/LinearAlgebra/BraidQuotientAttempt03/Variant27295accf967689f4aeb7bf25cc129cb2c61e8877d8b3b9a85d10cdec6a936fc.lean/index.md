# Verification target: GRWTSK.Algebra.LinearAlgebra.BraidQuotientAttempt03.Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64ce6f9da81e1a9b707c842322267b4c2b3a909e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64ce6f9da81e1a9b707c842322267b4c2b3a909e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/braidrelator--d217b1e374f920dc9fce2fbc.md) | 22 | `declaration-track:d217b1e374f920dc9fce2fbce55f2fb2575fde28403b504c0781f45f1b66a3b0` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/braidrelations--9d490cee05013e3fc24643bc.md) | 26 | `declaration-track:9d490cee05013e3fc24643bc9e55c3399e66a38279371984d798e249a8340e0b` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/b3--4103eb58995dfa2de65c8eee.md) | 28 | `declaration-track:4103eb58995dfa2de65c8eeedfa48ba8a86e65e8d80bf1f234ae09862b20557c` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/sigma1--fe7e9d1b9eaf7fa21d0768db.md) | 30 | `declaration-track:fe7e9d1b9eaf7fa21d0768db298148a4d863aec116a1147c01f11327d235d985` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/sigma2--2106d21486f0eb3d362406fa.md) | 32 | `declaration-track:2106d21486f0eb3d362406fa0d5ea051a9b88ec193b8783563b962495eab88e3` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/braid-relation--b50abed5e90b90823c9d2dd0.md) | 34 | `result-track:b50abed5e90b90823c9d2dd0fee7c6b2c4fafb98792caf6ce2962e3ab2c5c7dc` |
| 7 | `def` | [upperGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/uppergenerator--269a86750bc48bb449adc3ff.md) | 42 | `declaration-track:269a86750bc48bb449adc3ffe980824817b9f9428f28c6a6797da4c32156f8bd` |
| 8 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/lowergenerator--2d97247dbd1645b298b6d7a0.md) | 45 | `declaration-track:2d97247dbd1645b298b6d7a0d2e5c0fa03798ff9edee54bd1a88cdc51194260b` |
| 9 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/matrix-braid-relation--54afa63d2e43a224a5298ac1.md) | 48 | `result-track:54afa63d2e43a224a5298ac10491f0ca97aa938213172dbc6a882b56c2901d7f` |
| 10 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/generatormatrix--e136c51b7a77ffa28093d1bd.md) | 58 | `declaration-track:e136c51b7a77ffa28093d1bd8fcf435cfe856bf84e7b38d442b44600ad880e6e` |
| 11 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/matrix-relator-identity--454397c27c821070e1107b14.md) | 60 | `result-track:454397c27c821070e1107b1472a324d7599d28c0d0ca42e07816e2507a9d311e` |
| 12 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/matrixrepresentation--df179c30c7cfab9d8b91c40e.md) | 70 | `declaration-track:df179c30c7cfab9d8b91c40e22dcdd7a2ae24563efa85f3213b91d57027d4e09` |
| 13 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/matrixrepresentation-sigma1--805b19019552bcb24a105a99.md) | 73 | `result-track:805b19019552bcb24a105a99437e65fc0a1f83984527bb3f1e431a64cf0c75c9` |
| 14 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/matrixrepresentation-sigma2--a4b199fefd9f8b8352f2cb75.md) | 76 | `result-track:a4b199fefd9f8b8352f2cb7573f3d6e861378505483bfe595e4094fb8f3b70ed` |
| 15 | `def` | [generatorExponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/generatorexponent--c32cfbaeabc8948e288174e4.md) | 80 | `declaration-track:c32cfbaeabc8948e288174e48804c21f65ac2b3db3a152832ddedb6c23e53f7c` |
| 16 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/exponent-relator-identity--4ee96f18412458b69fbb7207.md) | 82 | `result-track:4ee96f18412458b69fbb720774afd75c42414d4e6f8cee696766e741b5d612e5` |
| 17 | `def` | [exponentHom](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/exponenthom--891490779d58b1d5a6705a01.md) | 90 | `declaration-track:891490779d58b1d5a6705a01682bb92330d8d9896ecd47ab254eee40152efd6e` |
| 18 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/exponenthom-sigma1--4b5c45407237e34519e44faa.md) | 93 | `result-track:4b5c45407237e34519e44faa824a422c2a107d9ba44554f4bd5b704eb96b14be` |
| 19 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/exponenthom-sigma2--9708686eac9a3921298cb76c.md) | 96 | `result-track:9708686eac9a3921298cb76c7135302483b7b4e6827938b7d2e288677a706bca` |
| 20 | `def` | [lostBraid](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/lostbraid--08c8742df13fa3ce1f55e385.md) | 100 | `declaration-track:08c8742df13fa3ce1f55e3852ed12310037e0ef6e1a197050d5a434e29451c3a` |
| 21 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/generator-product-matrix--9ba7cdc0ef5048c133d47250.md) | 102 | `result-track:9ba7cdc0ef5048c133d472509c644636bd3931a81794f01b5c5b410cdb3c3fc4` |
| 22 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/generator-product-sixth--b7d3e63cacfd694ff02b3e42.md) | 110 | `result-track:b7d3e63cacfd694ff02b3e428235419c23746535a68759eeafd8d9ab8ac01916` |
| 23 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/lostbraid-matrix-identity--49aa6c12d46d07a971b9965c.md) | 118 | `result-track:49aa6c12d46d07a971b9965c22ced47d0b32513e528a6e60081fa79a0e2f4f19` |
| 24 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/lostbraid-exponent--b4dc763259083b5c8ed22ed9.md) | 122 | `result-track:b4dc763259083b5c8ed22ed9b2cedc8c108908c8074b7804d0e09c81e3f98548` |
| 25 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/lostbraid-ne-one--77eebcbfa1ffc98522647599.md) | 125 | `result-track:77eebcbfa1ffc98522647599c311f3a18712208b9f2f29fe6795a50939152ce1` |
| 26 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/BraidQuotientAttempt03/Variant27295accf967689f4aeb7bf25cc129cb2c61e8877d8b3b9a85d10cdec6a936fc.lean/declarations/matrixrepresentation-not-injective--d2318cebd32d60047be487a8.md) | 131 | `result-track:d2318cebd32d60047be487a84201f5ce1dac540c5fdc114c0bb6fe0e593d9059` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
