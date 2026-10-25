# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSimp.Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52bf569939d8d84eba767df1161fd8d2433a0f39",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52bf569939d8d84eba767df1161fd8d2433a0f39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.DischargerAsTactic` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/initialize--b4054d3d2df1ce2b09e5ae68.md) | 26 | `declaration-track:b4054d3d2df1ce2b09e5ae68a90a894741ac4ad252b856abeec82dbff89f4038` |
| 2 | `def` | [dischargerTraceMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/dischargertracemessage--4a25f0169346a602cb6afbe5.md) | 29 | `declaration-track:4a25f0169346a602cb6afbe53feb16088b4357427324efb43a7c5d51d3f75a1c` |
| 3 | `def` | [discharge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/discharge--8d1eff575e33af9a9e8e3abc.md) | 37 | `declaration-track:8d1eff575e33af9a9e8e3abc0258824e1acff7df23713ada1ea0a2d068571467` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/elab--b237556a798d19e415f81fee.md) | 87 | `declaration-track:b237556a798d19e415f81fee1e2d59624ffae7ad77e539add979b902be019fee` |
| 5 | `def` | [fieldSimpExcluded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/fieldsimpexcluded--b6eaea3f9952cb595a961164.md) | 95 | `declaration-track:b6eaea3f9952cb595a961164f3aefdcf2a227f3fa1d39204fd62b4ba50ae5c74` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/syntax--368c77cd009c687648643e4e.md) | 169 | `declaration-track:368c77cd009c687648643e4e2fb346ae8abf0cbdd9b36b012e7983977eeca74d` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variant0aba984ef5fe1c69a23f747507896102f9de74cd8a068e0db1a787a780a5ca13.lean/declarations/elab-rules--b664b55d3eb3d9e7d4d29304.md) | 172 | `declaration-track:b664b55d3eb3d9e7d4d29304f168910869cd8f7da95d903bc9547391fd13836d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
