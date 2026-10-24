# Verification target: GRWTSK.Algebra.LinearAlgebra.Operations.Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e45c4dd51828cc482e2484aa7821ad4b664104e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e45c4dd51828cc482e2484aa7821ad4b664104e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolMatrix.zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-zeros--00bf1b0616b1e9908801b029.md) | 14 | `declaration-track:00bf1b0616b1e9908801b029eea8d9cdc21d024a61b50b884a26aff3720f05b8` |
| 2 | `def` | [BoolMatrix.ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-ones--82d02ab1fcbe9b487e8ce9a2.md) | 18 | `declaration-track:82d02ab1fcbe9b487e8ce9a24557d84eee6258b8c78ddc542d1d24949e46a0d8` |
| 3 | `def` | [BoolMatrix.join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-join--f38bfb9b6985a237204d90b8.md) | 22 | `declaration-track:f38bfb9b6985a237204d90b88ec16f1577cabc50297139b8d969dd8d5a62a20b` |
| 4 | `def` | [BoolMatrix.meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-meet--38bd8a6235dc31211bae2328.md) | 28 | `declaration-track:38bd8a6235dc31211bae23282a49c68b866177ae967f708eb05b08dbd68feb71` |
| 5 | `def` | [BoolMatrix.compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-compl--22c9b1e1d72221227f284187.md) | 34 | `declaration-track:22c9b1e1d72221227f284187fba756076e402aef74188f610e6a78b13cf2e4b4` |
| 6 | `def` | [BoolMatrix.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-transpose--7a8efa4847aca45c2573c1c4.md) | 40 | `declaration-track:7a8efa4847aca45c2573c1c4ab8a9aa73ca4ce7df968ec575d94cf5fa292f7fa` |
| 7 | `def` | [BoolMatrix.set](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-set--72ff93bb8908961b746b69c5.md) | 46 | `declaration-track:72ff93bb8908961b746b69c5046a4f5ef91cf39c57a0f47613b81f271b45b85d` |
| 8 | `theorem` | [BoolMatrix.entry_zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-zeros--23c68a24b32d77b84a2b2d76.md) | 58 | `result-track:23c68a24b32d77b84a2b2d760e1fed1b60c7b86a523ee9fc678aec6814ce2521` |
| 9 | `theorem` | [BoolMatrix.entry_ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-ones--6534af78028990776a7524f7.md) | 64 | `result-track:6534af78028990776a7524f7c4a80e7786ea50e05d08309c3512862ee62f5a1a` |
| 10 | `theorem` | [BoolMatrix.entry_join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-join--804ecedf00118447d02952e4.md) | 70 | `result-track:804ecedf00118447d02952e4dfdef52a3b90df14f2a41b2d39cbcb09da4d47fe` |
| 11 | `theorem` | [BoolMatrix.entry_meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-meet--1045f153818f23a6078ed721.md) | 78 | `result-track:1045f153818f23a6078ed721ba248ce9275e94d7dc8934e8ad053bd400d426e1` |
| 12 | `theorem` | [BoolMatrix.entry_compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-compl--aa283959747fb825028e792c.md) | 86 | `result-track:aa283959747fb825028e792c929101eb3b26f714eae4bb292507bd02577f7267` |
| 13 | `theorem` | [BoolMatrix.entry_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-transpose--cc49745d9169dc3b1fa42e82.md) | 94 | `result-track:cc49745d9169dc3b1fa42e8240a43aa8dec92acd9d6c1f5492bb9f69804e911e` |
| 14 | `theorem` | [BoolMatrix.transpose_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-transpose-transpose--9f5cc9581446a7981332b93c.md) | 102 | `result-track:9f5cc9581446a7981332b93c896dab6e7768da83e557881d9d807efcd3771804` |
| 15 | `theorem` | [BoolMatrix.entry_set_same](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/declarations/boolmatrix-entry-set-same--9bb385790e06289ddec7a4ac.md) | 109 | `result-track:9bb385790e06289ddec7a4ac2ecba048386826237bc992b872f9f2097eb16efd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
