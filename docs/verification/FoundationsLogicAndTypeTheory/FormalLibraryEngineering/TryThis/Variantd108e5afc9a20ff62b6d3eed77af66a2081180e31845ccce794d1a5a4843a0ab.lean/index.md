# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f174a8a100015c5623c0c032494c82960e3f00d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f174a8a100015c5623c0c032494c82960e3f00d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.CodeActions` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Widget.UserWidget` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Name` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Lean.Format` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Lean.Position` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Data.Json` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tryThisWidget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/trythiswidget--cf2ee98016bf91d4d32133d6.md) | 51 | `declaration-track:cf2ee98016bf91d4d32133d67905fd49c06548eb178e487f8fb416af80a63ebb` |
| 2 | `def` | [tryThisProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/trythisprovider--12a786829ebe57ca5c8baec3.md) | 94 | `declaration-track:12a786829ebe57ca5c8baec3c6f83165f79c72c417648ae6e5b63c858940297d` |
| 3 | `def` | [getIndentAndColumn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/getindentandcolumn--8a8fd9c7984cb34bff62e921.md) | 122 | `declaration-track:8a8fd9c7984cb34bff62e921d62880957a1f7d1aa31d23f3d2c89c35a2c4df73` |
| 4 | `def` | [replaceMVarsByUnderscores](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/replacemvarsbyunderscores--3ed935a5f52b01b0e2ea04b3.md) | 128 | `declaration-track:3ed935a5f52b01b0e2ea04b397f1174c5a278c618133fca3aeefcaa6ab965cfc` |
| 5 | `def` | [delabToRefinableSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/delabtorefinablesyntax--a06475b0f5c73b59352e8611.md) | 135 | `declaration-track:a06475b0f5c73b59352e8611285637caab339fe0413a12f04984d2c249e6ab08` |
| 6 | `def` | [inputWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/inputwidth--381b3f7bcc758d3bbe3b53e6.md) | 139 | `declaration-track:381b3f7bcc758d3bbe3b53e6ed5e5aa9de2f124717bdbfa1a6df9594c9a7634d` |
| 7 | `register_option` | [format.inputWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/format-inputwidth--ef7fe1bf439ab72cc3281558.md) | 143 | `declaration-track:ef7fe1bf439ab72cc32815588b98f491e38e25b4c7115b9fc56a4b4bb0abc3c2` |
| 8 | `def` | [getInputWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/getinputwidth--8555935ab37bf7adde867a57.md) | 149 | `declaration-track:8555935ab37bf7adde867a57562d7031f33c937df6869d97a44d4d389806353c` |
| 9 | `inductive` | [SuggestionText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestiontext--ebec1a633b6ffb7f52a3acc0.md) | 159 | `declaration-track:ebec1a633b6ffb7f52a3acc0eafba9115d6f897135b42d5aaf3bf4db126c3636` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/instance--89a56f7323524db35981da12.md) | 168 | `declaration-track:89a56f7323524db35981da128be85c96154280739950fb5a8470962856e0b0f7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/instance--d6b2dab9e3ee28a01779c79d.md) | 173 | `declaration-track:d6b2dab9e3ee28a01779c79dcdc059361c29692749e1c37e27cc9eca12b8064c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/instance--300798d401ad0d535c0f53a6.md) | 176 | `declaration-track:300798d401ad0d535c0f53a68d5ebbe6c2f82fa784cadcf2361329d17db37230` |
| 13 | `def` | [pretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/pretty--4f42e5508ae1eafda3ffbdca.md) | 183 | `declaration-track:4f42e5508ae1eafda3ffbdca481cf55a60dbfd1b52d21da4c99f93ae27252989` |
| 14 | `def` | [prettyExtra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/prettyextra--c775e5d4c97829e2d1c7af5e.md) | 192 | `declaration-track:c775e5d4c97829e2d1c7af5e9809298f6c552a592f755a2a8ab95fda711f5c61` |
| 15 | `def` | [SuggestionStyle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle--db8405e8b57e941483a62bcc.md) | 210 | `declaration-track:db8405e8b57e941483a62bccf8a76b44b88a4dd6e3a01bd4aad2128c4a89e9ce` |
| 16 | `def` | [SuggestionStyle.error](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle-error--70f86ba1aa8a21407ca976e3.md) | 214 | `declaration-track:70f86ba1aa8a21407ca976e3c801492d7536fad13e2959a5283382b1908dab5f` |
| 17 | `def` | [SuggestionStyle.warning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle-warning--4a68254f27804970784fcac1.md) | 226 | `declaration-track:4a68254f27804970784fcac113de59e148b874b7c8ea86ad8e97fe33bafba856` |
| 18 | `def` | [SuggestionStyle.success](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle-success--3b9a8889940db95e18958d50.md) | 236 | `declaration-track:3b9a8889940db95e18958d50f2c93e47fbc0d20aa41bf2e9cdd06767095c78ba` |
| 19 | `def` | [SuggestionStyle.asHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle-ashypothesis--ad25317c7318846b1be1f937.md) | 241 | `declaration-track:ad25317c7318846b1be1f937bc912285fce223ed374e55614b8879d99ec53c52` |
| 20 | `def` | [SuggestionStyle.asInaccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle-asinaccessible--18feb68feeffd641720ca297.md) | 245 | `declaration-track:18feb68feeffd641720ca297b0b83d3ae68372b1860ec470454f142a02460b60` |
| 21 | `def` | [SuggestionStyle.value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestionstyle-value--d54eed16ea18f6ffcfffe8c3.md) | 253 | `declaration-track:d54eed16ea18f6ffcfffe8c34a0e41d3ebfb60759f07ee9ad8eb0872ac29dcb8` |
| 22 | `structure` | [Suggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestion--6959cddb70d90a9a541b66ab.md) | 267 | `declaration-track:6959cddb70d90a9a541b66abf4378b48a2a2257541b6fff6b023fe1f4551d075` |
| 23 | `def` | [Suggestion.toJsonM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/suggestion-tojsonm--e6a354b19de16507edb04976.md) | 292 | `declaration-track:e6a354b19de16507edb04976ff73beafa685b80d856ff96db1a25e1f5c1db142` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/instance--a22f031b8ab817148fd5cc85.md) | 303 | `declaration-track:a22f031b8ab817148fd5cc85db921b4880881ed815178e34eac7672abe979219` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/instance--8f4d0468c5bcc6fcd9079608.md) | 306 | `declaration-track:8f4d0468c5bcc6fcd90796085026e2004737a686b0dc12829fa4f5568e8780e2` |
| 26 | `def` | [delabToRefinableSuggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/delabtorefinablesuggestion--c9341d6a4572cee957dc192b.md) | 310 | `declaration-track:c9341d6a4572cee957dc192bdc4ef4530eda09a2938b9ff311bfa5198e8acd98` |
| 27 | `def` | [addSuggestionCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addsuggestioncore--49cf9623b1f7fc96160cd7ce.md) | 317 | `declaration-track:49cf9623b1f7fc96160cd7cedb577012fb1aef3e11d3d2356525b3cdcad62df8` |
| 28 | `def` | [addSuggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addsuggestion--39e8ae9b88654fb1b8d35354.md) | 364 | `declaration-track:39e8ae9b88654fb1b8d3535454412fd0b67feb3a08dd7c386fd8d09adfc61007` |
| 29 | `def` | [addSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addsuggestions--b040d1dada1d5ad29fcb8547.md) | 394 | `declaration-track:b040d1dada1d5ad29fcb85477a48e4115faf543ad8895ea3f5494e23e41c6a3b` |
| 30 | `def` | [addExactSuggestionCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addexactsuggestioncore--433491b0fc2a208ed98533d7.md) | 403 | `declaration-track:433491b0fc2a208ed98533d7cdd174cc1cd4fbd845a1e1f93910f2e070f8c3c5` |
| 31 | `def` | [addExactSuggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addexactsuggestion--52482f48b7b9b477edc5ffd5.md) | 427 | `declaration-track:52482f48b7b9b477edc5ffd5bf75394f042d5e47fd8b6e2e210eb50174a5403d` |
| 32 | `def` | [addExactSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addexactsuggestions--c4653b5d73f2ac4405a4f14c.md) | 442 | `declaration-track:c4653b5d73f2ac4405a4f14c4d06ed17cff70d2ffbaba011bd57f80389ef786f` |
| 33 | `def` | [addTermSuggestion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addtermsuggestion--54a3b73e03db9ad991e6599e.md) | 456 | `declaration-track:54a3b73e03db9ad991e6599e48b56d331d62e60057d16049d6b65fec1a8ebb85` |
| 34 | `def` | [addTermSuggestions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantd108e5afc9a20ff62b6d3eed77af66a2081180e31845ccce794d1a5a4843a0ab.lean/declarations/addtermsuggestions--26d65b7466fa36b93adfda08.md) | 469 | `declaration-track:26d65b7466fa36b93adfda080126b1d815fee2f208c23b6084b7c8b821de8498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
