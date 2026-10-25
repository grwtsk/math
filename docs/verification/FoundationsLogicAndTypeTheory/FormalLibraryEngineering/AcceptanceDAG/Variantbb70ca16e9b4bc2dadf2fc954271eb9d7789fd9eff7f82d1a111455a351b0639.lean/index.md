# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AcceptanceDAG.Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dce6c8926b1aea1ed3282622b4ed59248c9183f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dce6c8926b1aea1ed3282622b4ed59248c9183f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.RefereeGate` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.ZetaRHTarget` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AcceptanceNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/declarations/acceptancenode--e4a1c9c5cda0da05c14cb637.md) | 27 | `declaration-track:e4a1c9c5cda0da05c14cb6376f8c2e667594f81e22cd1b64d36afd7b2ae3b573` |
| 2 | `structure` | [RHAcceptanceDAG](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/declarations/rhacceptancedag--f944e75f5b338170c639b6d9.md) | 45 | `declaration-track:f944e75f5b338170c639b6d9ffdc6de83b8e7d301496da6d922938eddbbf2141` |
| 3 | `theorem` | [acceptance_dag_requires_all_nodes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/declarations/acceptance-dag-requires-all-nodes--39f400d2fa01b406b44bc649.md) | 57 | `result-track:39f400d2fa01b406b44bc6491fe8b1c67e54d70a1dfe4134a2acd15db226020e` |
| 4 | `theorem` | [acceptance_dag_requires_no_contracts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/declarations/acceptance-dag-requires-no-contracts--020951ddf8c38cd03e0b7c98.md) | 62 | `result-track:020951ddf8c38cd03e0b7c98b57b718e6865e814c07cb16428c18c245ca4a52b` |
| 5 | `theorem` | [acceptance_dag_requires_zeta_specialization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/declarations/acceptance-dag-requires-zeta-specialization--ca98973783dc0069e92e2bbf.md) | 67 | `result-track:ca98973783dc0069e92e2bbfa820006d1856928f35399fa79680b7e987802799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
