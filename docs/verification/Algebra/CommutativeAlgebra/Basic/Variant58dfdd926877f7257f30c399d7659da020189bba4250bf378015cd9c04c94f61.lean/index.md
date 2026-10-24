# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b51827ba8d9d0821af06c83a0a9fcabf275eb91",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b51827ba8d9d0821af06c83a0a9fcabf275eb91`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Bivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/macro--6a4d1433bba1c442e1a1c4ae.md) | 59 | `declaration-track:6a4d1433bba1c442e1a1c4aec2c26225670a023ce072d35f43131e067e3dc039` |
| 2 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/macro--d97ea7ae62ff3647001576ec.md) | 62 | `declaration-track:d97ea7ae62ff3647001576ece2a9758e78464afc454077db507276cf5e89a785` |
| 3 | `abbrev` | [Affine](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/affine--ff5837887b31c52155bc9a4b.md) | 78 | `declaration-track:ff5837887b31c52155bc9a4bb88e22cb6063a5f9c992148fd4c8f3177f10dd5c` |
| 4 | `abbrev` | [toAffine](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/toaffine--689bdc94e99c205c1a5c4162.md) | 82 | `declaration-track:689bdc94e99c205c1a5c41625f93d698a3a9a27f63c6acea4ab12da8ad7f2114` |
| 5 | `def` | [polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/polynomial--f820247763488bdf7229bc71.md) | 99 | `declaration-track:f820247763488bdf7229bc71a90331b4a647a57516d3fcddd7290c6cc9937abb` |
| 6 | `lemma` | [polynomial_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/polynomial-eq--f51586d6f57f7241397f4fd2.md) | 102 | `result-track:f51586d6f57f7241397f4fd24c4518f41e056b3a415eea7645f40590bd7da7d4` |
| 7 | `lemma` | [polynomial_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/polynomial-ne-zero--4acfb800b54f64be5ee78785.md) | 109 | `result-track:4acfb800b54f64be5ee78785d63d46a42b8a5e1e5c27f6f10e37ed2116487abf` |
| 8 | `lemma` | [degree_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/degree-polynomial--11f0c590d197f2c2e2f871f1.md) | 114 | `result-track:11f0c590d197f2c2e2f871f109d1c65709a0d42282bd697d08d4586c6fb024c1` |
| 9 | `lemma` | [natDegree_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/natdegree-polynomial--d22b4ac8443444dfb84ff4e2.md) | 119 | `result-track:d22b4ac8443444dfb84ff4e21ac3723128f0ec2f4cb5288b08251262a4013e4e` |
| 10 | `lemma` | [monic_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/monic-polynomial--5d433c50e0e6040d7ce1fbb2.md) | 123 | `result-track:5d433c50e0e6040d7ce1fbb21056f85610a10a94455cfd099625dc301e4f4bf8` |
| 11 | `lemma` | [irreducible_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/irreducible-polynomial--7a4015fc0da3f470460e10e1.md) | 127 | `result-track:7a4015fc0da3f470460e10e1146ecd8f0051cbf2beddcdb731e1a8366d184385` |
| 12 | `lemma` | [evalEval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/evaleval-polynomial--0d3d15832f423a76cc425979.md) | 139 | `result-track:0d3d15832f423a76cc425979d1cc7eacf0c21a6de8ee2449f62830a970a67fe5` |
| 13 | `lemma` | [evalEval_polynomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/evaleval-polynomial-zero--eaf5f2d15b112ca24c48a5fa.md) | 146 | `result-track:eaf5f2d15b112ca24c48a5fa6dc2419ae918244c5384b959eddb003b44b2affa` |
| 14 | `def` | [Equation](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation--4a768123dbc1e2ad92624ef0.md) | 153 | `declaration-track:4a768123dbc1e2ad92624ef0d2ad88e91c96c34d70a03c4c47a3278ccb043c86` |
| 15 | `lemma` | [equation_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-iff--8fcac06325aa482ce570031a.md) | 156 | `result-track:8fcac06325aa482ce570031a0ec6aa819810dcbb82dc66d32089ef00f2e793ed` |
| 16 | `lemma` | [equation_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-iff--82fc0285e088dc3bc2b00512.md) | 160 | `result-track:82fc0285e088dc3bc2b005125a56494a43ced913180802318a01448786a55b5e` |
| 17 | `lemma` | [equation_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-zero--6976217e7f45289d79015afc.md) | 165 | `result-track:6976217e7f45289d79015afc100451c0fff05c85367300b627ef24b39f870e33` |
| 18 | `lemma` | [equation_iff_variableChange](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-iff-variablechange--adb4927193def2b7128c35cc.md) | 168 | `result-track:adb4927193def2b7128c35ccca02c1a8fa1438bc6bc69c2bdd18a05e419743b4` |
| 19 | `def` | [polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/polynomialx--8334fa4c720fb46182fadeba.md) | 180 | `declaration-track:8334fa4c720fb46182fadeba1ebb95f509653fcf2a60347fdf552650a7214429` |
| 20 | `lemma` | [evalEval_polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/evaleval-polynomialx--be06db48e1b829ff7b232036.md) | 183 | `result-track:be06db48e1b829ff7b232036c9d9c98f4ef3cb24ccd9c20a291e0cfcd92705eb` |
| 21 | `lemma` | [evalEval_polynomialX_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/evaleval-polynomialx-zero--71c81e1a5768e080c0b2b31d.md) | 189 | `result-track:71c81e1a5768e080c0b2b31d5748de12ab323d03fcda4fe56b5679f176966c83` |
| 22 | `def` | [polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/polynomialy--9a3f3e8f0925c7be1b0f3c2a.md) | 196 | `declaration-track:9a3f3e8f0925c7be1b0f3c2a88f36f4f0d4ee0b55c354717d6981c0ce13b25c5` |
| 23 | `lemma` | [evalEval_polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/evaleval-polynomialy--938270855dbf533035b4c916.md) | 199 | `result-track:938270855dbf533035b4c91606c4225be380ec8e2d579a3f199b1a2ebccfa4b1` |
| 24 | `lemma` | [evalEval_polynomialY_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/evaleval-polynomialy-zero--e141eee53b45afdc45cf4594.md) | 205 | `result-track:e141eee53b45afdc45cf4594a21d845c906337e0e2f52cbee61f26703de36c46` |
| 25 | `def` | [Nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/nonsingular--1c66a205dc4289ccce54c90d.md) | 215 | `declaration-track:1c66a205dc4289ccce54c90d4d5f2601de9e493ac4708a6f23c14a56333b62d7` |
| 26 | `lemma` | [nonsingular_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/nonsingular-iff--e981ea40d0e7be9be5918230.md) | 218 | `result-track:e981ea40d0e7be9be5918230eb1e7fa17915607442eb410eb65f997614c584e0` |
| 27 | `lemma` | [nonsingular_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/nonsingular-iff--643383f7dce2b5fe9088cbb9.md) | 222 | `result-track:643383f7dce2b5fe9088cbb98a036cc18b392e288d1dbbd173a182aba421ad30` |
| 28 | `lemma` | [nonsingular_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/nonsingular-zero--3c55754220360b87b42a2460.md) | 229 | `result-track:3c55754220360b87b42a246031d70b47da1050ae537e79fc372a0aa4175e9679` |
| 29 | `lemma` | [nonsingular_iff_variableChange](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/nonsingular-iff-variablechange--97cfc58ca2bfc2b7c91df401.md) | 233 | `result-track:97cfc58ca2bfc2b7c91df4017bdc187aa3ce60ba92c0e4bbac58b620b0143fb2` |
| 30 | `lemma` | [equation_zero_iff_nonsingular_zero_of_Δ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-zero-iff-nonsingular-zero-of-ne-zero--79caa2922793a8e953069250.md) | 240 | `result-track:79caa2922793a8e95306925064391f7804ad19b929cf88d668d87ff1570ab49c` |
| 31 | `lemma` | [equation_iff_nonsingular_of_Δ_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-iff-nonsingular-of-ne-zero--dedf877a5fa3fe8f0cf154f0.md) | 247 | `result-track:dedf877a5fa3fe8f0cf154f01edb24799f7e2152717af3f98860fe17056ac78b` |
| 32 | `lemma` | [equation_iff_nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-iff-nonsingular--b1a0182e42a138b56b0a8462.md) | 253 | `result-track:b1a0182e42a138b56b0a84629c099961b8caa82228105ccad3e1e52d49463cb9` |
| 33 | `lemma` | [map_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/map-polynomial--301d7a300287ae5d468bb9e5.md) | 267 | `result-track:301d7a300287ae5d468bb9e59b5242f6f27b7c097df50ed692cd839dca891556` |
| 34 | `lemma` | [Equation.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-map--ebb83a3a1f710daf4db3b610.md) | 272 | `result-track:ebb83a3a1f710daf4db3b610674e2f5012394b38329c3daefcf152419faa97c3` |
| 35 | `lemma` | [map_equation](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/map-equation--b3249497f0fd30825aae9b30.md) | 276 | `result-track:b3249497f0fd30825aae9b306545bcbfae0df4b8898da843debba2e0d03ab204` |
| 36 | `lemma` | [map_polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/map-polynomialx--3f907f8739de541053541cc8.md) | 280 | `result-track:3f907f8739de541053541cc82e959ee7277eacd9d38f90a3d159ed7c727ddd27` |
| 37 | `lemma` | [map_polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/map-polynomialy--f378dfa58664762c78b5afc6.md) | 284 | `result-track:f378dfa58664762c78b5afc6fc5e074553069d9ad114b88e2b249f7e3c2e482a` |
| 38 | `lemma` | [map_nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/map-nonsingular--1755285dd48a8b41790f5e80.md) | 289 | `result-track:1755285dd48a8b41790f5e80f56acc7e0b5dcd8b66c3279a79fc2664927b21bb` |
| 39 | `lemma` | [baseChange_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/basechange-polynomial--33154dd02f08027bc6481d2c.md) | 297 | `result-track:33154dd02f08027bc6481d2cba50375dc9ae26b7a39b2bd3410628b47850e592` |
| 40 | `lemma` | [Equation.baseChange](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/equation-basechange--8529793674f4531bb59c24f3.md) | 302 | `result-track:8529793674f4531bb59c24f3be322348d75ec767e4c5d78a76f6d52cc51be561` |
| 41 | `lemma` | [baseChange_equation](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/basechange-equation--d5b9baf03f361040a033e667.md) | 308 | `result-track:d5b9baf03f361040a033e66733bbed8ed6fbbc63d994d6e8f552d541a2d211ad` |
| 42 | `lemma` | [baseChange_polynomialX](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/basechange-polynomialx--40bc930aac1828118222be59.md) | 312 | `result-track:40bc930aac1828118222be59281d89d520e5c4869a2638a1ab6c3bed81e2b247` |
| 43 | `lemma` | [baseChange_polynomialY](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/basechange-polynomialy--a5fa7de6376621cf2847e76e.md) | 316 | `result-track:a5fa7de6376621cf2847e76ec48cc8028afad28432b57be45a009670ce093815` |
| 44 | `lemma` | [baseChange_nonsingular](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant58dfdd926877f7257f30c399d7659da020189bba4250bf378015cd9c04c94f61.lean/declarations/basechange-nonsingular--1b34ec8b38a3c0efc03a4c9f.md) | 321 | `result-track:1b34ec8b38a3c0efc03a4c9f0f5dd5074d370a07b3927ce1c1a02a383b1d2814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
