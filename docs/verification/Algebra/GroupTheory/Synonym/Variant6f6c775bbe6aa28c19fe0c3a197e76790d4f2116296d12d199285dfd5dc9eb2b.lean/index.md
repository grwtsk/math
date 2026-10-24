# Verification target: GRWTSK.Algebra.GroupTheory.Synonym.Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4f04bf77601d92ffdf5b3c2c94d32fb69951650",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4f04bf77601d92ffdf5b3c2c94d32fb69951650`.

Source path: `GRWTSK/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Synonym` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instmulaction--d94cac8bcf593b3c1615699d.md) | 33 | `declaration-track:d94cac8bcf593b3c1615699df20b402054205ca55cc1a41aa4436f3a8b5cc6f8` |
| 2 | `instance` | [instMulAction'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instmulaction--2599e36d8e93633be613e1af.md) | 36 | `declaration-track:2599e36d8e93633be613e1afbf509447f19d058c59ba24f6ba35b7ba00fedbcb` |
| 3 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instsmulcommclass--6c525d8b7963dc2dc608e58b.md) | 39 | `declaration-track:6c525d8b7963dc2dc608e58bd70b28e27155ca7dc359a0d37a0914bd5b6971b9` |
| 4 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instsmulcommclass--8691cdce776e4f7711f74399.md) | 43 | `declaration-track:8691cdce776e4f7711f743995b82f6ce328610e43543ef15f606246d35d509d3` |
| 5 | `instance` | [instSMulCommClass''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instsmulcommclass--19a0505a7b776efef508bd96.md) | 47 | `declaration-track:19a0505a7b776efef508bd968a416fc1d28942de3723b6eaeb82bbc84c188460` |
| 6 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instisscalartower--8ad15dc99a2007b9ac13a67c.md) | 51 | `declaration-track:8ad15dc99a2007b9ac13a67cdbeff2ddd9a4d0e36e70a8be340ebb1afb14e9d7` |
| 7 | `instance` | [instIsScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instisscalartower--54f90219e4cbbd709655587b.md) | 55 | `declaration-track:54f90219e4cbbd709655587b0958d85f546044603c2bd94d40e1ee9afc9bdc19` |
| 8 | `instance` | [instIsScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instisscalartower--ddce8393542e5a2e17eb35ea.md) | 59 | `declaration-track:ddce8393542e5a2e17eb35ea28859747081c21e095f6b60749d60ade3eb87081` |
| 9 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instmulaction--12b5cdb83aea7bdd4e4fd392.md) | 67 | `declaration-track:12b5cdb83aea7bdd4e4fd3922faf328d78a9dc9d80f65d5bed064a3d2073abfc` |
| 10 | `instance` | [instMulAction'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instmulaction--3b082e3b2de24fa25cd3ced3.md) | 70 | `declaration-track:3b082e3b2de24fa25cd3ced30e4b4f4d149c6e265065d3848ab2bcd70e6f9b8c` |
| 11 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instsmulcommclass--c7aaa99d1fed03be6cb012dd.md) | 73 | `declaration-track:c7aaa99d1fed03be6cb012ddb7fe19605da611f402d6052e2e52ccaa5d04f81e` |
| 12 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instsmulcommclass--5878468ce38044fcff3bbe77.md) | 77 | `declaration-track:5878468ce38044fcff3bbe77ce6dffb13f5288ba8b03d43421eb4e4608914c14` |
| 13 | `instance` | [instSMulCommClass''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instsmulcommclass--0a1d5bd7f20beb3cefbcac3a.md) | 81 | `declaration-track:0a1d5bd7f20beb3cefbcac3a7ce1456a5ea425bf306677ff9e8f63e9e546d9fd` |
| 14 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instisscalartower--4cf98e6fa1b7c36cffb2fb0e.md) | 85 | `declaration-track:4cf98e6fa1b7c36cffb2fb0e7e6d7843e56776e4f4894159e4cd71d011d3fb8d` |
| 15 | `instance` | [instIsScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instisscalartower--79b85868758e302afe7bac22.md) | 89 | `declaration-track:79b85868758e302afe7bac223c50f578aaa2c9f1f4f8cecb1e4cad78040965c6` |
| 16 | `instance` | [instIsScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variant6f6c775bbe6aa28c19fe0c3a197e76790d4f2116296d12d199285dfd5dc9eb2b.lean/declarations/instisscalartower--e920863edcbf4e192274df11.md) | 93 | `declaration-track:e920863edcbf4e192274df1141b21fc2577da1a4cacf4af6399076b288f44dac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
