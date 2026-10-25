# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OldObtain.Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14e631d59f79a2bb851d3de2680f881cc7c83f3c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14e631d59f79a2bb851d3de2680f881cc7c83f3c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isObtainWithoutProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/declarations/isobtainwithoutproof--e51666111a71e243c3a726d2.md) | 57 | `declaration-track:e51666111a71e243c3a726d264782cf707d3731fba3b1aaaaf6b663805883466` |
| 2 | `def` | [is_obtain_without_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/declarations/is-obtain-without-proof--a06fc04a5be9a9dfeb2bbb49.md) | 65 | `declaration-track:a06fc04a5be9a9dfeb2bbb494c0b71577f587a7576ccd2212a55877d4249dade` |
| 3 | `register_option` | [linter.oldObtain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/declarations/linter-oldobtain--b3bce8a41b55723e51f2c73f.md) | 69 | `declaration-track:b3bce8a41b55723e51f2c73f7976b8c506e361a1aae792df336babd6e1954e61` |
| 4 | `def` | [oldObtainLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/declarations/oldobtainlinter--22f9aecee9dd669e159e538b.md) | 75 | `declaration-track:22f9aecee9dd669e159e538b28e8a942298e56977d4a257c57d7c04902943264` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OldObtain/Variant88ca263bc4e557c4b8db1cf39eb025a4d8fac49f41ce813eab3a62a4ea00656e.lean/declarations/initialize--c460db78b0d148e2cd1da178.md) | 83 | `declaration-track:c460db78b0d148e2cd1da17867d3bba8170ed8f138bfc14ca8eb1a78adabe74d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
