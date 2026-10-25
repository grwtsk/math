# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSimp.Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ba80fc275f1636ba5b7c7fafe9210c9c53901ae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ba80fc275f1636ba5b7c7fafe9210c9c53901ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Util.DischargerAsTactic` — import line 17; external provider; requires a separately pinned dependency.
- `Qq` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/initialize--10f77fb55e42325de3360cb5.md) | 34 | `declaration-track:10f77fb55e42325de3360cb548a1e9664a489af484e8d8b641d1b7c593b70c7c` |
| 2 | `def` | [dischargerTraceMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/dischargertracemessage--226791d9cb42598a46ead9e3.md) | 37 | `declaration-track:226791d9cb42598a46ead9e3af2189f5241e19c0d9eb5bdd25bbac9e3de4aa52` |
| 3 | `def` | [discharge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/discharge--32332509c2d5f4166302fec1.md) | 45 | `declaration-track:32332509c2d5f4166302fec141dad7d4443ca2a1f149e55e07d4644c906da6d6` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/elab--fcab8f930478d8c1d5374908.md) | 95 | `declaration-track:fcab8f930478d8c1d5374908164f16d37a71de81ff52197c12f4d1989279f3ee` |
| 5 | `def` | [fieldSimpExcluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/fieldsimpexcluded--063643607f420294fba92a0a.md) | 103 | `declaration-track:063643607f420294fba92a0ac94375abbaecff04422a10ef87956ee6a534c78b` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/syntax--aebdece49d4391f3816cb4b0.md) | 177 | `declaration-track:aebdece49d4391f3816cb4b01ec89cb2fb28c7a3ca2797f14dd5601debcf0ef7` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant386fcfba7598cda729cc837d8e0cb537d1d1e9131a2cbc4e03165e86f224a3d7.lean/declarations/elab-rules--6da82356aeccc238abe4750c.md) | 180 | `declaration-track:6da82356aeccc238abe4750ce9ecbf7d599a442c630c3d8b897072dd5316da0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
