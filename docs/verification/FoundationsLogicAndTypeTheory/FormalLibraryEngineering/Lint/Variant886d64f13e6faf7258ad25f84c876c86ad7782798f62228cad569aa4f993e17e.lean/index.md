# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f08305186716589ebd6c1f2181e9647d006be01e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f08305186716589ebd6c1f2181e9647d006be01e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Lint` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Config` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/builtin-initialize--ca98432c5d58757364b3825b.md) | 22 | `declaration-track:ca98432c5d58757364b3825be40a4374964f70951b09cdbc5b81814671e04881` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/builtin-initialize--45c97d38bda82efc94cbe983.md) | 28 | `declaration-track:45c97d38bda82efc94cbe98363deeeffc2ea7b23d72b32c6a1791b3a013f873b` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/builtin-initialize--d88efe0b59cc33abf828bb4a.md) | 34 | `declaration-track:d88efe0b59cc33abf828bb4a3a828d097634bf1b7fb6ef209e693d0faf80a1fd` |
| 4 | `def` | [checkEMatchTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/checkematchtheorem--e0bb453dc458e591e2d4c57b.md) | 42 | `declaration-track:e0bb453dc458e591e2d4c57bffadaec9c298e2f5fc921e338ea048878726959c` |
| 5 | `def` | [elabGrindLintSkip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/elabgrindlintskip--06099286d5c05267760f6cda.md) | 47 | `declaration-track:06099286d5c05267760f6cda98015b75e651050ce1af67c8aecc1e6c08192844` |
| 6 | `def` | [elabGrindLintMute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/elabgrindlintmute--72ab00d16594374f61413f11.md) | 67 | `declaration-track:72ab00d16594374f61413f112148f7215a39ad6bd99854805f558ecbeb2b7755` |
| 7 | `def` | [defaultConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/defaultconfig--c1835c55d8ca9a5d14f27346.md) | 80 | `declaration-track:c1835c55d8ca9a5d14f273460665032b1da1e049673bb0e722bfdaf14111b68b` |
| 8 | `def` | [mkConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/mkconfig--1714540fc1052c483c67a3df.md) | 91 | `declaration-track:1714540fc1052c483c67a3df91da3b1099dfb897fccae6dd2e682b0e8848026a` |
| 9 | `def` | [mkParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/mkparams--616594bdea1428bd8b6613a2.md) | 94 | `declaration-track:616594bdea1428bd8b6613a2579d3fe6408f3b876de41de65f721c712f70fa46` |
| 10 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/sum--c6a265f55640f9f7381b0f09.md) | 105 | `declaration-track:c6a265f55640f9f7381b0f096271bc70b7ab93f93b028904267eb3aa3a5b490c` |
| 11 | `def` | [thmsToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/thmstomessagedata--3568bcec9df4f91e14ea7b1c.md) | 111 | `declaration-track:3568bcec9df4f91e14ea7b1cf387c8bec787ff19d8642c76f4969d9c53044f19` |
| 12 | `def` | [analyzeEMatchTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/analyzeematchtheorem--6734c7c8e9af27c345ffff15.md) | 126 | `declaration-track:6734c7c8e9af27c345ffff157524a07d5961707687f80a82d1414e2c7ac60f6a` |
| 13 | `def` | [elabGrindLintInspect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/elabgrindlintinspect--ac2719862892d94d5b95ae59.md) | 145 | `declaration-track:ac2719862892d94d5b95ae5954df4dfa92bdd7d649bf1c8f88e37dca4da8114e` |
| 14 | `def` | [nameEndsWithSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/nameendswithsuffix--60e7f8cb1760fc8ec58f3946.md) | 162 | `declaration-track:60e7f8cb1760fc8ec58f3946a30975500c9baade500b2e97d61c1c6b6aa4d544` |
| 15 | `def` | [getTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/gettheorems--3e57bfd6c1362a8f8d6cf789.md) | 167 | `declaration-track:3e57bfd6c1362a8f8d6cf78971985ead344b0c7e2bcdf9a24c67eaca20da7af3` |
| 16 | `def` | [elabGrindLintCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/declarations/elabgrindlintcheck--b461e4999873f25a95f59857.md) | 195 | `declaration-track:b461e4999873f25a95f59857eabb544d9d4820e9300235a913c7c5809aa6b008` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
