# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Format.Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcbc0b47188d223e8086e903401e2bb2e70e9c2f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcbc0b47188d223e8086e903401e2bb2e70e9c2f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Format.Macro` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [formatArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatarg--8648735175bd9377a004c4bf.md) | 25 | `declaration-track:8648735175bd9377a004c4bf0c2f568dced10ca8e090e765bc54ac59a43c7e07` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--28b87fb0770d1c22b1cfe1d1.md) | 29 | `declaration-track:28b87fb0770d1c22b1cfe1d1fea1353d60d672a95026db1c618550af1c757a15` |
| 3 | `def` | [formatArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatarray--fcdfbc32b172c9896c7638a3.md) | 31 | `declaration-track:fcdfbc32b172c9896c7638a32e763e99ccceff4c4f798597cd1f87ba4e5bf21f` |
| 4 | `def` | [formatLitVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatlitval--b8faf9d8d15a37013b374a1d.md) | 34 | `declaration-track:b8faf9d8d15a37013b374a1d90c2af9005a9721c39904c37c5857558232735ff` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--783a37fb72b37bd90c9b55ef.md) | 38 | `declaration-track:783a37fb72b37bd90c9b55efde01421e8e86802ec567c19587c132d97cc13ce1` |
| 6 | `def` | [formatCtorInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatctorinfo--826f3bffa9d412e6a7957f0e.md) | 40 | `declaration-track:826f3bffa9d412e6a7957f0ed5fd793bd29b2af3c59b5cb151d7c3e5b8bfb5f8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--ffe6d724f93603fa1adcc4d0.md) | 49 | `declaration-track:ffe6d724f93603fa1adcc4d0bb69a7972597e967af80471492c663011fa41a54` |
| 8 | `def` | [formatExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatexpr--77d4e91de76492b1f4fa7fd7.md) | 51 | `declaration-track:77d4e91de76492b1f4fa7fd7be5d2c1ad87e0a4d7efa36a7bfa62de5fde2b0cd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--918aa9c9c24afda81586c1bd.md) | 66 | `declaration-track:918aa9c9c24afda81586c1bd45de698325746a6241a949bce474a626b8abd066` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--96bf8e2c1d74cf55ebc6570a.md) | 67 | `declaration-track:96bf8e2c1d74cf55ebc6570a29e6e9b263dc22e53f1d2e9984c57044f09003a3` |
| 11 | `def` | [formatIRType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatirtype--434c4f66655692ebaca14700.md) | 69 | `declaration-track:434c4f66655692ebaca147006ba7b46dcf8f6124a0a235a0ca0b24250c3ff63f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--d54083c056eaab3e7898826d.md) | 89 | `declaration-track:d54083c056eaab3e7898826df541ffef46c3886ff5835ac9ad6566296ed8bc0d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--099c430d744dd61ce4af0fd1.md) | 90 | `declaration-track:099c430d744dd61ce4af0fd11e90b37388098b1534374fdc1848a5a54726e898` |
| 14 | `def` | [formatParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatparam--579c97b960dd4723d56ee29a.md) | 92 | `declaration-track:579c97b960dd4723d56ee29a297b17d48a678c8802036c2e90d4a9fa482515f6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--d33f24451fb26bc68acb44f3.md) | 95 | `declaration-track:d33f24451fb26bc68acb44f34e93a77028cb3f827bd296787835e6601e60d326` |
| 16 | `def` | [formatAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatalt--d193693f22f267e0a418dcab.md) | 97 | `declaration-track:d193693f22f267e0a418dcabf8a7d81102659cc66956a5b4ac8a72b262996966` |
| 17 | `def` | [formatParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatparams--da7eb89712e4e2542256d5d9.md) | 101 | `declaration-track:da7eb89712e4e2542256d5d920590658b240093fcd8c6054e943a1fae5ddc307` |
| 18 | `def` | [formatFnBodyHead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatfnbodyhead--2edfb55806c7af4880f5a0a3.md) | 104 | `declaration-track:2edfb55806c7af4880f5a0a35762324076d2315ea75de3369dfa2d868630840c` |
| 19 | `def` | [formatFnBodyHead'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatfnbodyhead--fa5ac7bb9f0d8ee1805102bd.md) | 120 | `declaration-track:fa5ac7bb9f0d8ee1805102bdd46d2a7458d3cf74b8e868576a0220d163ee0daf` |
| 20 | `def` | [formatFnBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatfnbody--22984ff0fc50be85305ff291.md) | 123 | `declaration-track:22984ff0fc50be85305ff29185c549f00f00eb8fca971bcd8e1b4a78872a1aa6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--b2e8eeb9077bd239b20c88e5.md) | 140 | `declaration-track:b2e8eeb9077bd239b20c88e5db51eaf015d672cfd5cf1ac7857daa8f50745c55` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--20b616d4efa93523e7350c34.md) | 141 | `declaration-track:20b616d4efa93523e7350c34245537d090a323d30d32277af94fceb898c9898f` |
| 23 | `def` | [formatDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/formatdecl--4470a64a904c284f2ddfd607.md) | 143 | `declaration-track:4470a64a904c284f2ddfd60709be78cba258c83b520ea58c91dc0b61a2c303e7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--727f91c87e2c8429aff947c0.md) | 148 | `declaration-track:727f91c87e2c8429aff947c02033658577e53bf3345aad615262d5f1431f1fef` |
| 25 | `def` | [declToString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/decltostring--7cbd9f07ccbc97a58109fd5f.md) | 150 | `declaration-track:7cbd9f07ccbc97a58109fd5f48e91fdda85a796cb9b76a33e3191092795615c3` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variant727f590353f88dccbf69b15f3475a57e850257e4fbfc52ee68bd444d346d3cd5.lean/declarations/instance--257a7bc221591be84a908ca6.md) | 153 | `declaration-track:257a7bc221591be84a908ca672986df33d20205cab0671b5d5d43ac01db5c146` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
