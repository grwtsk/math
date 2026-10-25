# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Derivation.Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e9cd9a85fd97ce53d3698149d95a5bd09caf63",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e9cd9a85fd97ce53d3698149d95a5bd09caf63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDerivationₗ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation--d4dca5eed06c9b3b1c71e770.md) | 32 | `declaration-track:d4dca5eed06c9b3b1c71e77022952c089728a025d04aca6b3d4554db4566ea10` |
| 2 | `theorem` | [mkDerivationₗ_monomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation-monomial--1b448953e8e78dc2609b9d5a.md) | 39 | `result-track:1b448953e8e78dc2609b9d5abe7c5b6b18573539ade6809e2ef1e620a8d59995` |
| 3 | `theorem` | [mkDerivationₗ_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation-c--49bbab956be507e1d809c661.md) | 44 | `result-track:49bbab956be507e1d809c661fd5635a58aeecd8d477353f13353402297f449d1` |
| 4 | `theorem` | [mkDerivationₗ_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation-x--fe7c9354cc82cd631debbf4c.md) | 47 | `result-track:fe7c9354cc82cd631debbf4c938989b5008c0074c30abd0c43a739c33392ed2d` |
| 5 | `theorem` | [derivation_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/derivation-c--db011a309bca914ecf6a9e6d.md) | 51 | `result-track:db011a309bca914ecf6a9e6d2054e81471d95bacf4b3297a23cce956c7593e05` |
| 6 | `theorem` | [derivation_C_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/derivation-c-mul--7200800b079ec08fa37060a6.md) | 55 | `result-track:7200800b079ec08fa37060a6f8dc3ef9e3d17b4d0c9108f4987b9d558c306b12` |
| 7 | `theorem` | [derivation_eqOn_supported](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/derivation-eqon-supported--9183a02f3209695174800457.md) | 62 | `result-track:9183a02f3209695174800457f15016c7678b0d3d8b6af8fc77e0016d7c7e324d` |
| 8 | `theorem` | [derivation_eq_of_forall_mem_vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/derivation-eq-of-forall-mem-vars--eaee4652cfdf188eb1335de5.md) | 67 | `result-track:eaee4652cfdf188eb1335de56391f97f3cea2a3a707f6002187a36152b6fd762` |
| 9 | `theorem` | [derivation_eq_zero_of_forall_mem_vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/derivation-eq-zero-of-forall-mem-vars--90d0c1881a9b283187911053.md) | 71 | `result-track:90d0c1881a9b283187911053e7c550e2582a5eeedf9227ec6b388b6642f149aa` |
| 10 | `theorem` | [derivation_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/derivation-ext--4bc45d477c3adf052a61a34f.md) | 76 | `result-track:4bc45d477c3adf052a61a34f934e15a9f582d46f0ac7e941a4e57b7119210cbc` |
| 11 | `theorem` | [leibniz_iff_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/leibniz-iff-x--9f1ad177b486491e35f9d10d.md) | 82 | `result-track:9f1ad177b486491e35f9d10dd81628acda7baaa3def04ab21f75f163ff77c64a` |
| 12 | `def` | [mkDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation--dd281bf879017a2edbb07476.md) | 106 | `declaration-track:dd281bf879017a2edbb07476dfcc9485eeea6cbba1eff5549b007e121181c4cb` |
| 13 | `theorem` | [mkDerivation_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation-x--85eb4246e00151eb63f412f2.md) | 122 | `result-track:85eb4246e00151eb63f412f25965189c481de946dcd591674f8881bc23927040` |
| 14 | `theorem` | [mkDerivation_monomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivation-monomial--d9f1954fb5b63f84f320c27f.md) | 125 | `result-track:d9f1954fb5b63f84f320c27f83c47c23f817033eb412142d06bdf6de5a393d37` |
| 15 | `def` | [mkDerivationEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/declarations/mkderivationequiv--faf48b2dd3511c2cc8d4b401.md) | 131 | `declaration-track:faf48b2dd3511c2cc8d4b4013593a22eb662f0ae065853052baccf6d271cc1f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
