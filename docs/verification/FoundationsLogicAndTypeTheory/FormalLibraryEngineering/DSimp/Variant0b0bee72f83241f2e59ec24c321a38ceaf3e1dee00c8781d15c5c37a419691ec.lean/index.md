# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimp.Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652f040e0391a0454a3fd05c570efa0d4ad2f990",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652f040e0391a0454a3fd05c570efa0d4ad2f990`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.DSimprocDSL` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.Variant` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.Reduce` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.DSimproc` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabDSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/elabdsimpargs--6da9c486fe255b8caf7a7516.md) | 25 | `declaration-track:6da9c486fe255b8caf7a75169bc08e87710aea710b0cf75af81b704b12d348aa` |
| 2 | `def` | [addDSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/adddsimpargs--af99970a97f7bcca9f6df83d.md) | 43 | `declaration-track:af99970a97f7bcca9f6df83db6edf47c9780eee60f5230e684fd51da4d34591f` |
| 3 | `def` | [mkDSimpDefaultMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/mkdsimpdefaultmethods--8f85d7351d176cfe9e150b76.md) | 51 | `declaration-track:8f85d7351d176cfe9e150b76aeb950ac661044ea7757fa093b69cf1e7a1196f0` |
| 4 | `def` | [trivialDSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/trivialdsimproc--fff2119cd71996f62d80df41.md) | 57 | `declaration-track:fff2119cd71996f62d80df413935f3f1965a2c6f33a3dd25786261644fbf1604` |
| 5 | `def` | [elabOptDSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/elaboptdsimproc--66ca1aaa2e820e68f2aa54e6.md) | 60 | `declaration-track:66ca1aaa2e820e68f2aa54e6ec602879d835f586b0945dd60ac5f1b4fff865ad` |
| 6 | `def` | [elabDSimpVariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/elabdsimpvariant--7b845bccdaf94c24da4124db.md) | 64 | `declaration-track:7b845bccdaf94c24da4124dbe9d7b07c7f5d4b911c4d05e2c5cd59133eb3eab5` |
| 7 | `def` | [evalSymDSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec.lean/declarations/evalsymdsimp--baf15394f7b21ea10cf21714.md) | 73 | `declaration-track:baf15394f7b21ea10cf217141c71bbcc524b7636e35aed30c2e1398d57b06165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
