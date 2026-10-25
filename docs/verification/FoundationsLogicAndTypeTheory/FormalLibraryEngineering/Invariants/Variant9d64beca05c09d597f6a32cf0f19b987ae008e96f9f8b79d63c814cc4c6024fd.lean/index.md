# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Invariants.Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec7a29f2eb47a39b9c8a96f609acb33fb1e31bad",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec7a29f2eb47a39b9c8a96f609acb33fb1e31bad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.
- `CompositeElements.StaticSnapshot` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PackageImportAcyclic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/packageimportacyclic--ae224a747fb81d9e5e0c29b8.md) | 8 | `declaration-track:ae224a747fb81d9e5e0c29b8a41dd55ffc7799092c3a74ab94bf11a84915c178` |
| 2 | `theorem` | [packageImportAcyclic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/packageimportacyclic--b8ab006f98fb588e792e9ea8.md) | 12 | `result-track:b8ab006f98fb588e792e9ea82cac7997ed91803b61ff798108a1d11fc80ea821` |
| 3 | `theorem` | [declared_zero_off_diagonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/declared-zero-off-diagonal--9b2648d07a87eae64def1726.md) | 17 | `result-track:9b2648d07a87eae64def1726b0c336101d45eebdf649a73ea32c20aef8e42d62` |
| 4 | `theorem` | [formalEligible_zero_off_diagonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/formaleligible-zero-off-diagonal--313e4e12cf753fa02ad7666f.md) | 23 | `result-track:313e4e12cf753fa02ad7666f293aa4185f5adf64510aff08323b985eb06b67ea` |
| 5 | `theorem` | [no_known_conflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/no-known-conflict--c935f45250db73515e73cc27.md) | 29 | `result-track:c935f45250db73515e73cc276e5aab49abb1e63124944deb7f84d2bfd9a93790` |
| 6 | `theorem` | [unresolved_conflict_is_not_negative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/unresolved-conflict-is-not-negative--bee50656af7e602a923348c0.md) | 34 | `result-track:bee50656af7e602a923348c06318c59f7dfda5bae0d630303bab0f1ab430a108` |
| 7 | `theorem` | [analyzed_conflicts_are_negative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/analyzed-conflicts-are-negative--c28b5baaac858f6c3e8cf5a2.md) | 41 | `result-track:c28b5baaac858f6c3e8cf5a22837424d051c1cdc78f5a59b2eef460cbbd8798f` |
| 8 | `theorem` | [contract_bitMatrix_inverse_laws](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/contract-bitmatrix-inverse-laws--5b9828774b683565a4d9005a.md) | 47 | `result-track:5b9828774b683565a4d9005a6bce9fc9771d858293d7baee47ffaab6a6341921` |
| 9 | `theorem` | [exactBridge_registry_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/exactbridge-registry-certificate--611f562119312203a5bc0d50.md) | 61 | `result-track:611f562119312203a5bc0d50fe668e524fab02d8802fec4c01e97436fc7ca5d2` |
| 10 | `theorem` | [phaseOneStaticComposite_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/phaseonestaticcomposite-valid--139c75c4abc4286799a1e154.md) | 75 | `result-track:139c75c4abc4286799a1e1544d99cd0a6a0d55866c6734a180b5f5534c0e12b6` |
| 11 | `inductive` | [PlaneEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/planeevidence--2017cb70b9d9ceaedfd42d8c.md) | 95 | `declaration-track:2017cb70b9d9ceaedfd42d8ceb23479dd3b3ab3b1d924c8770647e3d3f1181f9` |
| 12 | `theorem` | [operational_is_not_formal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant9d64beca05c09d597f6a32cf0f19b987ae008e96f9f8b79d63c814cc4c6024fd.lean/declarations/operational-is-not-formal--abfcfa194620b9a30681d895.md) | 99 | `result-track:abfcfa194620b9a30681d895f89a6d306d42ee082766a9fdb1e755850cb24151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
