# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForwardPattern.Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a28781deacf7d596277cfe2836e2ead21a4a80",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a28781deacf7d596277cfe2836e2ead21a4a80`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Pred` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Memcmp` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.ByteArray.Lemmas` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [startsWith_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/startswith-iff--6bc058c6cc1d0b1b2cd74211.md) | 31 | `result-track:6bc058c6cc1d0b1b2cd74211a639336de71e94908308aab6746cd633ca6e73a7` |
| 2 | `theorem` | [skipPrefix?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipprefix-eq-some-iff--db4334c05be9d5bb58beab19.md) | 50 | `result-track:db4334c05be9d5bb58beab19e972a8e4459dccad76efbbbeae8e8b1da76eb619` |
| 3 | `theorem` | [isSome_skipPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/issome-skipprefix--0d580d68f4f50693c135a786.md) | 69 | `result-track:0d580d68f4f50693c135a786ede2c7fd5c73879abe298ffd36aa982846fe54e1` |
| 4 | `theorem` | [startsWith_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/startswith-of-isempty--72aadb45823161129d9fb5f4.md) | 72 | `result-track:72aadb45823161129d9fb5f4c51a8652fc1db3076ef76c4df2b01e231e6c905c` |
| 5 | `theorem` | [skipPrefix?_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipprefix-of-isempty--b45fb9f722fbfaf656f9ec4e.md) | 77 | `result-track:b45fb9f722fbfaf656f9ec4eb1bb373f2f7e42a8b7a2ba7897c509b9b97677dc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/instance--966f28e7d0a60bc7e04d63ea.md) | 87 | `declaration-track:966f28e7d0a60bc7e04d63ea89f341635d27d0ee363e06a14924386529e17373` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/instance--84daa2ed547ac0a386490800.md) | 99 | `declaration-track:84daa2ed547ac0a386490800b4c780a58584569aba86999f3cbd679a04dcf8e1` |
| 8 | `theorem` | [endsWith_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/endswith-iff--5af19b89e87fa31c1583fdcb.md) | 109 | `result-track:5af19b89e87fa31c1583fdcbfbf4d57c01f8a9f9118872505d77ea64fd503402` |
| 9 | `theorem` | [skipSuffix?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipsuffix-eq-some-iff--f3911567e9e023d5f062e355.md) | 131 | `result-track:f3911567e9e023d5f062e355bb92c7d46257f8593d690214023c36dfa8b2a009` |
| 10 | `theorem` | [isSome_skipSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/issome-skipsuffix--a0cf7acc38276cddfbe523a5.md) | 160 | `result-track:a0cf7acc38276cddfbe523a53d9b756a47d3cb40056214f86b7d4c6b253bdc2b` |
| 11 | `theorem` | [endsWith_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/endswith-of-isempty--878ba80ef088bf1244069717.md) | 163 | `result-track:878ba80ef088bf1244069717e3dfc9617d9d8a49640a85ebafd669cb8f310ab8` |
| 12 | `theorem` | [skipSuffix?_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipsuffix-of-isempty--b24cf7e741d485e0f5473d37.md) | 168 | `result-track:b24cf7e741d485e0f5473d37cc45369e1901b6b88d6e8bfcdbef1c55711ca65c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/instance--6fa0fa5282232500e1d0d886.md) | 178 | `declaration-track:6fa0fa5282232500e1d0d886296b0d9d76b2b7b35ddc9da8f51b55f2b756b1a0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/instance--669881368c2771076bea6043.md) | 191 | `declaration-track:669881368c2771076bea60435afa31a24f65b183da0ec4362e5a0efde15fe551` |
| 15 | `theorem` | [startsWith_string_eq_startsWith_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/startswith-string-eq-startswith-toslice--e983edf990359ae81ccb66c3.md) | 202 | `result-track:e983edf990359ae81ccb66c3374d2124139d512225f4ed3591e647252bd1a1a5` |
| 16 | `theorem` | [dropPrefix?_string_eq_dropPrefix?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/dropprefix-string-eq-dropprefix-toslice--a12205c5ef26f61b5c8b2c9a.md) | 205 | `result-track:a12205c5ef26f61b5c8b2c9a94d52dd426e47076fd73385eb0842462e2d86b06` |
| 17 | `theorem` | [dropPrefix_string_eq_dropPrefix_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/dropprefix-string-eq-dropprefix-toslice--6c5835e29efe4fd02c60323f.md) | 208 | `result-track:6c5835e29efe4fd02c60323fb81a3052b48604074c24ab5563de7f8c7b70380d` |
| 18 | `theorem` | [skipPrefix?_string_eq_skipPrefix?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipprefix-string-eq-skipprefix-toslice--880a3bb6a8202fd395fd75d9.md) | 211 | `result-track:880a3bb6a8202fd395fd75d99f64d9825af2dfe25049500d121ab8fb364b6f16` |
| 19 | `theorem` | [Pattern.ForwardPattern.skipPrefix?_string_eq_skipPrefix?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/pattern-forwardpattern-skipprefix-string-eq-skipprefix-toslice--b767a43999d894dade037362.md) | 214 | `result-track:b767a43999d894dade0373620fc2395dc33099884291650aca484d20eec7bbdc` |
| 20 | `theorem` | [Pos.skip?_string_eq_skip?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/pos-skip-string-eq-skip-toslice--38193031afd313bb901bd3d3.md) | 218 | `result-track:38193031afd313bb901bd3d3ed1e04ba75ebdaddcac01b7ed2c4edf32f24c547` |
| 21 | `theorem` | [Pos.skipWhile_string_eq_skipWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/pos-skipwhile-string-eq-skipwhile-toslice--a43e257be7591347a8072076.md) | 221 | `result-track:a43e257be7591347a807207601c278d0fd9dfc9f2b42b3c9234d99b464fb0cfd` |
| 22 | `theorem` | [skipPrefixWhile_string_eq_skipPrefixWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipprefixwhile-string-eq-skipprefixwhile-toslice--3e488247f57fc09204fc1963.md) | 235 | `result-track:3e488247f57fc09204fc1963f75445a50619dd88c8ea0086250de96cb3dcfbcf` |
| 23 | `theorem` | [dropWhile_string_eq_dropWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/dropwhile-string-eq-dropwhile-toslice--9ed183f52dcfaf860455f7b1.md) | 239 | `result-track:9ed183f52dcfaf860455f7b17c50b8d5943c5c8f10bb9d20f772ebb6c3e15a03` |
| 24 | `theorem` | [takeWhile_string_eq_takeWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/takewhile-string-eq-takewhile-toslice--eae7fa4401c2b6593b1b1fb3.md) | 243 | `result-track:eae7fa4401c2b6593b1b1fb3d3e5cc7f30688e0cb41fdcfb01782a5878bdcde6` |
| 25 | `theorem` | [all_string_eq_all_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/all-string-eq-all-toslice--4bfa1d5084bea11fa6f40290.md) | 247 | `result-track:4bfa1d5084bea11fa6f4029073206831122e265283bfd90812bc3f73f9e9b69c` |
| 26 | `theorem` | [endsWith_string_eq_endsWith_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/endswith-string-eq-endswith-toslice--a34e6d496b51ff9e3c7aff81.md) | 251 | `result-track:a34e6d496b51ff9e3c7aff81e6026f9e0c7d23b18c2da290ef99583319911481` |
| 27 | `theorem` | [skipSuffix?_string_eq_skipSuffix?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipsuffix-string-eq-skipsuffix-toslice--242b8c50380bb52d7b170adf.md) | 254 | `result-track:242b8c50380bb52d7b170adf3ce3fc18140e6511da83724269f198806c58351c` |
| 28 | `theorem` | [dropSuffix?_string_eq_dropSuffix?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/dropsuffix-string-eq-dropsuffix-toslice--6640272d858090f2ad7ec980.md) | 257 | `result-track:6640272d858090f2ad7ec980336c6cd3bfac336da5c711313e9b9ff490ac9e7c` |
| 29 | `theorem` | [dropSuffix_string_eq_dropSuffix_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/dropsuffix-string-eq-dropsuffix-toslice--667a5a399d9f1647df6465f3.md) | 260 | `result-track:667a5a399d9f1647df6465f314ac0081df75a92aac50d1fcfc91dbf3f6264b06` |
| 30 | `theorem` | [Pattern.BackwardPattern.skipSuffix?_string_eq_skipSuffix?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/pattern-backwardpattern-skipsuffix-string-eq-skipsuffix-toslice--439cb8eb4e61b75269e61650.md) | 263 | `result-track:439cb8eb4e61b75269e6165030142ac1541acb8d4ff251e2529ef60e45d5ea35` |
| 31 | `theorem` | [Pos.revSkip?_string_eq_revSkip?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/pos-revskip-string-eq-revskip-toslice--7a250f75398bf387b92e3dc5.md) | 267 | `result-track:7a250f75398bf387b92e3dc54f7ad632dcd9b4dbe5e50aa6501ca43891f28584` |
| 32 | `theorem` | [Pos.revSkipWhile_string_eq_revSkipWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/pos-revskipwhile-string-eq-revskipwhile-toslice--a18156ac9dbf9825b08f48e3.md) | 270 | `result-track:a18156ac9dbf9825b08f48e3cd62c31377f16febb6cbce366451cde70c899568` |
| 33 | `theorem` | [skipSuffixWhile_string_eq_skipSuffixWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/skipsuffixwhile-string-eq-skipsuffixwhile-toslice--b7f3df076169c8968e28956f.md) | 284 | `result-track:b7f3df076169c8968e28956f521379c5f37d2bfafa4741a362d490ec920ca31e` |
| 34 | `theorem` | [dropEndWhile_string_eq_dropEndWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/dropendwhile-string-eq-dropendwhile-toslice--261569fa05137ecd1555288f.md) | 288 | `result-track:261569fa05137ecd1555288fc3a1b935553edbfb40879a78d4a0395f5ae2a74c` |
| 35 | `theorem` | [takeEndWhile_string_eq_takeEndWhile_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/takeendwhile-string-eq-takeendwhile-toslice--143a94e1499a39660e728bc1.md) | 292 | `result-track:143a94e1499a39660e728bc1940724f90b09cd493d91907b98b3daf1b805f27f` |
| 36 | `theorem` | [revAll_string_eq_revAll_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variantc7145cde99a3dbfbe2fbf907add08a71bf9235ff0432329c54cef11642ba3614.lean/declarations/revall-string-eq-revall-toslice--4c3b3b46139438886384449e.md) | 296 | `result-track:4c3b3b46139438886384449eba08667608e18a8eeadcbaea82d0a323edb2ceb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
