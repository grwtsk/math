# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditiveCombination.Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a113458bae2522bc2ffd9450be68e1033d7fe9a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a113458bae2522bc2ffd9450be68e1033d7fe9a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombinationPrime` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_smul_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/pf-smul-c--a2a27544a879a11b22962c3c.md) | 40 | `result-track:a2a27544a879a11b22962c3cb876735860fbaa6fe8262b22f94a0574e7b542c5` |
| 2 | `theorem` | [c_smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/c-smul-pf--27a66cba0de8d378e7d35379.md) | 41 | `result-track:27a66cba0de8d378e7d353790bcc461fe36c332485ad4526e3450a06a91b672d` |
| 3 | `theorem` | [smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/smul-pf--7bb9804399737ddac12bd81a.md) | 42 | `result-track:7bb9804399737ddac12bd81ab3f0a4d0004462183f589e6fafcc86d527ea16e8` |
| 4 | `def` | [expandAdditiveCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/expandadditivecombo--ec441ec5b937e4a4f2b6bcd2.md) | 53 | `declaration-track:ec441ec5b937e4a4f2b6bcd26927447b9d3d5d7e6b36cc8adc3914a84ec95da8` |
| 5 | `def` | [elabAdditiveCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/elabadditivecombination--18312d24eccbd2d0c5f4e512.md) | 94 | `declaration-track:18312d24eccbd2d0c5f4e5128a415ea7e3e2fc3689dbba1c1a6e6b72d8dcfbd1` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/syntax--47efc544ce6402d544b79c09.md) | 179 | `declaration-track:47efc544ce6402d544b79c0900498874735c8c420274075ef6282e7aa3e2f905` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant8791924b05d97f5947e3254fc8b5abacaece4de61c3e111ad53d8913b0ef745e.lean/declarations/elab-rules--2d41f326b39f6d362d246c6e.md) | 181 | `declaration-track:2d41f326b39f6d362d246c6e6d11c9573d2e50f8b5fb42487e7d86ad089252c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
