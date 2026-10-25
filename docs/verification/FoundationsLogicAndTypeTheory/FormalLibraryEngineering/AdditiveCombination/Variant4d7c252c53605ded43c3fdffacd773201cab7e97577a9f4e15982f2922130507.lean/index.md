# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditiveCombination.Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cabdd32a2b5b5022e4bc98f7bada190048a70cbe",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cabdd32a2b5b5022e4bc98f7bada190048a70cbe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination'` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_smul_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/pf-smul-c--9ccd57bebbbe916015bf0121.md) | 40 | `result-track:9ccd57bebbbe916015bf01210fcb3d2a3a5cfdae0b8bd16d815837e8f1466046` |
| 2 | `theorem` | [c_smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/c-smul-pf--bb53c62f0fcc1d323af7ce4b.md) | 41 | `result-track:bb53c62f0fcc1d323af7ce4b7b145a59e271da8d8e58d2e4def10d78d1807c3b` |
| 3 | `theorem` | [smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/smul-pf--539e89f5d580430335d0301e.md) | 42 | `result-track:539e89f5d580430335d0301eb479295618c36cd04d77d6ccd4689dc56c33b964` |
| 4 | `def` | [expandAdditiveCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/expandadditivecombo--2b1ac6db6d9b7efd6ae35e25.md) | 53 | `declaration-track:2b1ac6db6d9b7efd6ae35e256dfba6bddd1fed5a2a4359d53013de4bbd5e356a` |
| 5 | `def` | [elabAdditiveCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/elabadditivecombination--05f633f92786b66a8be12e18.md) | 94 | `declaration-track:05f633f92786b66a8be12e18028738940fe38d9c806fe3e42d9c74c0958438b5` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/syntax--0ab939087a7b257603af2d48.md) | 179 | `declaration-track:0ab939087a7b257603af2d485914469b958a4381aba28942dbeed3159caacc28` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant4d7c252c53605ded43c3fdffacd773201cab7e97577a9f4e15982f2922130507.lean/declarations/elab-rules--9f63fe04b9ee0a5e3dba6e2d.md) | 181 | `declaration-track:9f63fe04b9ee0a5e3dba6e2d2633bbe37cc96bb5bc08bbb9cb13e7d120d3a9bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
