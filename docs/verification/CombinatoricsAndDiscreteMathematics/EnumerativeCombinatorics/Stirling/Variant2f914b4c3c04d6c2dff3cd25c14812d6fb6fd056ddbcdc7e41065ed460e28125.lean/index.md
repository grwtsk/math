# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Stirling.Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20cf8e9dc074acb4d60f49ef10d660b3ffd9c459",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20cf8e9dc074acb4d60f49ef10d660b3ffd9c459`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean.json)

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
| 1 | `def` | [stirlingSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq--5c4043e8d37f595b083a5e22.md) | 63 | `declaration-track:5c4043e8d37f595b083a5e22a9b3c1a14aec3805d75e19cc39d31468810275e1` |
| 2 | `theorem` | [stirlingSeq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-zero--d507c284f081e60ba185aefb.md) | 67 | `result-track:d507c284f081e60ba185aefb14f747a0be19c921d284451472bb37d62c6bd028` |
| 3 | `theorem` | [stirlingSeq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-one--7305cd024850ca40376a073b.md) | 71 | `result-track:7305cd024850ca40376a073b8a5ad510c677017a84305000883e9aa44f5544a2` |
| 4 | `theorem` | [log_stirlingSeq_formula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-formula--93199a0e01149f2d54220358.md) | 74 | `result-track:93199a0e01149f2d5422035809c4853d5acff937de7bf4bd1db43a5efbff3133` |
| 5 | `theorem` | [log_stirlingSeq_sdiff_hasSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-sdiff-hassum--c7f0408004bf60dac8cb7a7d.md) | 83 | `result-track:c7f0408004bf60dac8cb7a7d569cdc64b114cf708ac93ccc342f276f3b44f263` |
| 6 | `theorem` | [log_stirlingSeq'_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-antitone--c8404950147bea46bd57f035.md) | 104 | `result-track:c8404950147bea46bd57f03586ac62d7db73d81147fd681c9445027e8a8aa454` |
| 7 | `theorem` | [log_stirlingSeq_sdiff_le_geo_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-sdiff-le-geo-sum--516083bcc4d8fecbd065c8b0.md) | 110 | `result-track:516083bcc4d8fecbd065c8b0980bad609effb9f00448785dd3a6430a002b138b` |
| 8 | `theorem` | [log_stirlingSeq_sdiff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-sdiff-le--6db2cfed2b70c125ab18476f.md) | 133 | `result-track:6db2cfed2b70c125ab18476f9d537f684571cfba665207b8d43dee5a9a24846a` |
| 9 | `theorem` | [log_stirlingSeq_sub_log_stirlingSeq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-sub-log-stirlingseq-succ--b782f94fb8275847dd2bf056.md) | 151 | `result-track:b782f94fb8275847dd2bf0561dc750e00b4fd6adf7ba68f2f1b61165e7fe4799` |
| 10 | `theorem` | [log_stirlingSeq_bounded_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-bounded-aux--80f9e049e38cde3a6cd4080d.md) | 157 | `result-track:80f9e049e38cde3a6cd4080dd01afadc8d1f582a65ac0074ca11832871ab1db0` |
| 11 | `theorem` | [log_stirlingSeq_bounded_by_constant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/log-stirlingseq-bounded-by-constant--e0bf18ea307dab7de8284ef5.md) | 172 | `result-track:e0bf18ea307dab7de8284ef5a63d5cd5c688c018c2736cf5aa5be93a4c8e2f78` |
| 12 | `theorem` | [stirlingSeq'_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-pos--23e970b8d85ac74a8a22a32e.md) | 178 | `result-track:23e970b8d85ac74a8a22a32eec768acd2ee378ab7e7c7af210388f64284183af` |
| 13 | `theorem` | [stirlingSeq'_bounded_by_pos_constant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-bounded-by-pos-constant--fdfaaae107ced9dacec97100.md) | 181 | `result-track:fdfaaae107ced9dacec971001ba031a9b153e47e140b5b321c316a24f7114efd` |
| 14 | `theorem` | [stirlingSeq'_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-antitone--718378de4bafdfc07834c627.md) | 189 | `result-track:718378de4bafdfc07834c627cffacd161224b285a4d74a216694ef5bda0bc918` |
| 15 | `theorem` | [stirlingSeq_has_pos_limit_a](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-has-pos-limit-a--5fcf42ba6a7794d7fe815c65.md) | 193 | `result-track:5fcf42ba6a7794d7fe815c65a1e585a656f4478ed20c072c98daf1f9911e1379` |
| 16 | `theorem` | [tendsto_self_div_two_mul_self_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/tendsto-self-div-two-mul-self-add-one--8deeb7a4bf038eb92aaa4f6f.md) | 207 | `result-track:8deeb7a4bf038eb92aaa4f6ff38444d2ced4dedcd6317be7bb8a5bb71990e42e` |
| 17 | `theorem` | [stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/stirlingseq-pow-four-div-stirlingseq-pow-two-eq--bb025c4dccbb7f342c69916f.md) | 221 | `result-track:bb025c4dccbb7f342c69916fd86ead4f3f90655ddb6eb64c2477e2d22aa6cfeb` |
| 18 | `theorem` | [second_wallis_limit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/second-wallis-limit--63db75cbc65fa28a18a7e15e.md) | 234 | `result-track:63db75cbc65fa28a18a7e15e1e8c42550995708873897b04a1091285bb23653c` |
| 19 | `theorem` | [tendsto_stirlingSeq_sqrt_pi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/tendsto-stirlingseq-sqrt-pi--f8632df9bc67852e5671a36d.md) | 246 | `result-track:f8632df9bc67852e5671a36dbb6ae40b3cc276424ad92dcbaa7a6af719f8401b` |
| 20 | `lemma` | [factorial_isEquivalent_stirling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/factorial-isequivalent-stirling--9649b94b97bfc31f0506bbee.md) | 253 | `result-track:9649b94b97bfc31f0506bbee5b8ecadd04f2957ce7b174a5dd3a0eee9a54c41f` |
| 21 | `theorem` | [sqrt_pi_le_stirlingSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/sqrt-pi-le-stirlingseq--e13dbfcc36148c3f19f04702.md) | 268 | `result-track:e13dbfcc36148c3f19f047026463daa1bc14cd73edc5e94d1846d1a978eb2717` |
| 22 | `theorem` | [le_factorial_stirling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/le-factorial-stirling--7f989a29ff5e10c5d41cb048.md) | 283 | `result-track:7f989a29ff5e10c5d41cb048acb4a5b49716722220b3d7213154dde11ca553db` |
| 23 | `theorem` | [le_log_factorial_stirling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant2f914b4c3c04d6c2dff3cd25c14812d6fb6fd056ddbcdc7e41065ed460e28125.lean/declarations/le-log-factorial-stirling--2b28338ea3a8d567366f2e0b.md) | 300 | `result-track:2b28338ea3a8d567366f2e0b25a888c44b6e76123be5bc09e19f74caa0f985a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
