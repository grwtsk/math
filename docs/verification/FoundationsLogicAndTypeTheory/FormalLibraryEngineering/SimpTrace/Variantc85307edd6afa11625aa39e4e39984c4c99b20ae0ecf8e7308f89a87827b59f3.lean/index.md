# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1496fdea11a9820dd5aa1f7d9e3df04fedf8602d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1496fdea11a9820dd5aa1f7d9e3df04fedf8602d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ElabRules` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.Parser` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.TryThis` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/syntax--474e3103a30c54f02a343172.md) | 20 | `declaration-track:474e3103a30c54f02a343172076203bbdd91542230a6ba6f42557c9a616c1e61` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/syntax--2b14a6ae0f8c33614cde07e3.md) | 33 | `declaration-track:2b14a6ae0f8c33614cde07e3b3ddf98c38b8dff47542b5144e0060d5e102a3b9` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/macro--252a249ecd3dec40945af1a6.md) | 36 | `declaration-track:252a249ecd3dec40945af1a69cae157dd8076c2d2dd677e6d702edafe32d86f4` |
| 4 | `def` | [mkSimpCallStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/mksimpcallstx--8d9f48cfe3850dd8f240e03f.md) | 41 | `declaration-track:8d9f48cfe3850dd8f240e03f0542da3703fa103d71a8c9f685f4fc814afd7aff` |
| 5 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/elab-rules--580b5fab52409ccb7ceff3ae.md) | 78 | `declaration-track:580b5fab52409ccb7ceff3aeffb83fa7473bbd627a54a07c56e67a18c1a6427b` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/syntax--183d096ffa0c49b977382d6e.md) | 92 | `declaration-track:183d096ffa0c49b977382d6e2ff0e50c1c6ddef260f1dda497141651fa0f8b5c` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/syntax--0823dce894665b9f625afe78.md) | 95 | `declaration-track:0823dce894665b9f625afe7810ad43fb2431c6cea829c6ce3ab1512fa1793036` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/macro--2513a85fa20a983cf1952482.md) | 98 | `declaration-track:2513a85fa20a983cf19524827f1c1f4622c59345eb39ddeb4a62fbb2da388e5b` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/elab-rules--4ae67a5a728fa6b0408091f2.md) | 100 | `declaration-track:4ae67a5a728fa6b0408091f2200677609a69f98545cdbb8090e3138a0090f21e` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/syntax--be726554fd24680ddae2d0f5.md) | 116 | `declaration-track:be726554fd24680ddae2d0f531eed105b970947981d3c6981ce3b5571717aafc` |
| 11 | `def` | [dsimpLocation'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/dsimplocation--b5802eb43008ab260831aa68.md) | 120 | `declaration-track:b5802eb43008ab260831aa68dce550e37a5d94eeccb5d93fd2f70d6414f5bfdc` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/syntax--bb3714dd532d4dd35800e2fd.md) | 141 | `declaration-track:bb3714dd532d4dd35800e2fd18a342e0921541bd7387f5e7b215e68bf6636438` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/macro--4b201bb55f7517eedf5e7ac9.md) | 144 | `declaration-track:4b201bb55f7517eedf5e7ac9a0f3acd555561c531bc54579ea3380e22f33930e` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantc85307edd6afa11625aa39e4e39984c4c99b20ae0ecf8e7308f89a87827b59f3.lean/declarations/elab-rules--78cde64b6412deabd9fee939.md) | 146 | `declaration-track:78cde64b6412deabd9fee939eeab462d55f7c552854d93c341583ecb7c642b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
