# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30127776db289f8acfe314500ae87c88e416db21",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30127776db289f8acfe314500ae87c88e416db21`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkAppNTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mkappnterm--401891eb4373a92b0f34b357.md) | 44 | `declaration-track:401891eb4373a92b0f34b3574c97c02acbae38a110493524396e442fe956062a` |
| 2 | `def` | [updateIndType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/updateindtype--f0f146a211a5c6b9904f6164.md) | 48 | `declaration-track:f0f146a211a5c6b9904f6164079439b96e24b3a5e7d621ce60bed4a11d12a044` |
| 3 | `def` | [mkToTypeExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mktotypeexpr--c03e4cd11faded3a8010335b.md) | 58 | `declaration-track:c03e4cd11faded3a8010335bb459388eac65aea5338e7b350c49920bc1fc2218` |
| 4 | `def` | [mkToExprBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mktoexprbody--63d492da4e9fc79d11071f55.md) | 76 | `declaration-track:63d492da4e9fc79d11071f55adf6b321c7a398e2b2d5fdac0e940afe189add64` |
| 5 | `def` | [mkLocalInstanceLetDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mklocalinstanceletdecls--3ecbc1789d794e6880448f62.md) | 127 | `declaration-track:3ecbc1789d794e6880448f62ec92331ee6530a0d77ab80052d4e42a4a7084d9a` |
| 6 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mkauxfunction--c0f5eccf18a4c6f7ab623dbc.md) | 154 | `declaration-track:c0f5eccf18a4c6f7ab623dbc7347fd800fedaf424016c3a8245976d145f69914` |
| 7 | `def` | [mkAuxFunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mkauxfunctions--fdda8e9cb6a71df1e45e0fdd.md) | 186 | `declaration-track:fdda8e9cb6a71df1e45e0fdd813e12e67a09fd6f12eee8e20f1d9105c22c786a` |
| 8 | `def` | [mkInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mkinstancecmds--604bab8dc581f0f50e64fea6.md) | 199 | `declaration-track:604bab8dc581f0f50e64fea678d86ce4453d1d5dd2ea284724c2b543526decc8` |
| 9 | `def` | [mkToExprInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mktoexprinstancecmds--10f283b29cc4ce16474cae08.md) | 223 | `declaration-track:10f283b29cc4ce16474cae08fc7cc6c3495c532a9c44dd56b44fa22a0e8081e1` |
| 10 | `def` | [mkToExprInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/mktoexprinstancehandler--e9afc78a39c0a78082c804d0.md) | 232 | `declaration-track:e9afc78a39c0a78082c804d0fae9e11d395b6b8a4f5e84630d0cc0ba84753f2d` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/declarations/builtin-initialize--48f9ebe6fae40144c2336b69.md) | 242 | `declaration-track:48f9ebe6fae40144c2336b69ece8e26b6c38c56c02acf276e4a316e3a4830523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
