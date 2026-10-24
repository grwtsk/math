# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Disjointed.Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70041177151e71083bc9fd97214104f523b60724",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70041177151e71083bc9fd97214104f523b60724`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.PartialSups` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed--5bbcc499b81d58acfe020239.md) | 63 | `declaration-track:5bbcc499b81d58acfe0202392e66b26551e56952c58b8faaa76eb3f9651b2777` |
| 2 | `lemma` | [disjointed_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-apply--c597f9e844698bef10dd1ba8.md) | 65 | `result-track:c597f9e844698bef10dd1ba8a182a1dfb10a4d39ba20e7cbbeef576cd62a2c33` |
| 3 | `lemma` | [disjointed_of_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-of-ismin--6135678bf53b2c054ed03acb.md) | 67 | `result-track:6135678bf53b2c054ed03acb550eb841762155b939c6318b733ddd1e6da85cc1` |
| 4 | `lemma` | [disjointed_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-bot--46d4600a53d58ebf4b8a9c0c.md) | 72 | `result-track:46d4600a53d58ebf4b8a9c0ceb80e246abbaf00b66986459b45a3fbcbc95dbb8` |
| 5 | `theorem` | [disjointed_le_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-le-id--1b4458cb0cbca19a79b072df.md) | 75 | `result-track:1b4458cb0cbca19a79b072df7e4271d35ca72b6605acba5086de8d2f1417c51d` |
| 6 | `theorem` | [disjointed_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-le--1f40f1f77688f61b3cf35df1.md) | 78 | `result-track:1f40f1f77688f61b3cf35df1d58782ec7bb561592a535ef36f65442bca5d07b4` |
| 7 | `theorem` | [disjoint_disjointed_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjoint-disjointed-of-lt--ac09b23331f8905ccb7e1524.md) | 81 | `result-track:ac09b23331f8905ccb7e15247f41409842275acbb3a195437712159fe9beca35` |
| 8 | `lemma` | [disjointed_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-eq-self--590cbf859db2ddf33b763312.md) | 85 | `result-track:590cbf859db2ddf33b763312a5f271807eda817a4b3b4aaec03a6ea3f14f3b69` |
| 9 | `lemma` | [disjointedRec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointedrec--6d2633055ead5b7022a53da5.md) | 98 | `result-track:6d2633055ead5b7022a53da522020cf638b64c621842bda4637aa9fa30a0eddb` |
| 10 | `theorem` | [partialSups_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/partialsups-disjointed--088291e29a8d05e953506b9b.md) | 118 | `result-track:088291e29a8d05e953506b9b18e702f4b9c48f6bda4cbfc49e7c8fbd4df4fe44` |
| 11 | `lemma` | [Fintype.sup_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/fintype-sup-disjointed--6acd04a4013aa817ef186cc7.md) | 157 | `result-track:6acd04a4013aa817ef186cc71f38b172112c134cd6b20e36d89c6fff1018c5d3` |
| 12 | `lemma` | [disjointed_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-partialsups--3c1a785f243f2411f5511866.md) | 166 | `result-track:3c1a785f243f2411f5511866d861858d6a8a901259e89cef0af9679e07cf6698` |
| 13 | `theorem` | [disjointed_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-unique--76e9097c587c79ac9bc34f35.md) | 182 | `result-track:76e9097c587c79ac9bc34f35205e9a5dec5071accc672cf3fec12a1bf25ac0de` |
| 14 | `theorem` | [disjoint_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjoint-disjointed--ad25cffd3d4ca9d40e05a17d.md) | 198 | `result-track:ad25cffd3d4ca9d40e05a17dc656ef09c57ab107b63d6c93341985b2f95a343f` |
| 15 | `theorem` | [disjointed_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-unique--44ff9f50ffb854eed5df1993.md) | 203 | `result-track:44ff9f50ffb854eed5df1993fd8044b53132e475e54bb0f56d05d115b60f6725` |
| 16 | `lemma` | [disjointed_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-succ--d0571543212741063519a55e.md) | 211 | `result-track:d0571543212741063519a55e28cd36904fbadbc4448830f8d23393187a196da6` |
| 17 | `lemma` | [Monotone.disjointed_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/monotone-disjointed-succ--f7334ed64b4b8157cd6324f4.md) | 217 | `result-track:f7334ed64b4b8157cd6324f4f7cdf0db9cb1bbb4a1d0472a1a2a1f681d562d37` |
| 18 | `lemma` | [Monotone.disjointed_succ_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/monotone-disjointed-succ-sup--3cff395c9069951b6fa30aa8.md) | 222 | `result-track:3cff395c9069951b6fa30aa865368b1101168752b635daa02c58d7937f820cf4` |
| 19 | `lemma` | [Fintype.exists_disjointed_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/fintype-exists-disjointed-le--0928ee8f17438bb17a7ef0ac.md) | 244 | `result-track:0928ee8f17438bb17a7ef0acd25c7fb1674b589ec69857fac4aa8d55f3932038` |
| 20 | `theorem` | [iSup_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/isup-disjointed--55a217a65d5c9a46cfd2b121.md) | 266 | `result-track:55a217a65d5c9a46cfd2b1214c4ab6af9ba026d128fbef354cf452eeb384572e` |
| 21 | `theorem` | [disjointed_eq_inf_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-eq-inf-compl--887a4664014da53c57a5bd93.md) | 270 | `result-track:887a4664014da53c57a5bd9369a7a22c2e2869af82ebff61a1da6d9094b07ab5` |
| 22 | `theorem` | [disjointed_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-subset--e0a373b4a160cd82095cd5ea.md) | 280 | `result-track:e0a373b4a160cd82095cd5ea027940c7c2a24f06190b703f0596df2954f49723` |
| 23 | `theorem` | [iUnion_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/iunion-disjointed--f576e6232a2d0beb26c469c5.md) | 284 | `result-track:f576e6232a2d0beb26c469c540fdd49952517e0aa00645cf4da8d1a99d85a21b` |
| 24 | `theorem` | [disjointed_eq_inter_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-eq-inter-compl--5370991486f18afb141a0efa.md) | 288 | `result-track:5370991486f18afb141a0efab0c6df7c668d8dd7de2ef0fb0c4f526c6831de94` |
| 25 | `theorem` | [preimage_find_eq_disjointed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/preimage-find-eq-disjointed--d3906c109432d804a393855c.md) | 292 | `result-track:d3906c109432d804a393855c7512a82e14dec783b37a3d590ef10a3179074474` |
| 26 | `theorem` | [disjointed_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/declarations/disjointed-zero--2743328873403fee2922f50d.md) | 310 | `result-track:2743328873403fee2922f50d701960fad61b814141a6e3387b4f97c5b7afacb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
