# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Derivation.Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef57dd7692e7f4581a1fc9ceea854b0c0f2dd26d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef57dd7692e7f4581a1fc9ceea854b0c0f2dd26d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean.json)

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
| 1 | `def` | [mkDerivationₗ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation--dc41310f14375a8cf41a6c3e.md) | 36 | `declaration-track:dc41310f14375a8cf41a6c3eb96be567a6f69c2f700abf7dd3788e8c0a9c60d0` |
| 2 | `theorem` | [mkDerivationₗ_monomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation-monomial--ce5cf15368f9e4ebdfc42cbf.md) | 44 | `result-track:ce5cf15368f9e4ebdfc42cbf38cf5f645938401d94f93642720f6b797081e4cc` |
| 3 | `theorem` | [mkDerivationₗ_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation-c--0c4a06a44bfa68c7d87b23a7.md) | 49 | `result-track:0c4a06a44bfa68c7d87b23a71bb7b3acd62ea54ef426404c680452c8713e524e` |
| 4 | `theorem` | [mkDerivationₗ_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation-x--e1b2d8f8d3a5e881f9e75d45.md) | 52 | `result-track:e1b2d8f8d3a5e881f9e75d45e22902ef3b2f9ab00906907f255dc427515784bc` |
| 5 | `theorem` | [derivation_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/derivation-c--dca27c1b8ebd217f6b288662.md) | 56 | `result-track:dca27c1b8ebd217f6b288662751d658b16dd2f6b0d238e273aae83bde46168f1` |
| 6 | `theorem` | [derivation_C_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/derivation-c-mul--35eb2468b14e142f47044d6b.md) | 60 | `result-track:35eb2468b14e142f47044d6b910433cc262b9942576170a79ec45cc75545248b` |
| 7 | `theorem` | [derivation_eqOn_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/derivation-eqon-supported--fb4942e3f67b660d7834444a.md) | 67 | `result-track:fb4942e3f67b660d7834444a4770e259aac77a6f5b609f406f455ba70614639d` |
| 8 | `theorem` | [derivation_eq_of_forall_mem_vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/derivation-eq-of-forall-mem-vars--705df61bf24b11976b3e5e82.md) | 72 | `result-track:705df61bf24b11976b3e5e82ca5018c99eab46ce06aaa1737ed4c5ef0cdc8a4b` |
| 9 | `theorem` | [derivation_eq_zero_of_forall_mem_vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/derivation-eq-zero-of-forall-mem-vars--06b8b5c5cd857494d13f4bf2.md) | 76 | `result-track:06b8b5c5cd857494d13f4bf2005330e53d6b408e2abcd5b06f2fbef8e4f1bce2` |
| 10 | `theorem` | [derivation_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/derivation-ext--41afebe8b5803aeac91f2335.md) | 81 | `result-track:41afebe8b5803aeac91f2335db3d9c00a1101e4496c74db160b8050b7f537803` |
| 11 | `theorem` | [leibniz_iff_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/leibniz-iff-x--36f58468f39131acbebdb9ca.md) | 87 | `result-track:36f58468f39131acbebdb9ca14a61b050cb23c7ad95341d91f033e5b327333af` |
| 12 | `def` | [mkDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation--e10121b70c506258f1262c50.md) | 111 | `declaration-track:e10121b70c506258f1262c500436982d5609bce13c6822b0f6fe80bd7c1a0584` |
| 13 | `theorem` | [mkDerivation_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation-x--7bc6669b398ad1081816a163.md) | 127 | `result-track:7bc6669b398ad1081816a163f193c7914a6ae457d6ae8f922153e9602c7af43d` |
| 14 | `theorem` | [mkDerivation_monomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivation-monomial--e137a27949343925a1da9622.md) | 130 | `result-track:e137a27949343925a1da962288cd45d0ce2cad58887ac3994f38b5db2cbabf0c` |
| 15 | `def` | [mkDerivationEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantd9eb6f1f2b534e2d0f9d8999a2501591abd717d41a0ad3532c22bf4db3ca9678.lean/declarations/mkderivationequiv--1cd7a0b7d3c1a8def58f0a50.md) | 136 | `declaration-track:1cd7a0b7d3c1a8def58f0a50fe38da9bb739ea93aab73ddd8bbef3febe8d465a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
