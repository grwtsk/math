# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02f42741c26073df55f9f8ff486fa07f0e69e9f3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02f42741c26073df55f9f8ff486fa07f0e69e9f3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Control.Combinators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.map_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/functor-map-map--6a97c26dca62fa80a903f448.md) | 32 | `result-track:6a97c26dca62fa80a903f448442c1c73cd04e480858b384de50f52e531bc77f9` |
| 2 | `def` | [zipWithM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/zipwithm--59ec157b2dc983c4993a427b.md) | 47 | `declaration-track:59ec157b2dc983c4993a427bd7632c3569f09d56bdbca5482ef60489df0508dc` |
| 3 | `def` | [zipWithM'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/zipwithm--69135d48b8574cbceecb2058.md) | 53 | `declaration-track:69135d48b8574cbceecb205842e4ca4676af89ed082356bb629a2c98aac2e987` |
| 4 | `theorem` | [pure_id'_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/pure-id-seq--8b361fb564aa73e3f5ab605c.md) | 62 | `result-track:8b361fb564aa73e3f5ab605cd606204b30ac2ce7dbea5ddcaaf059835e66b217` |
| 5 | `theorem` | [seq_map_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/seq-map-assoc--e60b27e8df6b930fe24a9ce0.md) | 67 | `result-track:e60b27e8df6b930fe24a9ce01d66874a7733cd0fffb8cee6ae4e0e0f0fd5b81c` |
| 6 | `theorem` | [map_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/map-seq--19b73069e557b7fec6718c20.md) | 75 | `result-track:19b73069e557b7fec6718c20f663f859b3df4578822819731936e29698d47a80` |
| 7 | `def` | [List.partitionM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/list-partitionm--9bfd8be69bb0708fcc744ac8.md) | 90 | `declaration-track:9bfd8be69bb0708fcc744ac8db25cf88d3f31a5b476b99e36295087e422cfe12` |
| 8 | `theorem` | [map_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/map-bind--07d38fdc99ae7fde99342fa6.md) | 98 | `result-track:07d38fdc99ae7fde99342fa66654197adb6a495575e4292cc7f94a3c68c20323` |
| 9 | `theorem` | [seq_bind_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/seq-bind-eq--371ce1de13caaca5e5e0ab1f.md) | 103 | `result-track:371ce1de13caaca5e5e0ab1f323d796dfddf28079d3591d2778da9be90d6c73a` |
| 10 | `theorem` | [fish_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/fish-pure--a8c89879cba0b75f0c6a12f0.md) | 113 | `result-track:a8c89879cba0b75f0c6a12f0170bdeb2b36b017e2842ab26d6f76de3c61ba06f` |
| 11 | `theorem` | [fish_pipe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/fish-pipe--8701f62d9eeb4ed71939aa7a.md) | 117 | `result-track:8701f62d9eeb4ed71939aa7ae3008a315a7c9854774182e9b7eaf972b1e4982a` |
| 12 | `theorem` | [fish_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/fish-assoc--1ca646028fa7d395eb6a446d.md) | 122 | `result-track:1ca646028fa7d395eb6a446dd76408b6372d132689d931784595baec6c9e8175` |
| 13 | `def` | [List.mapAccumRM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/list-mapaccumrm--ba36075c227b1b99521a6280.md) | 133 | `declaration-track:ba36075c227b1b99521a6280d89d0882d46d1a78e7d49dedb425326b7ccf1ea3` |
| 14 | `def` | [List.mapAccumLM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/list-mapaccumlm--d9569dc849da91c5b5d27b35.md) | 143 | `declaration-track:d9569dc849da91c5b5d27b3535a6fed53c750f65df7fdf17dff9d32d1de99269` |
| 15 | `theorem` | [joinM_map_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/joinm-map-map--0df31d4109f560edb9d59989.md) | 157 | `result-track:0df31d4109f560edb9d5998954b744328fca815cf5c99614b05ae50923141bbb` |
| 16 | `theorem` | [joinM_map_joinM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/joinm-map-joinm--c518fafe54f5bb4e04014c9c.md) | 162 | `result-track:c518fafe54f5bb4e04014c9cef4f72a0a9ce8fc060bfbb0143d3a32890b71ad4` |
| 17 | `theorem` | [joinM_map_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/joinm-map-pure--278736e9915b0be5a1f5519f.md) | 167 | `result-track:278736e9915b0be5a1f5519fa27f3f1b723cf2053e3933772ee230467fddf9f7` |
| 18 | `theorem` | [joinM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/joinm-pure--998eef70a925f5cfa88b3194.md) | 172 | `result-track:998eef70a925f5cfa88b3194f96c254420b201bc8c70037c43f54fc9243a4873` |
| 19 | `def` | [succeeds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/succeeds--256dfff751f3b1c568dddf9a.md) | 184 | `declaration-track:256dfff751f3b1c568dddf9a1b93659e39dc595621a41afd237b778c2e0545cc` |
| 20 | `def` | [tryM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/trym--e2381d2fc2561f891b9a9fbc.md) | 189 | `declaration-track:e2381d2fc2561f891b9a9fbc8054b0a22cf957a73ec68ce92b33bd731faf36da` |
| 21 | `def` | [try?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/try--cf93b9308d1a6bd4e8a1cc41.md) | 194 | `declaration-track:cf93b9308d1a6bd4e8a1cc417c61a88184453bd288d1e229acfd37f73f0f5421` |
| 22 | `theorem` | [guard_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/guard-true--a9ffc1e7574bffa3a0a7d6ae.md) | 198 | `result-track:a9ffc1e7574bffa3a0a7d6ae818720607cdabad3d42e5b8d4535bed3f3fcec96` |
| 23 | `theorem` | [guard_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/guard-false--8bb2f3cfbcae8a579d6610ae.md) | 202 | `result-track:8bb2f3cfbcae8a579d6610ae8885e85093918cdbd4c71118fea2a773ce044eb1` |
| 24 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/bind--013ac38e00eeeac303885918.md) | 213 | `declaration-track:013ac38e00eeeac303885918c98cce17a1e41ac0c36e1d26eb2f3b3ce47c2531` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/instance--cf3817bef1f22071ef60ed65.md) | 219 | `declaration-track:cf3817bef1f22071ef60ed65f27729cc29ab6c972f7da04ad26fd486bd5da450` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/instance--ee123781841a2531009eb808.md) | 223 | `declaration-track:ee123781841a2531009eb8088186f08a18e451180b470285637d044dfdc2445e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/instance--7a39119ca0be0448ae1d141b.md) | 226 | `declaration-track:7a39119ca0be0448ae1d141b45d0cc8a27ac27f78add8800861dd498817350bb` |
| 28 | `class` | [CommApplicative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/commapplicative--60d490a82c0698511c92f270.md) | 253 | `declaration-track:60d490a82c0698511c92f2704004c8f2d237ec4057a2392958dd60dd4c74b654` |
| 29 | `theorem` | [CommApplicative.commutative_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted41dda55112485b5178eb351bcf7bdd9f20293725f5fa11e32824c9866835c3.lean/declarations/commapplicative-commutative-map--c59eec78acd47b25f05394f6.md) | 264 | `result-track:c59eec78acd47b25f05394f63f61c45630b04a1b05d702cf4dd2b6102364941c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
