# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOG.Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad9a19bf5bfd12b172daed420320908518dc5c9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad9a19bf5bfd12b172daed420320908518dc5c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WLOGResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean/declarations/wlogresult--56f480b0e7c900f26f36eeda.md) | 26 | `declaration-track:56f480b0e7c900f26f36eeda0930a2495e6fbf67c147b29a6e0061929ee6e6d3` |
| 2 | `def` | [_root_.Lean.MVarId.wlog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean/declarations/root-lean-mvarid-wlog--51dee7b0b948c16255c3b116.md) | 64 | `declaration-track:51dee7b0b948c16255c3b116d5284d3fe67dfb5cd806d41ca2c34abf60e4b754` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean/declarations/syntax--c7e6d4d01352fc069dfc00ea.md) | 129 | `declaration-track:c7e6d4d01352fc069dfc00eae697b8fc9c9de0119ce8e9a3593b99f622e8ca17` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.lean/declarations/elab-rules--55a2d6f220999ed3cc146c9f.md) | 132 | `declaration-track:55a2d6f220999ed3cc146c9f58201966ed213ef9584e1f3835fc6ea143f4c99a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
