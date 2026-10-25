# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLets.Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "416ef8d200992bd384bdede596becc9654efd992",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `416ef8d200992bd384bdede596becc9654efd992`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.MVarId.extractLetsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/declarations/lean-mvarid-extractletsat--6228703f2ef0202530e287e2.md) | 20 | `declaration-track:6228703f2ef0202530e287e208dbd09e418489692f6a5fd44231ebce7ca64a5c` |
| 2 | `def` | [Lean.Expr.letDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/declarations/lean-expr-letdepth--0dbc7e5ddb2fafb719d66c3f.md) | 49 | `declaration-track:0dbc7e5ddb2fafb719d66c3fdcd3c73bee95a4a48b226069704628ff04c48964` |
| 3 | `def` | [Lean.MVarId.extractLets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/declarations/lean-mvarid-extractlets--f0a7aeee6664aad6cd6366d7.md) | 55 | `declaration-track:f0a7aeee6664aad6cd6366d7f7dcf4a1cbfe2971c37d558cf07168991e91a0bf` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/declarations/syntax--13b81c1dd6490daf256b68ba.md) | 78 | `declaration-track:13b81c1dd6490daf256b68ba435ca3f5b455fa81096c2904290dd47cd1b969ca` |
| 5 | `def` | [evalExtractLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/declarations/evalextractlet--8bb7926952e05dce8131103e.md) | 80 | `declaration-track:8bb7926952e05dce8131103e9202b121385f29ab0685cdd48d48139342df45f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
