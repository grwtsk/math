# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a60db6c5512b1ce697bdbff8a1145a821fdf54d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a60db6c5512b1ce697bdbff8a1145a821fdf54d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Induction` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getAltNumFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean/declarations/getaltnumfields--3e40df1d1e714baf14709d47.md) | 40 | `declaration-track:3e40df1d1e714baf14709d479e39a39c308e0790efc9c60e579279c820574bbe` |
| 2 | `def` | [ElimApp.evalNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean/declarations/elimapp-evalnames--d6dfde13f14cfcacc15d975b.md) | 46 | `declaration-track:d6dfde13f14cfcacc15d975bded81f39611fa073d54c5c2fdc5ca9c6dea2a8ff` |
| 3 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean/declarations/elab--0f5e75789ccef3698937dd6f.md) | 94 | `declaration-track:0f5e75789ccef3698937dd6fef1c5b44d9cea302df706a1baa00ad6b1460ed8c` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantfe4aed8b9c14277fba9831fcabbe8943752e7a19eb44aaf798b082d8a9fbc0b3.lean/declarations/elab--e7416b8d01f0970a231a94cf.md) | 149 | `declaration-track:e7416b8d01f0970a231a94cf2d4eeeb17c5f78bf9b87cc35fe1625246b2dab99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
