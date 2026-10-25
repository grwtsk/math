# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionFlow.Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5c8e5a8288897d2a91b15213bbf42fa76ea503a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5c8e5a8288897d2a91b15213bbf42fa76ea503a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.Derived.CheckedQuasiIsomorphism` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionFlowStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/declarations/torsionflowstep--20cf7a5e57fb1ac4cc1a000c.md) | 21 | `declaration-track:20cf7a5e57fb1ac4cc1a000c0ae96100d5b1bff30f46e7b84815c0f2f4f08909` |
| 2 | `structure` | [TorsionFlow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/declarations/torsionflow--f63db4689a37cb81ab160934.md) | 27 | `declaration-track:f63db4689a37cb81ab1609343520bdeac1681de5caf9b836139abaab0c882b8a` |
| 3 | `theorem` | [torsion_flow_euler_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/declarations/torsion-flow-euler-invariant--903febdd39ff8e53f08b100a.md) | 31 | `result-track:903febdd39ff8e53f08b100aa324d2659db82b72bc6490f44bce8046cb28260a` |
| 4 | `theorem` | [torsion_flow_mass_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/declarations/torsion-flow-mass-monotone--dec02aa32f921ac8afa250ef.md) | 41 | `result-track:dec02aa32f921ac8afa250ef58f3ecc7b44f5c145e3a2f4ac9a02e8a19e6ff30` |
| 5 | `theorem` | [torsion_flow_step_composition_mass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant45a42cf47efe1c4bfdb19295d1ce8507f918c5bd629f1a762cfe7b56ae054afa.lean/declarations/torsion-flow-step-composition-mass--193594d24de4b62d021f99e7.md) | 47 | `result-track:193594d24de4b62d021f99e73bf8cd91cd9295f7a61ccb12a24852cee21b344b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
