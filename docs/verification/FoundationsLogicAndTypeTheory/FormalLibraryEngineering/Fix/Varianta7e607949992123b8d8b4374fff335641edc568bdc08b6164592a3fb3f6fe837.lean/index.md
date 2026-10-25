# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b60353e8ab020d8f5f1d48a5cdf83fe17b94961c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b60353e8ab020d8f5f1d48a5cdf83fe17b94961c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Part` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Upto` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/fix--1e3422b89947b755780b21d3.md) | 40 | `declaration-track:1e3422b89947b755780b21d319e5ca036d10bca40c8cd83e8eaf39459bed932f` |
| 2 | `def` | [Fix.approx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/fix-approx--f8f4602715ac179ef8308945.md) | 54 | `declaration-track:f8f4602715ac179ef8308945ff51f8912590004dd9b86643bc7987ee2a06b0a8` |
| 3 | `def` | [fixAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/fixaux--25ce1f19b366725b285226d7.md) | 59 | `declaration-track:25ce1f19b366725b285226d77b71ceb229f19f1e6d3f86a962c31eecfe31a493` |
| 4 | `def` | [fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/fix--fdc26fc37576d03d47b6bc4d.md) | 71 | `declaration-track:fdc26fc37576d03d47b6bc4d814dbb064346c607e85569fd174fb34226671d8c` |
| 5 | `theorem` | [fix_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/fix-def--62a844da149b8af5546ba128.md) | 76 | `result-track:62a844da149b8af5546ba12830f8529e36304a89e2f7717c1ac9849e98298df8` |
| 6 | `theorem` | [fix_def'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/fix-def--b400a994568fcdadaef2f9a9.md) | 112 | `result-track:b400a994568fcdadaef2f9a985793b2350ba6cff3ce0c2394ba27021573b14d9` |
| 7 | `instance` | [hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/hasfix--1622a3b41fea34ecb0e13654.md) | 122 | `declaration-track:1622a3b41fea34ecb0e136543e9e7cac5a980d08b5c42e9b2e3153ed61294f23` |
| 8 | `instance` | [Part.hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837.lean/declarations/part-hasfix--a4e18f04f29c8a515b60663d.md) | 131 | `declaration-track:a4e18f04f29c8a515b60663d9b22d2b86badb6f84825ae999d958c62d10a577a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
