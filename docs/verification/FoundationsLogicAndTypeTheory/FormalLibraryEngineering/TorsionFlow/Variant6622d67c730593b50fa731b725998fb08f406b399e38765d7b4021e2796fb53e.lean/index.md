# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionFlow.Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f60b034a9c75958bfe36903f788704677e128496",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f60b034a9c75958bfe36903f788704677e128496`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.Derived.CheckedQuasiIsomorphism` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionFlowStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/declarations/torsionflowstep--2c1d7b687d67a233ee947387.md) | 13 | `declaration-track:2c1d7b687d67a233ee9473878fb7af8ef164d520bf236b10ffc5bea85d5cfc00` |
| 2 | `structure` | [TorsionFlow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/declarations/torsionflow--c1f9674478c8252fbcae78a1.md) | 19 | `declaration-track:c1f9674478c8252fbcae78a19986bafeed6625bfee2880e1352f063a56b862bf` |
| 3 | `theorem` | [torsion_flow_euler_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/declarations/torsion-flow-euler-invariant--32028ccbeb3b04f00011cebf.md) | 23 | `result-track:32028ccbeb3b04f00011cebf9fbae60291ea9b109f42d366c025056f2e1d9f06` |
| 4 | `theorem` | [torsion_flow_mass_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/declarations/torsion-flow-mass-monotone--218cee7bf0cc736f0dc49762.md) | 33 | `result-track:218cee7bf0cc736f0dc4976291e99d6a6a632aae5c02cf85cb5be86ec170de51` |
| 5 | `theorem` | [torsion_flow_step_composition_mass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionFlow/Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e.lean/declarations/torsion-flow-step-composition-mass--9ec9fdb1cef0c14177642fec.md) | 39 | `result-track:9ec9fdb1cef0c14177642fecf1c43df5806a50f84050ac030e07fb2c157e5fbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
