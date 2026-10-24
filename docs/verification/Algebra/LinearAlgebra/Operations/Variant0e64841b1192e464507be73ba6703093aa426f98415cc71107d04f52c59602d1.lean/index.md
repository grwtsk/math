# Verification target: GRWTSK.Algebra.LinearAlgebra.Operations.Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbb2d641f5687c15820d3b2e2f3ca21859f921ce",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbb2d641f5687c15820d3b2e2f3ca21859f921ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-zeros--e2f3f9628c1037223514b465.md) | 6 | `declaration-track:e2f3f9628c1037223514b4653db6a9fbc8297e23eb9a47d5f8b5dcdfec39cb14` |
| 2 | `def` | [Matrix.ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-ones--b1f3c3fe06a77439db1c76d9.md) | 10 | `declaration-track:b1f3c3fe06a77439db1c76d9d8837c5bfc1ae92ba3fcf571153a03c4d1888f2d` |
| 3 | `def` | [Matrix.join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-join--0861a49c7bf6724e9a9fe850.md) | 14 | `declaration-track:0861a49c7bf6724e9a9fe850f333e16e5f2321b59fc6b8fdbbd5adcc97b0eb77` |
| 4 | `def` | [Matrix.meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-meet--d96228a84fdae69c2e2ec1b6.md) | 20 | `declaration-track:d96228a84fdae69c2e2ec1b6aab045487eb2433ee4d687a66e6b5e62feadd5bd` |
| 5 | `def` | [Matrix.compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-compl--fdbd73d701eade66b9314115.md) | 26 | `declaration-track:fdbd73d701eade66b9314115e8a5a3d642ad4536228698cd772d513979595f09` |
| 6 | `def` | [Matrix.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-transpose--c2998c38757d2e62c293b417.md) | 32 | `declaration-track:c2998c38757d2e62c293b417d88c3bb6c0e79d9a2d54ae7a82572ee82642a38a` |
| 7 | `def` | [Matrix.set](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-set--f1e71c06c57cb7ccc8423482.md) | 38 | `declaration-track:f1e71c06c57cb7ccc8423482fb7aa02dbbea7f473a78442916d05982e365380b` |
| 8 | `theorem` | [Matrix.entry_zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-zeros--e63f441382eae3728233c24b.md) | 50 | `result-track:e63f441382eae3728233c24b83a0cbf4d312c65885b8f9b69dc40ff28cda61f9` |
| 9 | `theorem` | [Matrix.entry_ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-ones--948449d5339b5fcd608e1c16.md) | 56 | `result-track:948449d5339b5fcd608e1c16e4d0c85627b10bf61fbbac3ea4d4230bec3d8e24` |
| 10 | `theorem` | [Matrix.entry_join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-join--eba542a42b1034314e6f1370.md) | 62 | `result-track:eba542a42b1034314e6f13701a4a5c7073233e02e4c33fce84818dd3ddf8e947` |
| 11 | `theorem` | [Matrix.entry_meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-meet--3d5bceb8613bc742153f9acb.md) | 70 | `result-track:3d5bceb8613bc742153f9acbbb05141abd69b30d36be96d2e082419f49cb9766` |
| 12 | `theorem` | [Matrix.entry_compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-compl--4338ef8b5cdc566e93746f05.md) | 78 | `result-track:4338ef8b5cdc566e93746f05dbae6c7dd002965887b7670696a9acd5e9f45ca7` |
| 13 | `theorem` | [Matrix.entry_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-transpose--3a6e1236708b2977bab1ac32.md) | 86 | `result-track:3a6e1236708b2977bab1ac32af199eb4432c6dd31019647b56d840bd1a282a4f` |
| 14 | `theorem` | [Matrix.transpose_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-transpose-transpose--0c3d780ceb84819769f107e4.md) | 94 | `result-track:0c3d780ceb84819769f107e4d545b7e2c58cac56649bca27f3de053fe86a02b7` |
| 15 | `theorem` | [Matrix.entry_set_same](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1.lean/declarations/matrix-entry-set-same--ddc6d447c05e0073aa4b359c.md) | 101 | `result-track:ddc6d447c05e0073aa4b359cddf459feeb9d47aa6f888d95bef611addc88cd1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
