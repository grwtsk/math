# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb1b205f501b42b2bb2842c0c67d5b87ebdf193e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb1b205f501b42b2bb2842c0c67d5b87ebdf193e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/invtsubmodule--bcd614bb790a98adcbf67ebd.md) | 35 | `declaration-track:bcd614bb790a98adcbf67ebd10077689285bb7f1f5c542d547999e4eaaccfd91` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/mem-invtsubmodule--8e0b4769bd8e8c35619a89f4.md) | 38 | `result-track:8e0b4769bd8e8c35619a89f4a9dce32ccd98d0e26053f439ead94d50e68597de` |
| 3 | `lemma` | [top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/top-mem--51818c59b366aad4cf92edb9.md) | 44 | `result-track:51818c59b366aad4cf92edb9bd2c300c9153a79f896d83e8c9769c10ad5946aa` |
| 4 | `lemma` | [bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/bot-mem--80c793ab7bc91bb0dfda5d95.md) | 46 | `result-track:80c793ab7bc91bb0dfda5d95cc50d4b751cfb9bc594d8371c7bbd1088ce6908c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/instance--ab978a080ae38201c7d3fa30.md) | 48 | `declaration-track:ab978a080ae38201c7d3fa30670c380047a93a299a16097914b0f787026f5f8f` |
| 6 | `lemma` | [coe_top](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/coe-top--2c686ec008bfd6ed134b8dd2.md) | 54 | `result-track:2c686ec008bfd6ed134b8dd29613aba81e5fc7b222e93623c26eefe106c7c386` |
| 7 | `lemma` | [coe_bot](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/coe-bot--076e625ebdbb729f1554c378.md) | 56 | `result-track:076e625ebdbb729f1554c378de519ad33c62243823f3d1d1f3c5ad2a3bc83c50` |
| 8 | `lemma` | [nontrivial_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/nontrivial-iff--68ae18815edce80ca9b8f51c.md) | 58 | `result-track:68ae18815edce80ca9b8f51ca7cdd16e5bf04390051e814c54ee0a2704058d60` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/instance--8be5b1be11869dfdb943503e.md) | 66 | `declaration-track:8be5b1be11869dfdb943503e5bce9b905eda679f8fefc72c6bcb850718ee8108` |
| 10 | `lemma` | [asAlgebraHom_mem_of_forall_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/asalgebrahom-mem-of-forall-mem--85616a3c55d6b3a06eea993e.md) | 71 | `result-track:85616a3c55d6b3a06eea993ee28cb35c6bcbcfdc90ffd1487a814484ea4e5d7a` |
| 11 | `def` | [mapSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant22167b3626bfc9e3fa94d8ad3d6fc5d1d2caef72ea87633b1b459597100b3a60.lean/declarations/mapsubmodule--d5fc32cb9f21e5f0e6ecc931.md) | 77 | `declaration-track:d5fc32cb9f21e5f0e6ecc9310dc8a02b454ef0864f8b667687ab3ab05052b5e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
