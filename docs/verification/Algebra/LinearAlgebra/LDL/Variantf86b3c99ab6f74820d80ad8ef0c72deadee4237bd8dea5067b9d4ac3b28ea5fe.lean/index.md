# Verification target: GRWTSK.Algebra.LinearAlgebra.LDL.Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d0dadeec88c8d6bf4ce400f2e5393da158e8227",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d0dadeec88c8d6bf4ce400f2e5393da158e8227`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean.json)

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
| 1 | `def` | [LDL.lowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-lowerinv--892e9ad14b4c61d4e2abb6f7.md) | 50 | `declaration-track:892e9ad14b4c61d4e2abb6f72c47b73bd46cbb34711feda0637a1400b4bebe66` |
| 2 | `theorem` | [LDL.lowerInv_eq_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-lowerinv-eq-gramschmidtbasis--9b3624ac85eab0b3a77b5547.md) | 54 | `result-track:9b3624ac85eab0b3a77b55470323a4d4ee11c8e8934eaa4927ead98ba435e096` |
| 3 | `instance` | [LDL.invertibleLowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-invertiblelowerinv--5329a505416b79dfc566ce4f.md) | 65 | `declaration-track:5329a505416b79dfc566ce4fb2f3c3afb46c4ef9772d778fcb8b03f6872e3611` |
| 4 | `theorem` | [LDL.lowerInv_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-lowerinv-orthogonal--7cf2fac70fafac8066d79273.md) | 73 | `result-track:7cf2fac70fafac8066d7927336253ca29a54c98b307a7bce7dc1b6fe9c6d3e6f` |
| 5 | `def` | [LDL.diagEntries](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-diagentries--fcebca4166728d981bc769b2.md) | 79 | `declaration-track:fcebca4166728d981bc769b26df9b8f96bd7a3d5c2f720d4db1398728cdf2bc3` |
| 6 | `def` | [LDL.diag](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-diag--62e38df0e5cbc6df2ee147a8.md) | 83 | `declaration-track:62e38df0e5cbc6df2ee147a8582e7cb321cc3b6f2ae3892808c0291250a72928` |
| 7 | `theorem` | [LDL.isLowerTriangular_lowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-islowertriangular-lowerinv--b5a32ada10991f52bd51face.md) | 86 | `result-track:b5a32ada10991f52bd51facef30bd0e40da9911ed29076046cefd2bf896aee84` |
| 8 | `theorem` | [LDL.diag_eq_lowerInv_conj](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-diag-eq-lowerinv-conj--27823f6016e41ec744ccf2ac.md) | 95 | `result-track:27823f6016e41ec744ccf2ac9bc3ac13a346fd2b3d839d6025b4c0c1ae26ae77` |
| 9 | `def` | [LDL.lower](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-lower--e2c82e41b595640a9743621d.md) | 109 | `declaration-track:e2c82e41b595640a9743621d5828afdbf808c4c7d5a92417b77e633fc2a968bf` |
| 10 | `theorem` | [LDL.isLowerTriangular_lower](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-islowertriangular-lower--235220bc3cf66818b57c856c.md) | 112 | `result-track:235220bc3cf66818b57c856ccde4e40565aaeb80108506d5f21811722b45c2c9` |
| 11 | `theorem` | [LDL.lower_conj_diag](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/declarations/ldl-lower-conj-diag--48e72b8fe1853a1e835174ba.md) | 117 | `result-track:48e72b8fe1853a1e835174bad2f7f111154b11394043d5573a22742c8587f82b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
