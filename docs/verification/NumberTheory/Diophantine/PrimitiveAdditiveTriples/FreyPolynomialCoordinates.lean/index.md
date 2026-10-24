# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyPolynomialCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "598e964d26c199ca6cede0b9fa5baef49e265913",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `598e964d26c199ca6cede0b9fa5baef49e265913`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedSections`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.QuadraticAlgebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polynomialValue](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/polynomialvalue--957fd061aaa86e81b0a15cff.md) | 30 | `declaration-track:957fd061aaa86e81b0a15cffb4c16b7459778f1ffe11346c4240f4a1c27d6145` |
| 2 | `theorem` | [polynomialValue_C](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/polynomialvalue-c--e90d08ac6791b10102244700.md) | 32 | `result-track:e90d08ac6791b10102244700d5be5654729292e609132061fddfc481cb87fc4b` |
| 3 | `theorem` | [polynomialValue_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/polynomialvalue-x--fa98ac8ca1403b38e120f8c9.md) | 36 | `result-track:fa98ac8ca1403b38e120f8c9d8fc5b99961f48c180be78337cc8f17aaa9497ac` |
| 4 | `def` | [pairValue](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/pairvalue--020ab163582803d64fce89bc.md) | 41 | `declaration-track:020ab163582803d64fce89bc60e7e432e30b1bc8a0c69cdd3f1ef1b5f5927fb5` |
| 5 | `abbrev` | [RationalFunctions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/rationalfunctions--60351f97f47addf73639b10e.md) | 44 | `declaration-track:60351f97f47addf73639b10e007767e5e45ec230baf8d64b6c095b7902bc0b52` |
| 6 | `def` | [fractionMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/fractionmap--55adf9fe2396940375eee027.md) | 46 | `declaration-track:55adf9fe2396940375eee027fec0ee963c42a21cbe4fe5b2a208533319d4245a` |
| 7 | `theorem` | [fractionMap_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/fractionmap-injective--7e37049e05059e2ca00ca574.md) | 48 | `result-track:7e37049e05059e2ca00ca5745f28e68c97e29d5dc7d19c9c4a13af6b0577603c` |
| 8 | `def` | [coefficientFraction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/coefficientfraction--19ba688022a033e1c5b72bb5.md) | 51 | `declaration-track:19ba688022a033e1c5b72bb5056b5eb988a395f6878b6f68f84c03077069bc87` |
| 9 | `def` | [radicand](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/radicand--8209d05b853a7d142495cadb.md) | 53 | `declaration-track:8209d05b853a7d142495cadbaf921b47ae221a1d6440f0e5b26ea79c54f4d494` |
| 10 | `abbrev` | [SeparatingAlgebra](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separatingalgebra--d63d173b2bfb06ad9c94d50e.md) | 59 | `declaration-track:d63d173b2bfb06ad9c94d50ee0f2a623feaf85a36bdcb91d81f73a5c72a4092f` |
| 11 | `def` | [separatingScalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separatingscalar--4810d92c669a708f254a3433.md) | 61 | `declaration-track:4810d92c669a708f254a3433f32623dfe457785d9894a10d5bcce11e99c33dd9` |
| 12 | `def` | [separatingX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separatingx--2bd40840db3d5a0a567af91f.md) | 64 | `declaration-track:2bd40840db3d5a0a567af91f32028d699f57dbf1189b9e1e096627f2424cb561` |
| 13 | `def` | [separatingY](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separatingy--67c854d31a3f99cf9d87a77e.md) | 67 | `declaration-track:67c854d31a3f99cf9d87a77e33def20fd04756e661251bdc0e9353760b092546` |
| 14 | `def` | [separatingInverseX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separatinginversex--85cb979b7dfc4cb37664f408.md) | 69 | `declaration-track:85cb979b7dfc4cb37664f4080ad12ae2df7d294b91300f5e78efc8e6556abe8c` |
| 15 | `theorem` | [separatingX_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separatingx-inverse--792998e6b33dccd8292deead.md) | 73 | `result-track:792998e6b33dccd8292deead4f8ad15fbdee37dfee62c9483a8716b6c74563ba` |
| 16 | `theorem` | [separating_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separating-equation--af8b2bb1d336ef23926e69ea.md) | 84 | `result-track:af8b2bb1d336ef23926e69eab9603db918a02a5849a73a2df02c53176e93ebf7` |
| 17 | `def` | [separate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate--6a5a58995038d0ea17546300.md) | 97 | `declaration-track:6a5a58995038d0ea17546300e37c13ca9ebb8ba6d0c33be80af3cc0cdca496d0` |
| 18 | `theorem` | [separate_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate-scalar--6211c6aa817c1dd765986f8a.md) | 101 | `result-track:6211c6aa817c1dd765986f8ae6cf47648caadaae6fc3bb8f232a78123891c178` |
| 19 | `theorem` | [separate_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate-x--84d56bc852cc6b2433ad393a.md) | 105 | `result-track:84d56bc852cc6b2433ad393ae9ddce64b53bac0f66077b5d5054ef5480649e1a` |
| 20 | `theorem` | [separate_Y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate-y--6085c52a081eb482f82a2f4e.md) | 109 | `result-track:6085c52a081eb482f82a2f4ebfa1d55376d56c582d9b4cf273299a976226acab` |
| 21 | `theorem` | [separate_polynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate-polynomial--7d5916a7b75cbc453b6586e2.md) | 114 | `result-track:7d5916a7b75cbc453b6586e2c85d49da69ef2c52c1838796a920f2e3a1e0b921` |
| 22 | `theorem` | [separate_pair_re](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate-pair-re--f05f5dad7ead098cc9cf1a5b.md) | 128 | `result-track:f05f5dad7ead098cc9cf1a5b17030c77fa68951e65296018d6f2fd02dec51779` |
| 23 | `theorem` | [separate_pair_im](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/separate-pair-im--128e91469308df8cf8dbf5c9.md) | 133 | `result-track:128e91469308df8cf8dbf5c911da4e40d964f63cd934e59f1c4f1bc834f59d86` |
| 24 | `theorem` | [pairValue_eq_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/pairvalue-eq-iff--72b4180a6ab426c87511703d.md) | 138 | `result-track:72b4180a6ab426c87511703d2f36eb7092d9109c1a3268dfd3e28750e2626f64` |
| 25 | `theorem` | [pairValue_eq_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyPolynomialCoordinates.lean/declarations/pairvalue-eq-zero-iff--a8175271b88ec286ad4c431c.md) | 152 | `result-track:a8175271b88ec286ad4c431cce88234f45391e27e605e7a5bf8e8ccb43ee4e1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
