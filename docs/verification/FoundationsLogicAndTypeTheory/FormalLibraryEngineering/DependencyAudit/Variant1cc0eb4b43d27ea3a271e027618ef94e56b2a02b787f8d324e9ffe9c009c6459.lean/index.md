# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DependencyAudit.Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51d9783a3e1169440b1f7b9321401b15b516f9cf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51d9783a3e1169440b1f7b9321401b15b516f9cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ProofSafety.AssumptionBudget` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencyAuditReport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependencyauditreport--3d2dea47c12ebd84bc8893c6.md) | 25 | `declaration-track:3d2dea47c12ebd84bc8893c6bfe470b211de9d9ffde4e339cf32ca16374ce1b8` |
| 2 | `theorem` | [dependency_audit_imports_only_allowed_layers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependency-audit-imports-only-allowed-layers--5037ca2e6950091ab2e62a5b.md) | 42 | `result-track:5037ca2e6950091ab2e62a5b6d0b108f67fb5ec04f573594c7ccdd4ba797b099` |
| 3 | `theorem` | [dependency_audit_no_contract_modules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependency-audit-no-contract-modules--76a50194bbf209f366accd9f.md) | 47 | `result-track:76a50194bbf209f366accd9f25c815a2ef9f123aa9ba9c7d550529206bf9cc12` |
| 4 | `theorem` | [dependency_audit_no_external_witness_modules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependency-audit-no-external-witness-modules--a89d8af6e721e1531c494c47.md) | 52 | `result-track:a89d8af6e721e1531c494c47ae5e7c3e6ec9c6c7089ac9336b26eb042c866e48` |
| 5 | `theorem` | [dependency_audit_no_if_supplied_accessors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependency-audit-no-if-supplied-accessors--c902c8ba1f4da6fffb261578.md) | 57 | `result-track:c902c8ba1f4da6fffb261578c6d66de6404dc7b8b622d07de3e7b6bba88987ae` |
| 6 | `theorem` | [dependency_audit_no_certified_projection_proofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependency-audit-no-certified-projection-proofs--154aea2f3371094ea6caf85a.md) | 62 | `result-track:154aea2f3371094ea6caf85ae53a8a2bcd4dd10da8ddee04919753ec38268cde` |
| 7 | `theorem` | [dependency_audit_no_gap_tokens](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyAudit/Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459.lean/declarations/dependency-audit-no-gap-tokens--b87127cdb29e15e7e6543219.md) | 67 | `result-track:b87127cdb29e15e7e6543219fe607dd3080f5dceff46bc2adf77aad4fcc13bfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
