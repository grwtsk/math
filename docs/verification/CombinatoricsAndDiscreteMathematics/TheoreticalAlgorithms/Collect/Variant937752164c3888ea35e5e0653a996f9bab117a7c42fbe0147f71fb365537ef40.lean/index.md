# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Collect.Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59cdf72c3dcad98e708fcfb5108320aaa6f80ce4",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59cdf72c3dcad98e708fcfb5108320aaa6f80ce4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.run_toList_mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iterm-run-tolist-mk--35c12d6d025f18ac9b362c7b.md) | 27 | `result-track:35c12d6d025f18ac9b362c7b0d076fbf0c395f77373acd379f4ff0358cc5508a` |
| 2 | `theorem` | [Iter.toArray_eq_toArray_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-toarray-eq-toarray-toiterm--abb5469619e1684328fd7c30.md) | 30 | `result-track:abb5469619e1684328fd7c3076cf2bbc216562acfb787a9e0df7d1746623c800` |
| 3 | `theorem` | [Iter.toList_eq_toList_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-eq-tolist-toiterm--2a5edc4fc8f5d29be3f7ffbe.md) | 35 | `result-track:2a5edc4fc8f5d29be3f7ffbe39a497594af291a462630811fa5a0f5e07e6c131` |
| 4 | `theorem` | [Iter.toListRev_eq_toListRev_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolistrev-eq-tolistrev-toiterm--3935d9d2c9d5fbcf418f9c15.md) | 40 | `result-track:3935d9d2c9d5fbcf418f9c15c3137667d2cb83bf086fa04ceb36f2238870f050` |
| 5 | `theorem` | [Iter.toArray_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-toarray-ensuretermination--a226327e1ce3f0474416a5a2.md) | 46 | `result-track:a226327e1ce3f0474416a5a2f4e5cb3de69ebf0a027322dd839633d22d7512e0` |
| 6 | `theorem` | [Iter.toList_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-ensuretermination--251e5537bb97a60de5200412.md) | 52 | `result-track:251e5537bb97a60de52004129c6be6e5f44d567a758215e47f4662b4b9b2161b` |
| 7 | `theorem` | [Iter.toListRev_ensureTermination_eq_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolistrev-ensuretermination-eq-tolistrev--03403af92eabbbe0464d4bfb.md) | 58 | `result-track:03403af92eabbbe0464d4bfbf26bcae0818714e3a33d6875be83069f825d7479` |
| 8 | `theorem` | [IterM.toArray_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iterm-toarray-toiter--41eb212eecd0d7d1130fbeae.md) | 63 | `result-track:41eb212eecd0d7d1130fbeaed07a3de75c8b99d19297521b0c0db03b18562b4a` |
| 9 | `theorem` | [IterM.toList_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iterm-tolist-toiter--400667ec629b50d2a65c6f3c.md) | 69 | `result-track:400667ec629b50d2a65c6f3c0f35007f09091c736e42e4efa602c79cb8900e47` |
| 10 | `theorem` | [IterM.toListRev_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iterm-tolistrev-toiter--4022b45f5d223959d3b871cf.md) | 75 | `result-track:4022b45f5d223959d3b871cf30f30034cb811ea9dc32ba4239ff9d0a6069bedd` |
| 11 | `theorem` | [Iter.toList_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-toarray--a04b8dfd866d607b2da9ff2c.md) | 81 | `result-track:a04b8dfd866d607b2da9ff2cd386a1d05cf6c2d27e627e1c0b8ab55232667255` |
| 12 | `theorem` | [Iter.toList_toArray_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-toarray-ensuretermination--741f87e87baeb3f27e1fe6b9.md) | 86 | `result-track:741f87e87baeb3f27e1fe6b9581cfa6ea19943b691c489858b88822d663bccc6` |
| 13 | `theorem` | [Iter.toArray_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-toarray-tolist--014dfbe66b13fb67fd013745.md) | 92 | `result-track:014dfbe66b13fb67fd01374573213730e8cffb88e4112870a45dbcce406ab31d` |
| 14 | `theorem` | [Iter.toArray_toList_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-toarray-tolist-ensuretermination--9f8479e1175af71efd354c14.md) | 97 | `result-track:9f8479e1175af71efd354c144f6a858d3f6388283bee2ce587fe7852279c8743` |
| 15 | `theorem` | [Iter.reverse_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-reverse-tolistrev--2cbb0b9a9f9fd6dece5eb1b4.md) | 103 | `result-track:2cbb0b9a9f9fd6dece5eb1b4d08c129f150b2f6a3861d013c80d804844d14537` |
| 16 | `theorem` | [Iter.reverse_toListRev_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-reverse-tolistrev-ensuretermination--84ed7e21f5f586130bdf3fa2.md) | 108 | `result-track:84ed7e21f5f586130bdf3fa27c55bd5f9546b4c6e59ef9f815f8bc58ab74d511` |
| 17 | `theorem` | [Iter.toListRev_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolistrev-eq--e763be3f23b6f2251553ec65.md) | 114 | `result-track:e763be3f23b6f2251553ec652554f5e6298f45663febfddb75cafa6ebceb08ba` |
| 18 | `theorem` | [Iter.toListRev_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolistrev-ensuretermination--4d0e9461a15e91ec1141378b.md) | 119 | `result-track:4d0e9461a15e91ec1141378bd5fca2c4ec52d4f6ab0a61c388c87ff336e482f6` |
| 19 | `theorem` | [Iter.toArray_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-toarray-eq-match-step--d1434b6b8d98e36da824271c.md) | 124 | `result-track:d1434b6b8d98e36da824271c68e4ec20166fb73e9ef48eed4d66c3148092216c` |
| 20 | `theorem` | [Iter.toArray_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-toarray-ensuretermination-eq-match-step--8225b3e108985cb698bbe1f7.md) | 135 | `result-track:8225b3e108985cb698bbe1f79dd81146aa084bf30639948ba6b2b704fcae1a9d` |
| 21 | `theorem` | [Iter.toList_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-eq-match-step--9f04d49525394eb249317fe4.md) | 143 | `result-track:9f04d49525394eb249317fe4a6f3289903bec0b78134a9ebdc6d3e385774e11e` |
| 22 | `theorem` | [Iter.toList_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-ensuretermination-eq-match-step--050e273f069b0eb69c4ab61f.md) | 152 | `result-track:050e273f069b0eb69c4ab61ff63807a0971dce9f0a849b38d6b75f522e3b2b04` |
| 23 | `theorem` | [Iter.toListRev_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolistrev-eq-match-step--ba93f69fa12ed93cb4d11c6e.md) | 160 | `result-track:ba93f69fa12ed93cb4d11c6e3e154ab63601f62ea2165d9c0bcfe3052815e153` |
| 24 | `theorem` | [Iter.toListRev_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolistrev-ensuretermination-eq-match-step--cd94cf1d5423bd079fe2d5db.md) | 169 | `result-track:cd94cf1d5423bd079fe2d5db45189da2c53178df07eb7fc11a89f78aead887f6` |
| 25 | `theorem` | [Iter.getElem?_toList_eq_atIdxSlow?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-getelem-tolist-eq-atidxslow--64f442a416db5ffbdcff6d18.md) | 176 | `result-track:64f442a416db5ffbdcff6d187b08e8826c679f9976ef033cb4ea8f3ab16a8deb` |
| 26 | `theorem` | [Iter.toList_eq_of_atIdxSlow?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-tolist-eq-of-atidxslow-eq--bc2e9c8694256ed20f4d17c9.md) | 190 | `result-track:bc2e9c8694256ed20f4d17c937f348dffce0b36714bb969fe3b47bc21d7cb13e` |
| 27 | `theorem` | [Iter.isPlausibleIndirectOutput_of_mem_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-isplausibleindirectoutput-of-mem-tolist--81d1c2187c353b2aaae9dd1c.md) | 198 | `result-track:81d1c2187c353b2aaae9dd1ce771387dc3c55ea3169d5cd8c24a67e884a455e1` |
| 28 | `theorem` | [Iter.isPlausibleIndirectOutput_of_mem_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-isplausibleindirectoutput-of-mem-tolistrev--1586a13d85c124643eac2f13.md) | 221 | `result-track:1586a13d85c124643eac2f13c1256041363f2bd2d5b68189501e55451eedc094` |
| 29 | `theorem` | [Iter.isPlausibleIndirectOutput_of_mem_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40.lean/declarations/iter-isplausibleindirectoutput-of-mem-toarray--f795ad507da9e7865498aaea.md) | 229 | `result-track:f795ad507da9e7865498aaea1e59ad113b64026783f2a2c18e6f7e2947ed4683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
