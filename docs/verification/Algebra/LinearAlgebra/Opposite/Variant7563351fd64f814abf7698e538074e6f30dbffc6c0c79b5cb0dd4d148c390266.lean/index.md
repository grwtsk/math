# Verification target: GRWTSK.Algebra.LinearAlgebra.Opposite.Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37c1211cb0376684c94ee0ed71e097be01ce6c0e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37c1211cb0376684c94ee0ed71e097be01ce6c0e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearMap.ext_ring_op](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/linearmap-ext-ring-op--3553e9dea94d91a5ae2e6129.md) | 21 | `result-track:3553e9dea94d91a5ae2e6129e75e7140da7b19b59daa69de8defd00246e1f2d6` |
| 2 | `def` | [opLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/oplinearequiv--84dccd37640ef257da758623.md) | 36 | `declaration-track:84dccd37640ef257da758623d6af52e5391c4cfceecb1beb8c16c3441e7b117f` |
| 3 | `theorem` | [coe_opLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/coe-oplinearequiv--fe0dac2005c7b54fa1da6253.md) | 40 | `result-track:fe0dac2005c7b54fa1da6253077cd0c888bdecf2e6af9fb697c1e8635581eaa5` |
| 4 | `theorem` | [coe_opLinearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/coe-oplinearequiv-symm--55f64c53337dfcfd989551ab.md) | 44 | `result-track:55f64c53337dfcfd989551abc96d454a62f59fff33d2ae5d6372913dc2d441a9` |
| 5 | `theorem` | [coe_opLinearEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/coe-oplinearequiv-tolinearmap--9a32be320b061aff23ad545b.md) | 48 | `result-track:9a32be320b061aff23ad545b5787702d2b85f6139e0f36617dd8bd45d4e6daf7` |
| 6 | `theorem` | [coe_opLinearEquiv_symm_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/coe-oplinearequiv-symm-tolinearmap--28be04cdb31fde50c6200dd3.md) | 52 | `result-track:28be04cdb31fde50c6200dd38441c9799a1028dc97325580f5985f6940685039` |
| 7 | `theorem` | [opLinearEquiv_toAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/oplinearequiv-toaddequiv--1a0d0761f799376a979ceda6.md) | 56 | `result-track:1a0d0761f799376a979ceda69e518d37232c1e5eae3a8f6e3fb83542e11af453` |
| 8 | `theorem` | [coe_opLinearEquiv_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/coe-oplinearequiv-addequiv--0ef533d17bbacaba97ca210c.md) | 60 | `result-track:0ef533d17bbacaba97ca210c77eac72f753a540c8c31785cfe61c3b09feae4c7` |
| 9 | `theorem` | [opLinearEquiv_symm_toAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/oplinearequiv-symm-toaddequiv--3df2f29ff6a501c37adf97a3.md) | 63 | `result-track:3df2f29ff6a501c37adf97a390c92d67a0801a27cbbd9c06b21be7a899b14595` |
| 10 | `theorem` | [coe_opLinearEquiv_symm_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Opposite/Variant7563351fd64f814abf7698e538074e6f30dbffc6c0c79b5cb0dd4d148c390266.lean/declarations/coe-oplinearequiv-symm-addequiv--83bb256ffd36e120faa65bb1.md) | 68 | `result-track:83bb256ffd36e120faa65bb1b0eeed26211e4799232923cb1d8667d02c24519c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
