# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckYaml.Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "869d2c744466a3ba143b227df76494904d3feb94",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `869d2c744466a3ba143b227df76494904d3feb94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.SearchPath` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.CoreM` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToExpr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DBFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/declarations/dbfile--5d86985f042fa2374593e9cd.md) | 28 | `declaration-track:5d86985f042fa2374593e9cde8a2bdf00b189f6ce1b2450ba948bd3815e8d816` |
| 2 | `def` | [readJsonFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/declarations/readjsonfile--b2268d3f6553fea3a42f9465.md) | 30 | `declaration-track:b2268d3f6553fea3a42f9465380e78525866f6df5485b59df8f0632643317a7b` |
| 3 | `def` | [databases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/declarations/databases--81be6fdec3d4b8205cec81f7.md) | 34 | `declaration-track:81be6fdec3d4b8205cec81f7d74fe2b62df45926e511b387814acb165cdb19e9` |
| 4 | `def` | [processDb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/declarations/processdb--6a87c706941f5153e3e0ab61.md) | 37 | `declaration-track:6a87c706941f5153e3e0ab61f45d82b4d4e633a084a75a96342e78fb3fa88e31` |
| 5 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckYaml/Variant1bc337f8fed856b5b8e0a15bdc22e57287404676f64b23553c48b199b4f12dba.lean/declarations/main--8ec7a977920f66839cf9569f.md) | 51 | `declaration-track:8ec7a977920f66839cf9569f04481b782f2b556e6579a2bfc15eec73b303a0b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
