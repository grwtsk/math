# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3dba275e5963db46026bc40992e78b5a081e4b",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3dba275e5963db46026bc40992e78b5a081e4b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Bivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/macro--0dc821ad4767a49ecef1abff.md) | 51 | `declaration-track:0dc821ad4767a49ecef1abff9082a16f14ddbacfd253ebf318248c1862c2f46e` |
| 2 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/macro--2a943ed49cc4fa12ea1c2335.md) | 54 | `declaration-track:2a943ed49cc4fa12ea1c2335d9198edae4e74b62c774ceeb32a937e9ee759beb` |
| 3 | `abbrev` | [Affine](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/affine--4149e2af4c6e13723bb0909e.md) | 70 | `declaration-track:4149e2af4c6e13723bb0909edf2fd865d82517e297c656b968fe82dafae3ae90` |
| 4 | `abbrev` | [toAffine](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/toaffine--100b957ad5a6f711d6c2956f.md) | 74 | `declaration-track:100b957ad5a6f711d6c2956f1c2477e8108af709b80e0248d56fe4dd980ac009` |
| 5 | `def` | [polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/polynomial--1d1984ea4d5321dd279f8e61.md) | 91 | `declaration-track:1d1984ea4d5321dd279f8e6109edc1e284543aa87007cb1b5a58a2d141ecf4bb` |
| 6 | `lemma` | [polynomial_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/polynomial-eq--9f2e17f49855d640792739cd.md) | 94 | `result-track:9f2e17f49855d640792739cd521cf8b69523b701fb610165b675d4ca9e8fbd76` |
| 7 | `lemma` | [polynomial_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/polynomial-ne-zero--197bc7b870e2d364bc3ce402.md) | 101 | `result-track:197bc7b870e2d364bc3ce4021338dea8415f88793b7a083dd19dfbc48dd4eafe` |
| 8 | `lemma` | [degree_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/degree-polynomial--60af764b955a0160bef5c203.md) | 106 | `result-track:60af764b955a0160bef5c20314c34c272661f685897a209cb4c31cf060430ea9` |
| 9 | `lemma` | [natDegree_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/natdegree-polynomial--79a3e02d8587ad98851c326c.md) | 111 | `result-track:79a3e02d8587ad98851c326cba326074a0593cbdf84d41cc3f79dd5281d01b62` |
| 10 | `lemma` | [monic_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/monic-polynomial--94646fb8e3ec39f838a1807e.md) | 115 | `result-track:94646fb8e3ec39f838a1807ebeba0ede69a2c4e117376d4856c0e38578d290de` |
| 11 | `lemma` | [irreducible_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/irreducible-polynomial--ffb39f5edf734e437bc2436d.md) | 119 | `result-track:ffb39f5edf734e437bc2436d19d79dbb6552d9febd2aac8f0550c881fc93e04d` |
| 12 | `lemma` | [evalEval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/evaleval-polynomial--1bdd57972d895d62163ef9c9.md) | 131 | `result-track:1bdd57972d895d62163ef9c966de01d307ba6ac34a58f83b19e54cd802fcfe0f` |
| 13 | `lemma` | [evalEval_polynomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/evaleval-polynomial-zero--86d805be24521accaa34130b.md) | 138 | `result-track:86d805be24521accaa34130b98fa31d19c9eb7d37c628b38f86028b117a3149b` |
| 14 | `def` | [Equation](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation--0f5b94a36e9a9e4c553e8984.md) | 145 | `declaration-track:0f5b94a36e9a9e4c553e898459c798e97153f26282417634b759f1ed86eb69b4` |
| 15 | `lemma` | [equation_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-iff--6a4fc1741cbeb68ca84e41c4.md) | 148 | `result-track:6a4fc1741cbeb68ca84e41c4a45b7e61f5b9aa732d9bf52d07d650ea62e0d1e2` |
| 16 | `lemma` | [equation_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-iff--204944ee6dd4126a0299bbe6.md) | 152 | `result-track:204944ee6dd4126a0299bbe645e0a2e5b6793a9a381ae86ffe6b5b52f281fbee` |
| 17 | `lemma` | [equation_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-zero--35401efa2191df2c4e31e30a.md) | 157 | `result-track:35401efa2191df2c4e31e30a4fb0055941b9fecffb027f6bd67aa519c6057fc1` |
| 18 | `lemma` | [equation_iff_variableChange](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-iff-variablechange--0a28e2e0a022a7303617d4f8.md) | 160 | `result-track:0a28e2e0a022a7303617d4f8e449de9c3d16797a79998d6b8ac997322657becd` |
| 19 | `def` | [polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/polynomialx--d9ac72289deeffdcf30aafa2.md) | 172 | `declaration-track:d9ac72289deeffdcf30aafa28de1ce7a3fd9f218e4b779ae321145fdf34852af` |
| 20 | `lemma` | [evalEval_polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/evaleval-polynomialx--6364725e0bef0370fa3fb99b.md) | 175 | `result-track:6364725e0bef0370fa3fb99b624faa3d726897ed6421790a0dd8ed4b995d4c10` |
| 21 | `lemma` | [evalEval_polynomialX_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/evaleval-polynomialx-zero--d2599ef5644636c66694c9fc.md) | 181 | `result-track:d2599ef5644636c66694c9fc41b17ddaf3757c65d2df942099c25bf9ff28763a` |
| 22 | `def` | [polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/polynomialy--d04b2007b91b416f2cc90629.md) | 188 | `declaration-track:d04b2007b91b416f2cc906295b6e4cf5846cb19dccf94ec058100417f807140a` |
| 23 | `lemma` | [evalEval_polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/evaleval-polynomialy--8ec37e8d6c658f38555c5a8b.md) | 191 | `result-track:8ec37e8d6c658f38555c5a8b8c5180a09d88caa7f539d3502f83d7f18ca63e54` |
| 24 | `lemma` | [evalEval_polynomialY_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/evaleval-polynomialy-zero--9ab53f2d452342b61d2b50a9.md) | 197 | `result-track:9ab53f2d452342b61d2b50a93465c46e28515c081ddb21bf25784f7cd68a07d8` |
| 25 | `def` | [Nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/nonsingular--a921da7cdbb7acf3d9232860.md) | 207 | `declaration-track:a921da7cdbb7acf3d9232860701bc3282a23465dcc13162db036185ece040a3f` |
| 26 | `lemma` | [nonsingular_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/nonsingular-iff--3412090d5c5a9ecd0d740cc3.md) | 210 | `result-track:3412090d5c5a9ecd0d740cc3a30e6ed326c91e3ea9501b9c2dd3be78af3f6c1b` |
| 27 | `lemma` | [nonsingular_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/nonsingular-iff--db426629f74f66ce30aac12e.md) | 214 | `result-track:db426629f74f66ce30aac12e4b7078d3d2273cb6e48633715c618f41a7cbc37b` |
| 28 | `lemma` | [nonsingular_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/nonsingular-zero--1bc150f38c9cd87f6f3a9bec.md) | 221 | `result-track:1bc150f38c9cd87f6f3a9becb1524cdeae075958e314101a94bdf4f0b2c34a03` |
| 29 | `lemma` | [nonsingular_iff_variableChange](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/nonsingular-iff-variablechange--04eb3e6dbe73c2425bda8737.md) | 225 | `result-track:04eb3e6dbe73c2425bda8737739c61bcd314496eb6a237fb3a4da35393e02468` |
| 30 | `lemma` | [equation_zero_iff_nonsingular_zero_of_Δ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-zero-iff-nonsingular-zero-of-ne-zero--ef189564e9ffafe9ecd15eea.md) | 232 | `result-track:ef189564e9ffafe9ecd15eea2d5f88513e5c29f1b35dead9105f045700f0892c` |
| 31 | `lemma` | [equation_iff_nonsingular_of_Δ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-iff-nonsingular-of-ne-zero--f7dc0cf7e80535fbd6024b9c.md) | 239 | `result-track:f7dc0cf7e80535fbd6024b9c243cf4ec72fda60e8c37fbb5480e171bdbca04b2` |
| 32 | `lemma` | [equation_iff_nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-iff-nonsingular--d2ce3ab49d699b5f0ba46c05.md) | 245 | `result-track:d2ce3ab49d699b5f0ba46c0526f10c2710bdeb4e9860fb39f41145afe45c7987` |
| 33 | `lemma` | [map_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/map-polynomial--a956fb355f24aa72cb3e7e46.md) | 259 | `result-track:a956fb355f24aa72cb3e7e46c2ab64db1e4bb7836598290166ff905f2a223aee` |
| 34 | `lemma` | [Equation.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-map--6e981ecfe612532ac55ef694.md) | 264 | `result-track:6e981ecfe612532ac55ef69484df391b76d5d3c7f2d396e24836ac4cd6c066e8` |
| 35 | `lemma` | [map_equation](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/map-equation--4763371d66daa0a71451d9e0.md) | 268 | `result-track:4763371d66daa0a71451d9e08c0dee1fda63a36c4d0f7b97b1b33e8ae9d9b1f1` |
| 36 | `lemma` | [map_polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/map-polynomialx--0bb20e7fd1dd53d13a39e075.md) | 272 | `result-track:0bb20e7fd1dd53d13a39e07538e0d5dedb6422a70cea718637dfe0e2b494e26c` |
| 37 | `lemma` | [map_polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/map-polynomialy--97ead94745a878e58d85eeea.md) | 276 | `result-track:97ead94745a878e58d85eeea65781e0e4ec81529859d3faef0681d299437fa48` |
| 38 | `lemma` | [map_nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/map-nonsingular--78cfb59e5bfa7b3711f814ef.md) | 281 | `result-track:78cfb59e5bfa7b3711f814ef89096ca45180275055d2c520242ab391c5a3c740` |
| 39 | `lemma` | [baseChange_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/basechange-polynomial--1ac9b43b3edcef1c08cd7740.md) | 289 | `result-track:1ac9b43b3edcef1c08cd7740e71e4d0d4ec390206107fe139c2a7ab171a5ffc0` |
| 40 | `lemma` | [Equation.baseChange](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/equation-basechange--427bac6a26cf29521f09c99a.md) | 294 | `result-track:427bac6a26cf29521f09c99a4a0cc80a8252153c82f8d12a188499f98845f8e4` |
| 41 | `lemma` | [baseChange_equation](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/basechange-equation--3e161e95d09edbe03a0a6773.md) | 300 | `result-track:3e161e95d09edbe03a0a67732287f230f01e4ce4dbb12b7f3c53f9ffc48ce810` |
| 42 | `lemma` | [baseChange_polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/basechange-polynomialx--7f1b5ff84b7544178c526a06.md) | 304 | `result-track:7f1b5ff84b7544178c526a06d5f55ef5f573b7665744bcffa9a6fdc2ebb0a226` |
| 43 | `lemma` | [baseChange_polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/basechange-polynomialy--9c9cef6496746d245fdbbaaa.md) | 308 | `result-track:9c9cef6496746d245fdbbaaa8a9873e98ca35c6fc9f45302a9fe8adcdeff7ee7` |
| 44 | `lemma` | [baseChange_nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6db8c3f44f48d7152f05f9a3f3abf001f6287ae249ad6f439eb5fba0b9f4602e.lean/declarations/basechange-nonsingular--bc16c5cd90c3de1ad772c923.md) | 313 | `result-track:bc16c5cd90c3de1ad772c9239626b3de54a708749819e5044369269b88b7ae85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
