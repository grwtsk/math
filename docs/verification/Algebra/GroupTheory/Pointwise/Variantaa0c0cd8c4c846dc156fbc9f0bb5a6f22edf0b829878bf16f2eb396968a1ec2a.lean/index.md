# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4da9a084b9b1299e4858814c50348f6b58af932",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4da9a084b9b1299e4858814c50348f6b58af932`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/instance--f57e59865152da5b5f00008f.md) | 39 | `declaration-track:f57e59865152da5b5f00008f43aebd621f08fb098ba09d8c02b7f0046305952e` |
| 2 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/coe-one--181667c994ad3c8a547eea29.md) | 44 | `result-track:181667c994ad3c8a547eea298fccb5e80e9c3ff422714bd0d2163b19e2a80b4d` |
| 3 | `theorem` | [mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/mem-one--5fe4b511d93c6b8e39396a7f.md) | 49 | `result-track:5fe4b511d93c6b8e39396a7f10044ea2e242de9570fa6e08768f55d0db0973bf` |
| 4 | `theorem` | [subset_coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/subset-coe-one--56e46fb4451089894b6de10f.md) | 53 | `result-track:56e46fb4451089894b6de10f9bf00b862998655bf6b0974bb91b4706c08cc554` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/instance--b0da5f5373c78dd0c479b751.md) | 63 | `declaration-track:b0da5f5373c78dd0c479b751ed9e64778115c8dd5f30326fd5d39a74a344252d` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/coe-mul--66c5fa555b49a3021bb53ce5.md) | 70 | `result-track:66c5fa555b49a3021bb53ce5ad344d3f9b4fca20068e9165c5ab6aebbbecfc95` |
| 7 | `theorem` | [mem_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/mem-mul--d160e7481abebfccbcb13c19.md) | 74 | `result-track:d160e7481abebfccbcb13c19f43f350a91adb06388dd0ad7cecaecd0d012f917` |
| 8 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/muloneclass--fcc2bfd24320c2b67b2b3ea1.md) | 85 | `declaration-track:fcc2bfd24320c2b67b2b3ea102d33a4b06ca7e673f03b7db0c7af7f99a71871f` |
| 9 | `instance` | [semiGroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/semigroup--865a43447fa2e11ac5dfe834.md) | 111 | `declaration-track:865a43447fa2e11ac5dfe8341ead27afd554a12163df6c4ccd02745169358470` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/instance--10d19c3ae95d1af9621876a0.md) | 122 | `declaration-track:10d19c3ae95d1af9621876a058526cfb64c057e9a8fbfa7cecd69aaec470742a` |
| 11 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/coe-pow--2caf0a090fc0b12a9a2c6601.md) | 128 | `result-track:2caf0a090fc0b12a9a2c6601515955887a2097e6a6c1a93d28847e824164d009` |
| 12 | `theorem` | [subset_coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/declarations/subset-coe-pow--0948234dad856672d22bc19b.md) | 135 | `result-track:0948234dad856672d22bc19ba2950bf14db5b6ce156a7d5137cc314ccc3f43d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
