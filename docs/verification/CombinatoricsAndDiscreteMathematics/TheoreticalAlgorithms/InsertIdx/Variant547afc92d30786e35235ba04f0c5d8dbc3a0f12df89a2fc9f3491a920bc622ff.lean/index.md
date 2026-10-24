# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertIdx.Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9a548d36e80c139461ae2647739249a89d56f7d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9a548d36e80c139461ae2647739249a89d56f7d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sublist_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/sublist-insertidx--d27f069c05a5fadc162eb31f.md) | 31 | `result-track:d27f069c05a5fadc162eb31ffc40f2bfc186b80a2e69c4c64cb39e4ba096db6e` |
| 2 | `theorem` | [subset_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/subset-insertidx--ff4da224cedb8e2879df41b2.md) | 35 | `result-track:ff4da224cedb8e2879df41b21bb6795c25a34aa0096dcc3e32903922c586a749` |
| 3 | `theorem` | [insertIdx_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/insertidx-eraseidx--229b2a255c759e622df457c2.md) | 43 | `result-track:229b2a255c759e622df457c2b43975b7c54ad86c40544dd195ef7dd25fa4515c` |
| 4 | `theorem` | [insertIdx_eraseIdx_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/insertidx-eraseidx-getelem--809f4fc4a6063b4da77a3f44.md) | 47 | `result-track:809f4fc4a6063b4da77a3f440b7dc4da0cbf333e6d45c241aec05924e2dfa33d` |
| 5 | `theorem` | [eq_or_mem_of_mem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/eq-or-mem-of-mem-insertidx--083e83ba99becb9e97ba751a.md) | 51 | `result-track:083e83ba99becb9e97ba751a31533c36d6658d27ca4e77e28f12a66f273c0407` |
| 6 | `theorem` | [insertIdx_subset_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/insertidx-subset-cons--c526d4d59e24dc764acfb7d8.md) | 60 | `result-track:c526d4d59e24dc764acfb7d84b2b16e402a30d604bdd90dadcdd954b4f1b9fb1` |
| 7 | `theorem` | [insertIdx_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/insertidx-pmap--1767b060070b15baa6fd82c9.md) | 64 | `result-track:1767b060070b15baa6fd82c9ac8060a0308530c3c6b028b76dd8d8c2ce497bca` |
| 8 | `theorem` | [map_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/map-insertidx--62b30bc6db0eff51387cedce.md) | 72 | `result-track:62b30bc6db0eff51387cedce84c81ac7cde84beafa216cbd81d5713cb53c5a10` |
| 9 | `theorem` | [eraseIdx_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/eraseidx-pmap--e649c266b6c0e7d1348c1a55.md) | 76 | `result-track:e649c266b6c0e7d1348c1a5547e85905ca4380c5ff662e0e01200d44bde90bcd` |
| 10 | `theorem` | [eraseIdx_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/eraseidx-map--d21dab2e7a2d7859489f504e.md) | 84 | `result-track:d21dab2e7a2d7859489f504e5a60175b2c141bdee2b6eab4e89418b57d50973d` |
| 11 | `theorem` | [get_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/get-insertidx-of-lt--308ceaf390b7b94a302044cb.md) | 88 | `result-track:308ceaf390b7b94a302044cb94dfefedf0bbe3c0567ce4ce219060784ee265f0` |
| 12 | `theorem` | [get_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/get-insertidx-self--5d830ef9e0805277b9ee6e36.md) | 93 | `result-track:5d830ef9e0805277b9ee6e364422211217ba155dd80dea15ebb63aad6e54dee7` |
| 13 | `theorem` | [getElem_insertIdx_add_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/getelem-insertidx-add-succ--64bf37f61c9614cc288f18eb.md) | 99 | `result-track:64bf37f61c9614cc288f18eb349288f9fed30edb4f9c865ecb76b2e44dfdfb61` |
| 14 | `theorem` | [get_insertIdx_add_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/get-insertidx-add-succ--04a452baf44d215820dc0096.md) | 106 | `result-track:04a452baf44d215820dc0096d319761daf077b97830ac65ac24d0eb3015807c3` |
| 15 | `theorem` | [insertIdx_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant547afc92d30786e35235ba04f0c5d8dbc3a0f12df89a2fc9f3491a920bc622ff.lean/declarations/insertidx-injective--e92f251ca5899b65a603f80a.md) | 113 | `result-track:e92f251ca5899b65a603f80aee5460a54e7f3afed49e65edb0122b65011a2bb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
