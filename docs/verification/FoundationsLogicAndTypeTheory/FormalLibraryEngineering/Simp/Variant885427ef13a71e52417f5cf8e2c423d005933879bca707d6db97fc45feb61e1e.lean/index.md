# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11e59be52fb4cdb57d15dfdb5fdae6dd82842be0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11e59be52fb4cdb57d15dfdb5fdae6dd82842be0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.OpenPrivate` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimpTheoremInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/simptheoreminfo--af6302af1da46dd3f3417057.md) | 33 | `declaration-track:af6302af1da46dd3f341705772d9f3291c392bb0c929fabf8ef0a00435e1b9c4` |
| 2 | `def` | [isConditionalHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/isconditionalhyps--7690e75627b10be25b3137c9.md) | 44 | `declaration-track:7690e75627b10be25b3137c907509ca21fcdaa9c3e4ae14466f8d1e5d734b275` |
| 3 | `def` | [withSimpTheoremInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/withsimptheoreminfos--43090209ffbb03da1044663d.md) | 57 | `declaration-track:43090209ffbb03da1044663d2ac6ac8ab477a90cd793d705aa078d7d3362c936` |
| 4 | `def` | [isSimpEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/issimpeq--01e58ed0875899efc443022e.md) | 68 | `declaration-track:01e58ed0875899efc443022e0f2131730e7840550f01fedc9a7e9187726c3f3e` |
| 5 | `def` | [checkAllSimpTheoremInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/checkallsimptheoreminfos--27ccdce3c0f8f1a4bfe275cc.md) | 75 | `declaration-track:27ccdce3c0f8f1a4bfe275cce70af927ae4924dca2978859388c8377b89e8679` |
| 6 | `def` | [isSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/issimptheorem--b3f739b14d3a7f600b6a56a9.md) | 84 | `declaration-track:b3f739b14d3a7f600b6a56a97e25c488ac059ac1021bf0755ad6a35e7df2a31a` |
| 7 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheoremInfo.Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.Lean.Meta.DiscrTree.elements](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-simpt--ce90db592cd23c4ad5a72d7e.md) | 89 | `declaration-track:ce90db592cd23c4ad5a72d7e980a0d7cb560680a80cda4b0cb3342cb9855c8ef` |
| 8 | `def` | [decorateError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/decorateerror--975e19cf29f6fd327af9089a.md) | 100 | `declaration-track:975e19cf29f6fd327af9089a5e046fa9e9788b852c8a86724e6d71cc4a310cf1` |
| 9 | `def` | [formatLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/formatlemmas--e6931194fa40ef16f207643f.md) | 104 | `declaration-track:e6931194fa40ef16f207643f55c4f9d730307f5c75f1c62ab1f909af4acfe338` |
| 10 | `def` | [simpNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/simpnf--30a481fd228bae9f61b4cfc8.md) | 114 | `declaration-track:30a481fd228bae9f61b4cfc8e5233b14622bdbd45d7b50596d43b276404753a9` |
| 11 | `def` | [simpVarHead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/simpvarhead--71735f60fec47627af4647f3.md) | 205 | `declaration-track:71735f60fec47627af4647f3478bc5f09b34220118620874c29581d6ebd5cd16` |
| 12 | `def` | [Expr.eqOrIff?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/expr-eqoriff--4271e8614be702832835eafc.md) | 218 | `declaration-track:4271e8614be702832835eafc4550447de85c933ea50baede9f7187753d2e1ea4` |
| 13 | `def` | [simpComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/declarations/simpcomm--c3c1cd642f951ea75ae805f1.md) | 225 | `declaration-track:c3c1cd642f951ea75ae805f1b67a8d33ad17f853c70e072427daa7cdb79c37ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
