# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e40d0b5216bdfe2eb087a5811ca1081c724d0edf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e40d0b5216bdfe2eb087a5811ca1081c724d0edf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NNRat.cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/nnrat-cast-nonneg--adc1f8f7d212bccabb576ee3.md) | 33 | `result-track:adc1f8f7d212bccabb576ee3d512525fe92e2cd570bafa464c3475e10abe87a1` |
| 2 | `lemma` | [nnqsmul_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/nnqsmul-nonneg--d9167497ac4eb33f02fec16c.md) | 36 | `result-track:d9167497ac4eb33f02fec16ca90c280b7bf0889fdf7efa2dc90a9ac9901898b5` |
| 3 | `instance` | [inv](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/inv--bd07d62182d93d3bd125e747.md) | 47 | `declaration-track:bd07d62182d93d3bd125e747a7ff2e5e32bb0624d94e8b75d1ddb36e42c75376` |
| 4 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/coe-inv--a81f3a23b3af4f941889147a.md) | 51 | `result-track:a81f3a23b3af4f941889147aad1cb811f2d343ee70de63bacd3e331281228a80` |
| 5 | `theorem` | [inv_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/inv-mk--3bd3c30f54841a001e78ad3b.md) | 55 | `result-track:3bd3c30f54841a001e78ad3bbea0e7c97831c1ebf445f993a4ff161ba120ac05` |
| 6 | `instance` | [div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/div--be323c6584951b8bc9b93f7a.md) | 59 | `declaration-track:be323c6584951b8bc9b93f7a5e932aaaa51cc8588b50ad2f882141774fb2089d` |
| 7 | `theorem` | [coe_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/coe-div--23d332eb46da28bb97d917c2.md) | 63 | `result-track:23d332eb46da28bb97d917c2cde5cd5bb85b1677c92ea81e6618af061cad6a40` |
| 8 | `theorem` | [mk_div_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/mk-div-mk--36adf97e8848d9caa5d51aa2.md) | 67 | `result-track:36adf97e8848d9caa5d51aa257f8c705bc263a586693df16d6120fd907c413a6` |
| 9 | `instance` | [zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/zpow--44b72f04c00f468a274da452.md) | 71 | `declaration-track:44b72f04c00f468a274da452b157366999a75156d5c1a2c0f98a7b945c4e59e9` |
| 10 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/coe-zpow--383ea76b67d0a3a31239438d.md) | 75 | `result-track:383ea76b67d0a3a31239438df1a7899ffd4ca1f354cbc2e3ab2683dfc327b27a` |
| 11 | `theorem` | [mk_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/mk-zpow--d910b3c23cec1ab88e72ed82.md) | 80 | `result-track:d910b3c23cec1ab88e72ed8202bb28a01116e02293c981c0977adf9ec7ccb017` |
| 12 | `instance` | [instNNRatCast](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/instnnratcast--3832f4d982bf0c1556099caa.md) | 84 | `declaration-track:3832f4d982bf0c1556099caab1c2ea58fdc23b2fa08db0a5d40052524afd2372` |
| 13 | `instance` | [instNNRatSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/instnnratsmul--ff55712fcb5de8bbb3f2e5cf.md) | 85 | `declaration-track:ff55712fcb5de8bbb3f2e5cff89308083b401b0aab9d580736c0e38ccad94c1a` |
| 14 | `lemma` | [coe_nnratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/coe-nnratcast--84c1c887894d3294e695b15e.md) | 88 | `result-track:84c1c887894d3294e695b15ec441dc6f6eb7cdf10c500b2d903dbed11719b21b` |
| 15 | `lemma` | [mk_nnratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/mk-nnratcast--a8adab303e7db014024c08d0.md) | 89 | `result-track:a8adab303e7db014024c08d05f02318d68bbe095246eba5d46af648be87e3658` |
| 16 | `lemma` | [coe_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/coe-nnqsmul--176636280dd63f8c4fc24d4c.md) | 91 | `result-track:176636280dd63f8c4fc24d4ce85bb52628fc0e9a2fe1e65d516d0d234c3b635b` |
| 17 | `lemma` | [mk_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/mk-nnqsmul--6833863acd5b9c7fd1554268.md) | 93 | `result-track:6833863acd5b9c7fd1554268597f79d86c951b0bca1a69eae1df979924044541` |
| 18 | `instance` | [semifield](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/semifield--602f4145b714235f382b0c54.md) | 97 | `declaration-track:602f4145b714235f382b0c540574975ede8157da77f2f13f1c122355ec0e1349` |
| 19 | `instance` | [linearOrderedCommGroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variante0407602c3931504733b5065eda4078548f605cad64027ae2d59d095a5dd7c67.lean/declarations/linearorderedcommgroupwithzero--222d882595d3fdbc231d2e1d.md) | 104 | `declaration-track:222d882595d3fdbc231d2e1d327d874d53bf58d7fa91c0ba1d9d13686eb20b0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
