# Verification target: GRWTSK.Algebra.UniversalAlgebra.ToDirectSum.Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87686f1fddf62e8d29d09c3fe3f2593b6a20524d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87686f1fddf62e8d29d09c3fe3f2593b6a20524d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidAlgebra.toDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebra-todirectsum--ad22c20a557fab5935611d27.md) | 76 | `declaration-track:ad22c20a557fab5935611d27af98fee50f572944b01952c41c62cd7b95c18e7d` |
| 2 | `theorem` | [AddMonoidAlgebra.toDirectSum_single](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebra-todirectsum-single--980e37a80103c442e01da6d5.md) | 84 | `result-track:980e37a80103c442e01da6d57cb213179e1e24474dc2d48c7193d773a728a108` |
| 3 | `def` | [DirectSum.toAddMonoidAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/directsum-toaddmonoidalgebra--2b30a53f2cc238f4fb1ca7de.md) | 91 | `declaration-track:2b30a53f2cc238f4fb1ca7de3690c3721c2fec5883e04eedfa66738b931eab40` |
| 4 | `theorem` | [DirectSum.toAddMonoidAlgebra_of](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/directsum-toaddmonoidalgebra-of--319f3b27c598a3b43fba5ff2.md) | 95 | `result-track:319f3b27c598a3b43fba5ff2acecf14542d1e9f4a903259b9d40cbc2c49cfdd5` |
| 5 | `theorem` | [AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebra-todirectsum-toaddmonoidalgebra--479965fe116dc0d9ce9f20d0.md) | 100 | `result-track:479965fe116dc0d9ce9f20d0b419bae0986a753153987f419392ff32690715fd` |
| 6 | `theorem` | [DirectSum.toAddMonoidAlgebra_toDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/directsum-toaddmonoidalgebra-todirectsum--cbbb11ecf1f69cecf4bba607.md) | 105 | `result-track:cbbb11ecf1f69cecf4bba60770d1d84ea93bfde6fdbb144ef66c9aaa26a97d16` |
| 7 | `theorem` | [toDirectSum_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-zero--4484fa459c4c5334d36b0098.md) | 121 | `result-track:4484fa459c4c5334d36b0098707ab4bc4156214782fb2e3a3b1e59070516f58f` |
| 8 | `theorem` | [toDirectSum_add](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-add--0917ba4cb258d4483e6cf3dd.md) | 125 | `result-track:0917ba4cb258d4483e6cf3dd7646b9e6d0e1508e8a2606c929d4cbdf31114adb` |
| 9 | `theorem` | [toDirectSum_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-natcast--4436c8bbb2bdf7cf882eda05.md) | 130 | `result-track:4436c8bbb2bdf7cf882eda054a8e2cae4a131a032d3b3f3ac5c92ff2e0039b64` |
| 10 | `theorem` | [toDirectSum_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-ofnat--0a9ad0f6db6f67589ac6f4c0.md) | 135 | `result-track:0a9ad0f6db6f67589ac6f4c0f13d3ee55110be52ef9c9580ed6170c68a8cb822` |
| 11 | `theorem` | [toDirectSum_sub](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-sub--8478047b5f698d80e106d554.md) | 140 | `result-track:8478047b5f698d80e106d554776e4b08f5e3cc2f1d11f1ff1b0368e13bb327ba` |
| 12 | `theorem` | [toDirectSum_neg](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-neg--866b46ce7c9a0190e39fb62d.md) | 145 | `result-track:866b46ce7c9a0190e39fb62dd1952cd66d26779d11ad12a949499e6d7cd31d19` |
| 13 | `theorem` | [toDirectSum_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-intcast--fd789f90f6d3ef3400238fcb.md) | 150 | `result-track:fd789f90f6d3ef3400238fcbb670909bb32ae5f0c361ff557c081eae923cef57` |
| 14 | `theorem` | [toDirectSum_one](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-one--daf103dc337e3e3fcafeedf7.md) | 155 | `result-track:daf103dc337e3e3fcafeedf7a5d46aa7e65159a2c086cd1cad65434410a87467` |
| 15 | `theorem` | [toDirectSum_mul](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/todirectsum-mul--1f4666788bca836fc62e8cba.md) | 160 | `result-track:1f4666788bca836fc62e8cba0aac392446cde406356b5e587ca30d37e6be58a7` |
| 16 | `theorem` | [toAddMonoidAlgebra_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-zero--9a85171b15c76f6c19ef09f7.md) | 179 | `result-track:9a85171b15c76f6c19ef09f7d815c418e2ee122359ccabf022536ccd4294f02e` |
| 17 | `theorem` | [toAddMonoidAlgebra_add](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-add--c35f2f0649cfab749ef0311a.md) | 184 | `result-track:c35f2f0649cfab749ef0311a6ab611376c995c792841762941d5c3a930cc1cc1` |
| 18 | `theorem` | [toAddMonoidAlgebra_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-natcast--053c60e95e935b608a9e3b86.md) | 189 | `result-track:053c60e95e935b608a9e3b8621b52ee7be4912aa2db6cb887408dc4142e7770b` |
| 19 | `theorem` | [toAddMonoidAlgebra_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-ofnat--a8c417ad9e8d2c6d805b9c7a.md) | 194 | `result-track:a8c417ad9e8d2c6d805b9c7ad88e2beb36f40d9f8e1d25267233a6d7e23b0fc2` |
| 20 | `theorem` | [toAddMonoidAlgebra_sub](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-sub--759f7f6f4119f965d14af607.md) | 200 | `result-track:759f7f6f4119f965d14af607cadccca21e18447e4ef891fe28e6273c72ecdf95` |
| 21 | `theorem` | [toAddMonoidAlgebra_neg](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-neg--8fe919fd46c7159c8a24738e.md) | 205 | `result-track:8fe919fd46c7159c8a24738ec1094877ce97aa3f0578f9445216f00439442eb5` |
| 22 | `theorem` | [toAddMonoidAlgebra_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-intcast--932915f73cb59553baaf138b.md) | 210 | `result-track:932915f73cb59553baaf138b1c462f3f7ba16a59db17fd47639dbdefc89b8cd9` |
| 23 | `theorem` | [toAddMonoidAlgebra_one](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-one--6d36fb144463b8cf7b4d61d7.md) | 215 | `result-track:6d36fb144463b8cf7b4d61d752193b1fc597a2b206af92b565b2e192729d9904` |
| 24 | `theorem` | [toAddMonoidAlgebra_mul](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/toaddmonoidalgebra-mul--5e351ac0222cecdb6302dad7.md) | 220 | `result-track:5e351ac0222cecdb6302dad7c341a02c49e31d278a05035a4461c90cf4e598d0` |
| 25 | `def` | [addMonoidAlgebraEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebraequivdirectsum--90d0bdec125367a56443fc18.md) | 240 | `declaration-track:90d0bdec125367a56443fc187da6cff8f55b631e137fd2e7afc3831e77f5c520` |
| 26 | `def` | [addMonoidAlgebraAddEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebraaddequivdirectsum--b9e0caca0733189083cd0af7.md) | 248 | `declaration-track:b9e0caca0733189083cd0af725dbe3bfb30ab0420d42f262ccd103834a1c21b1` |
| 27 | `def` | [addMonoidAlgebraRingEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebraringequivdirectsum--4baec38765a6a2b95ec90d13.md) | 257 | `declaration-track:4baec38765a6a2b95ec90d130df56246fc6cecb18c8ebcd6737c1cd2ebfb96f8` |
| 28 | `def` | [addMonoidAlgebraAlgEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebraalgequivdirectsum--aa3672424bf1ef2d25e4fe2d.md) | 266 | `declaration-track:aa3672424bf1ef2d25e4fe2dda2bd96948c972625496ebfac711d5750da1565c` |
| 29 | `theorem` | [AddMonoidAlgebra.toDirectSum_pow](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/addmonoidalgebra-todirectsum-pow--548c37b81e244defff24c0b3.md) | 274 | `result-track:548c37b81e244defff24c0b370810a638db2c2ed5e8dd3e907b1ac4298ef549a` |
| 30 | `theorem` | [DirectSum.toAddMonoidAlgebra_pow](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4dbfa9f1b20d235b4929b40c4be01b0dc7f976a1cde7bd9f79ade9ea2880ddfb.lean/declarations/directsum-toaddmonoidalgebra-pow--2a3a19482434b56de5155346.md) | 280 | `result-track:2a3a19482434b56de51553464eb8f7b6a3b378611d07021fe7f5872635eae319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
