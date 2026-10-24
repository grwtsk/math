# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Stirling.Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f43e6c6eedbfed7b4d6f20d63bc74c60ce810d50",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f43e6c6eedbfed7b4d6f20d63bc74c60ce810d50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean.json)

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
| 1 | `def` | [stirlingSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq--616d03162ab04d8309bbb341.md) | 55 | `declaration-track:616d03162ab04d8309bbb341ad8ed96be2ff8ea40a84008dccb0a1038adf039c` |
| 2 | `theorem` | [stirlingSeq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-zero--731081c71182f5eb32a95bb3.md) | 59 | `result-track:731081c71182f5eb32a95bb35c4f816d068e8002651031894c61c5cf2508ca05` |
| 3 | `theorem` | [stirlingSeq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-one--8034b3b73b45089c2191978f.md) | 63 | `result-track:8034b3b73b45089c2191978fab5ceb22c56d26dea7c32aaa6a867b38d03b33e6` |
| 4 | `theorem` | [log_stirlingSeq_formula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-formula--53fff11dfeb8c58d57faf0f2.md) | 66 | `result-track:53fff11dfeb8c58d57faf0f21f34707ce5b4725a76697c7fc0797d4a2fd308f5` |
| 5 | `theorem` | [log_stirlingSeq_sdiff_hasSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-sdiff-hassum--58557b902c2d239e987bf74e.md) | 75 | `result-track:58557b902c2d239e987bf74e5281b17551bc6b8b69b6e25d882fb9b4cb5e119d` |
| 6 | `theorem` | [log_stirlingSeq'_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-antitone--b575a5909d13332f5d87c004.md) | 96 | `result-track:b575a5909d13332f5d87c004a39fb380afcd7df2b6357b397b6339bf3f74600d` |
| 7 | `theorem` | [log_stirlingSeq_sdiff_le_geo_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-sdiff-le-geo-sum--5a982cf939f66200669c49fb.md) | 102 | `result-track:5a982cf939f66200669c49fb07a423c0b75a8840a954a92e24b355722953e7ce` |
| 8 | `theorem` | [log_stirlingSeq_sdiff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-sdiff-le--cbd213ec3815393e95e6ca04.md) | 125 | `result-track:cbd213ec3815393e95e6ca04c8dc9672e0e9112c6ee931b5646e2e7d96ab6531` |
| 9 | `theorem` | [log_stirlingSeq_sub_log_stirlingSeq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-sub-log-stirlingseq-succ--7fdeaa18381c975dc22844ac.md) | 143 | `result-track:7fdeaa18381c975dc22844ac3214bfb3aaf5b1fcdf130817224afb962c9f340c` |
| 10 | `theorem` | [log_stirlingSeq_bounded_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-bounded-aux--d8da67782b61938b11638bb6.md) | 149 | `result-track:d8da67782b61938b11638bb6e16facea154cca79ef795d687834a96f363d41ba` |
| 11 | `theorem` | [log_stirlingSeq_bounded_by_constant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/log-stirlingseq-bounded-by-constant--dd7d8161ec2905e095fb3900.md) | 164 | `result-track:dd7d8161ec2905e095fb39006006648b3dacf1125da2e5a0f7ad0eaf1773b271` |
| 12 | `theorem` | [stirlingSeq'_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-pos--4b15583207e13d2b4f757d7e.md) | 170 | `result-track:4b15583207e13d2b4f757d7ee7226a138ac200a52057b05bfdb8a20e625ea35b` |
| 13 | `theorem` | [stirlingSeq'_bounded_by_pos_constant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-bounded-by-pos-constant--d69d5be5976d663eb1491fc2.md) | 173 | `result-track:d69d5be5976d663eb1491fc24959181842c9d634554f2b787fedc073d94fea4e` |
| 14 | `theorem` | [stirlingSeq'_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-antitone--e3796098bd2f57599cb8fdb0.md) | 181 | `result-track:e3796098bd2f57599cb8fdb07d73b88a9d0cafaf0a259d8b1191c09cccb26429` |
| 15 | `theorem` | [stirlingSeq_has_pos_limit_a](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-has-pos-limit-a--556d8a3e738b9191ee151bf0.md) | 185 | `result-track:556d8a3e738b9191ee151bf0d257904e6ed999fae4ce2e0b546b6bead9af01fd` |
| 16 | `theorem` | [tendsto_self_div_two_mul_self_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/tendsto-self-div-two-mul-self-add-one--0f2d970e09b52f11a992ac4e.md) | 199 | `result-track:0f2d970e09b52f11a992ac4ea0b9009148ef1857dd1a90623244eb8020931787` |
| 17 | `theorem` | [stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/stirlingseq-pow-four-div-stirlingseq-pow-two-eq--4187c5d0b803ed849910ca49.md) | 213 | `result-track:4187c5d0b803ed849910ca494caa049ff4049e1162f980eaf9cc8fe5d3a2ba7d` |
| 18 | `theorem` | [second_wallis_limit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/second-wallis-limit--8c781cc21962035d8ec7f910.md) | 226 | `result-track:8c781cc21962035d8ec7f910532256bd821770157ae4a209155db1e7c67e47ea` |
| 19 | `theorem` | [tendsto_stirlingSeq_sqrt_pi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/tendsto-stirlingseq-sqrt-pi--fa0c8cfedc93fda1e461d801.md) | 238 | `result-track:fa0c8cfedc93fda1e461d8012ed7d3a0903f3edbe8fc5afbb6d87beab3ceb9aa` |
| 20 | `lemma` | [factorial_isEquivalent_stirling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/factorial-isequivalent-stirling--7a7f5668df29dee1b3e38a38.md) | 245 | `result-track:7a7f5668df29dee1b3e38a38398c7baf006dcb67d00b5e5c665228296c3a48ac` |
| 21 | `theorem` | [sqrt_pi_le_stirlingSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/sqrt-pi-le-stirlingseq--e2a5e795a304ed70fe3263ff.md) | 260 | `result-track:e2a5e795a304ed70fe3263ff0c6e1e3294f99ff2f76320d5a2247629675ea143` |
| 22 | `theorem` | [le_factorial_stirling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/le-factorial-stirling--27ee91e13a3b7e958a07d6f4.md) | 275 | `result-track:27ee91e13a3b7e958a07d6f42f869591707356fa4f0643c78f3407cd18ab51be` |
| 23 | `theorem` | [le_log_factorial_stirling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Stirling/Variant4661f756bc81433432a04e5251df79842054544ff3b90238a4720ec6c6fb6f81.lean/declarations/le-log-factorial-stirling--c2b26b56945ad9ca5295baa8.md) | 292 | `result-track:c2b26b56945ad9ca5295baa8713c493c711754a946819f5deff0449fc70e90ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
