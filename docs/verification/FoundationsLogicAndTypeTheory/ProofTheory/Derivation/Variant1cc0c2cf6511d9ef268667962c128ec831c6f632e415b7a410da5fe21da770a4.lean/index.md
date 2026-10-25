# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Derivation.Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b846b42e56463ea45678933af940837fee1fa0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b846b42e56463ea45678933af940837fee1fa0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDerivationₗ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation--d6d0efee4cf3c8adc36226c0.md) | 40 | `declaration-track:d6d0efee4cf3c8adc36226c00a37c3e4026a812e0b3a862016feb6962bb9f10a` |
| 2 | `theorem` | [mkDerivationₗ_monomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation-monomial--c84a1f7d5d0621da8faba464.md) | 47 | `result-track:c84a1f7d5d0621da8faba464ba0bbffa7eb505b96d502f45f667cc4766a92bab` |
| 3 | `theorem` | [mkDerivationₗ_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation-c--37041a7bd747733d3ad3475e.md) | 52 | `result-track:37041a7bd747733d3ad3475ec4efbdcca167ae6fe781d3f7e01b93ed8637d706` |
| 4 | `theorem` | [mkDerivationₗ_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation-x--adeebb05eede481088b7d831.md) | 55 | `result-track:adeebb05eede481088b7d83131632f894753014f39fb3f22adec7494b8d02dc8` |
| 5 | `theorem` | [derivation_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/derivation-c--325d949dcb0611023675e2e2.md) | 59 | `result-track:325d949dcb0611023675e2e2152fff869932a8df5a2d52298df5ca0c91b33fa9` |
| 6 | `theorem` | [derivation_C_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/derivation-c-mul--4a0900ec82aca4d70e924238.md) | 63 | `result-track:4a0900ec82aca4d70e92423811572397826136386fc86b6cddca1fd6f0bf4169` |
| 7 | `theorem` | [derivation_eqOn_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/derivation-eqon-supported--32daffb5b26648122e315509.md) | 70 | `result-track:32daffb5b26648122e3155091d86fed54354bb84fde1837328663f6b728f34f8` |
| 8 | `theorem` | [derivation_eq_of_forall_mem_vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/derivation-eq-of-forall-mem-vars--1c3265a8c1a1c4018f6e53eb.md) | 75 | `result-track:1c3265a8c1a1c4018f6e53eb9b1e5b0b4123e179b5c756607b2737190f004634` |
| 9 | `theorem` | [derivation_eq_zero_of_forall_mem_vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/derivation-eq-zero-of-forall-mem-vars--6983dc9c9d7357824156fd07.md) | 79 | `result-track:6983dc9c9d7357824156fd07feca2aab5bf1862ffce77ac3b9a4ab992a0d1f82` |
| 10 | `theorem` | [derivation_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/derivation-ext--30cb59e6614f79fa421f1c87.md) | 84 | `result-track:30cb59e6614f79fa421f1c87dc1ddb16d703cdca18a3bfc38eb8e0582b0cd693` |
| 11 | `theorem` | [leibniz_iff_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/leibniz-iff-x--75672c30fb32edee312f39f5.md) | 90 | `result-track:75672c30fb32edee312f39f51377cae0a2da767e16da89a22b7e315e8be9e23d` |
| 12 | `def` | [mkDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation--9875b01a8f8386a97aa0d5b7.md) | 114 | `declaration-track:9875b01a8f8386a97aa0d5b7d14ac551cf21f50d317962d1aff44b192fc8e026` |
| 13 | `theorem` | [mkDerivation_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation-x--a3ceb069d364550ff168e495.md) | 130 | `result-track:a3ceb069d364550ff168e495a089ded042d5f8e3e9c07b2fafb09e255ef6da11` |
| 14 | `theorem` | [mkDerivation_monomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivation-monomial--75fdbf7bdf5b9f1b3f1927e9.md) | 133 | `result-track:75fdbf7bdf5b9f1b3f1927e9782565e49d5485411285563f897f32d651fae2b9` |
| 15 | `def` | [mkDerivationEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean/declarations/mkderivationequiv--0339565c8ab49e76677a8f63.md) | 139 | `declaration-track:0339565c8ab49e76677a8f63d2a657d6c12466c52c00f7d7a87ee623d669fbb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
