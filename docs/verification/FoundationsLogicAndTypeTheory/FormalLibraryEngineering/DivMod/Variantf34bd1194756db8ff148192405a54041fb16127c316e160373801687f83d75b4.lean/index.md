# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DivMod.Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "898f68707aa16854689916e289d4ab5c057b3923",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `898f68707aa16854689916e289d4ab5c057b3923`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isInt_ediv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-ediv-zero--48d13482c7eb8cd690dd15c2.md) | 31 | `result-track:48d13482c7eb8cd690dd15c2f9a30ab8c10fbf9f4a2511cbe6b5c9f2c22c0bd3` |
| 2 | `lemma` | [isInt_ediv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-ediv--a463ba26a1e9f0fd795f4537.md) | 34 | `result-track:a463ba26a1e9f0fd795f4537ac09fea5757ddf6c30585f5a77d5c74869144525` |
| 3 | `lemma` | [isInt_ediv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-ediv-neg--af48fb1d3166aecbc090116e.md) | 43 | `result-track:af48fb1d3166aecbc090116e99843abb851dbc64a8ac8b2a4643f6c43f3c54db` |
| 4 | `lemma` | [isNat_neg_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isnat-neg-of-isnegnat--ee6d7dbaeaa4cfba75ef83e5.md) | 46 | `result-track:ee6d7dbaeaa4cfba75ef83e561c0a160669aa770d3a9fff864829b4702785c53` |
| 5 | `def` | [evalIntDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/evalintdiv--6f1ae0db11cd1a8f0023e649.md) | 53 | `declaration-track:6f1ae0db11cd1a8f0023e6495e8a6c1377e485417a3a84412dd00487a068eba8` |
| 6 | `lemma` | [isInt_emod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-emod-zero--61fffb4921c782dfe9823ade.md) | 94 | `result-track:61fffb4921c782dfe9823ade61c4a4e94cd771e5f481513102e5dc214415686b` |
| 7 | `lemma` | [isInt_emod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-emod--aa725c30522c975a96988429.md) | 97 | `result-track:aa725c30522c975a96988429b769a7dfe498c9372a367a3e6fb742d8d84bcc05` |
| 8 | `lemma` | [isInt_emod_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-emod-neg--c8576847861fe67f925c3db2.md) | 105 | `result-track:c8576847861fe67f925c3db27955ef9e3eaa2b91cbf2dfdad38ba1df50b8881e` |
| 9 | `def` | [evalIntMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/evalintmod--2ab440c573b9208fd4dd0cb3.md) | 112 | `declaration-track:2ab440c573b9208fd4dd0cb32fb9343ab8c9f62992e0756b310be33578524b4f` |
| 10 | `theorem` | [isInt_dvd_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-dvd-true--e1b047365d06294da91639fb.md) | 155 | `result-track:e1b047365d06294da91639fb83cb55e0ea46158a9062cb43d746e1ea28c8a71a` |
| 11 | `theorem` | [isInt_dvd_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/isint-dvd-false--7837de6322f8a4da230abf43.md) | 159 | `result-track:7837de6322f8a4da230abf43e311f7cf508b1c67760737a53b411447415bcd82` |
| 12 | `def` | [evalIntDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variantf34bd1194756db8ff148192405a54041fb16127c316e160373801687f83d75b4.lean/declarations/evalintdvd--73af1adcf2dec4d720132285.md) | 166 | `declaration-track:73af1adcf2dec4d7201322853fcc40556d7999a334041bef608a7b69a731849f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
