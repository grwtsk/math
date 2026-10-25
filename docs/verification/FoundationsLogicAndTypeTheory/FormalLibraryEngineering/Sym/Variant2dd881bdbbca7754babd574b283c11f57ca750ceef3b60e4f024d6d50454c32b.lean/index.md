# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sym.Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11a26871c88b0afb4e35e9315ea5644cfb9a4e0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11a26871c88b0afb4e35e9315ea5644cfb9a4e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.SimprocDSL` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Grind` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Variant` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Rewrite` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.EvalGround` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Goal` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Attr` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.ControlFlow` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Forall` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Location` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalIntroCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalintrocore--11d02ea765bcf02fb27b23d6.md) | 32 | `declaration-track:11d02ea765bcf02fb27b23d697024f2f50bb597967b898558a95489f387d9e17` |
| 2 | `def` | [evalSymIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsymintro--34481fb017830cfa62171308.md) | 51 | `declaration-track:34481fb017830cfa6217130879bd50b21c203d19ff37f7eb784b1149aee6c2b2` |
| 3 | `def` | [evalIntrosCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalintroscore--d9b863334da603d2e8b7cfdd.md) | 59 | `declaration-track:d9b863334da603d2e8b7cfdda32d0310a5b0e4a4781c22dd786595e5b87297c1` |
| 4 | `def` | [evalSymIntros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsymintros--fd7a296976435b7029578b1e.md) | 69 | `declaration-track:fd7a296976435b7029578b1e69680cb7cb80ec3fdc43b450c1e6f2b194ccd345` |
| 5 | `def` | [getOrCreateBackwardRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/getorcreatebackwardrule--3885e2a549df8fe0c0efe880.md) | 77 | `declaration-track:3885e2a549df8fe0c0efe880d2cbbe8d93676a4dc1f26c9e2dd0b96cc47bff88` |
| 6 | `def` | [getOrCreateBackwardRuleFromTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/getorcreatebackwardrulefromterm--3314153ab253a121b7001a61.md) | 85 | `declaration-track:3314153ab253a121b7001a61e6a339965de8a502b41397f982948586f57e30a8` |
| 7 | `def` | [evalSymApply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsymapply--8148d0c3f357dffc9e8861a6.md) | 99 | `declaration-track:8148d0c3f357dffc9e8861a6738c2a787c48a9f1134c96ac8a02238085214c57` |
| 8 | `def` | [evalSymInternalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsyminternalize--13b82444372f59c4179eafb5.md) | 118 | `declaration-track:13b82444372f59c4179eafb5ccf3053ed4de1f75e3f35cd08e0ce92b75a8aa24` |
| 9 | `def` | [evalSymInternalizeAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsyminternalizeall--d3c3c12f3b6bfaf19b88f7d4.md) | 125 | `declaration-track:d3c3c12f3b6bfaf19b88f7d48863eb6c6eba3e23440e8015f6e927b658df5da6` |
| 10 | `def` | [evalSymByContra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsymbycontra--55f271b69d0f300a58a06640.md) | 131 | `declaration-track:55f271b69d0f300a58a06640d34f6c0e3a1096bc48354ce413659a39f90e6b83` |
| 11 | `def` | [trivialSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/trivialsimproc--3a89fc554bfc145686293aa1.md) | 151 | `declaration-track:3a89fc554bfc145686293aa18289f9c70ee9b319420ac229d58ec6da60044fad` |
| 12 | `def` | [elabOptSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/elaboptsimproc--1b092f672468673d3d0ec110.md) | 154 | `declaration-track:1b092f672468673d3d0ec110a5b60d226adb965817e2789e3ea50e8129844e72` |
| 13 | `def` | [resolveExtraTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/resolveextratheorems--9d3b6dd1f2e7e341b2e98ea4.md) | 158 | `declaration-track:9d3b6dd1f2e7e341b2e98ea4e3950806f694dfec9717e8fe00e49fef1a3f5e75` |
| 14 | `def` | [addExtraTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/addextratheorems--f86cf23cfc9791e50664f706.md) | 173 | `declaration-track:f86cf23cfc9791e50664f7066ffbfb5478ccaeb2e077b4772419c107d3a869e1` |
| 15 | `def` | [mkSimpDefaultMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/mksimpdefaultmethods--a151c4e34dbdfb0cf231d137.md) | 180 | `declaration-track:a151c4e34dbdfb0cf231d137c7768ad71cf40e566eebea37c7546ae6045c411d` |
| 16 | `def` | [elabSimpVariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/elabsimpvariant--4500617f9e7f103ac9f9dbb4.md) | 186 | `declaration-track:4500617f9e7f103ac9f9dbb44de4ee2fc65e3673c4d1b8c238e3481ee819a849` |
| 17 | `def` | [evalSymSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/declarations/evalsymsimp--11a42067563eb105b81cff82.md) | 195 | `declaration-track:11a42067563eb105b81cff829878ce28393b9f15aaede76403e591076a653b66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
