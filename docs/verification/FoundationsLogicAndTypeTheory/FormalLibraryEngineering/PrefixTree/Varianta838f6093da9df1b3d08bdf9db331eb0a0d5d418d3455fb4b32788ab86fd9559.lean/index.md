# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrefixTree.Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c9deec1088c2f08a0e456c471d6e289e1a65b28",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c9deec1088c2f08a0e456c471d6e289e1a65b28`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrefixTreeNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtreenode--4cb48186ad8cd668f6a9f5ec.md) | 16 | `declaration-track:4cb48186ad8cd668f6a9f5ec68f8132962e288d41d06c938259b5bb313b19ee4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/instance--4c9bc1d14e1d68f37878e7b8.md) | 19 | `declaration-track:4c9bc1d14e1d68f37878e7b8eb9e85d1f40ed6054a6eaf7bbc1c1782b3cc7ab0` |
| 3 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/empty--cc826194e2925c82f493373d.md) | 24 | `declaration-track:cc826194e2925c82f493373d381fa129176a98f543ab452bb8158e3116cbb9ed` |
| 4 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/insert--e496c03bfe802cac8012aeff.md) | 28 | `declaration-track:e496c03bfe802cac8012aeff60dc2cc1a3908f845c4bbdcec180022a83ba42a3` |
| 5 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/find--2fed5f266099629e4510d21d.md) | 46 | `declaration-track:2fed5f266099629e4510d21decd99fe1a87c764a56764864786ae861339d959e` |
| 6 | `def` | [findLongestPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/findlongestprefix--c946b7c955ee65a561d53f83.md) | 57 | `declaration-track:c946b7c955ee65a561d53f830ad034ccd909c171c39632377f0ab52f1a9a7e6d` |
| 7 | `def` | [foldMatchingM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/foldmatchingm--8e5b55c7a496e4dd30072c07.md) | 67 | `declaration-track:8e5b55c7a496e4dd30072c0700f340760b2e84826fae8b4f5059553470289d63` |
| 8 | `inductive` | [WellFormed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/wellformed--3f805ac90abc3d770025cbb1.md) | 82 | `declaration-track:3f805ac90abc3d770025cbb17d8b22eee1250ef1ded6f6bcfa57e82c9baa36a6` |
| 9 | `def` | [PrefixTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree--6bc24f58da6a046f8f44ace6.md) | 88 | `declaration-track:6bc24f58da6a046f8f44ace6931f1d398a8a938797e1dddb1317edcca8a7402c` |
| 10 | `def` | [PrefixTree.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-empty--43faf15f793c62f42fae9954.md) | 93 | `declaration-track:43faf15f793c62f42fae9954b7936cea47b56b605c28b78dacfc5dcceecd58f5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/instance--6b4382ce43b83e79f2f73737.md) | 96 | `declaration-track:6b4382ce43b83e79f2f737374b57fcc25dbee1741c41cecce03b6aa0d629dfd1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/instance--d4f13a732f2c99035011f26f.md) | 99 | `declaration-track:d4f13a732f2c99035011f26fc3be74b0cc2e7559fe253e68a871baea4d73ce97` |
| 13 | `def` | [PrefixTree.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-insert--7a0f70d7baf9dee2a7c5f160.md) | 103 | `declaration-track:7a0f70d7baf9dee2a7c5f1603734e1c521413f258f14c11a4c3943d0b86ec268` |
| 14 | `def` | [PrefixTree.find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-find--a7bcda34acc46bdc1df263cd.md) | 107 | `declaration-track:a7bcda34acc46bdc1df263cdc2be97d87701b06208880eba5354ca2adfda7776` |
| 15 | `def` | [PrefixTree.findLongestPrefix?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-findlongestprefix--8d1e7dd855ea608c49464790.md) | 111 | `declaration-track:8d1e7dd855ea608c494647902b9fbbffb35c077764fab0644b2e10ea4a0f46b3` |
| 16 | `def` | [PrefixTree.foldMatchingM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-foldmatchingm--8e9a9ef192f18cd2504b7194.md) | 115 | `declaration-track:8e9a9ef192f18cd2504b71944e9614d1adfe6b26c1a73362ff603b478943cdde` |
| 17 | `def` | [PrefixTree.foldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-foldm--1c04bb3562dc9ed8db7d7917.md) | 119 | `declaration-track:1c04bb3562dc9ed8db7d79173a515fa1e3dbfcb466923110e25c23171db44d0d` |
| 18 | `def` | [PrefixTree.forMatchingM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-formatchingm--58e4cb2838b15300a77c24ec.md) | 123 | `declaration-track:58e4cb2838b15300a77c24ec8f7f8747baa3b08502d5db0660631ffa60be03b1` |
| 19 | `def` | [PrefixTree.forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/declarations/prefixtree-form--ea2a8d3fe8ecf3804ab02389.md) | 127 | `declaration-track:ea2a8d3fe8ecf3804ab02389f7180af8974a55a7b1506496b52bf3c101eac289` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
