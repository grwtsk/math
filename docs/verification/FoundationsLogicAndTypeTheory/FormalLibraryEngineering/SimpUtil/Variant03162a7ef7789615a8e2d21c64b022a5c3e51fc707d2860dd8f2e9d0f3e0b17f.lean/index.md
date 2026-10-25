# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpUtil.Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "264539ea7faf06998e3580697d34e352712218a2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `264539ea7faf06998e3580697d34e352712218a2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MatchDiscrOnly` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ForallProp` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Simproc` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.BuiltinSimprocs.List` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.BuiltinSimprocs.Core` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.Norm` — import line 16; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [registerNormTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/registernormtheorems--9ede4ace62513374d4d440b9.md) | 23 | `declaration-track:9ede4ace62513374d4d440b9b489125fdc893861e0d1f055d3a729e4458c02a8` |
| 2 | `def` | [isBoolEqTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/isbooleqtarget--326c9586ec8540b1ec725a97.md) | 33 | `declaration-track:326c9586ec8540b1ec725a97d4a2705e7f88603e9525e8c83f5aad72b30a72df` |
| 3 | `def` | [getSimprocs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/getsimprocs--d951a32da54319b22529ccd0.md) | 144 | `declaration-track:d951a32da54319b22529ccd02eeced628403727cb060cf0f7dddd94e48751295` |
| 4 | `def` | [addDeclToUnfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/adddecltounfold--fd558d780c9c1050ef0c116e.md) | 173 | `declaration-track:fd558d780c9c1050ef0c116e6fe7876aea7dc30b90fbf31b03416c6843fbff7e` |
| 5 | `def` | [getNormTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/getnormtheorems--7548d7a27aa68a79ff37dab5.md) | 179 | `declaration-track:7548d7a27aa68a79ff37dab5b94e3465a8a71e659b9660e0db9279b74c7aeded` |
| 6 | `def` | [getSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/getsimpcontext--030a730eae37db5adc4825c6.md) | 189 | `declaration-track:030a730eae37db5adc4825c6196078a66560bff19d0246b0b5fe5081817fc2b4` |
| 7 | `def` | [normalizeImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/declarations/normalizeimp--1959c27a6afce970971b9e21.md) | 207 | `declaration-track:1959c27a6afce970971b9e21f900c46e656ebad790357178b1beae10dd969f92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
