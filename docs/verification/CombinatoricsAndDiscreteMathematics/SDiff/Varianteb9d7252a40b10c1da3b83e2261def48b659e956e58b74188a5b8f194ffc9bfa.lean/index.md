# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SDiff.Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b43d11e53e44056c1503b7257b8d64f2c9b6b5d0",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b43d11e53e44056c1503b7257b8d64f2c9b6b5d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/instsdiff--bd010b88e1b3cd170ed7e54c.md) | 53 | `declaration-track:bd010b88e1b3cd170ed7e54cad5e7411df01d2627a3e317e2f7a9e8cf8cf6447` |
| 2 | `theorem` | [sdiff_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-val--5bf5849d3c816a2b728672f7.md) | 57 | `result-track:5bf5849d3c816a2b728672f78d9a0f1bb3a32ec1bd51397cba4069dcc211ab67` |
| 3 | `theorem` | [mem_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/mem-sdiff--6635d130296ae0246a573a7b.md) | 61 | `result-track:6635d130296ae0246a573a7b36ffe154e20142db2387d1108b7f5f6951928e5c` |
| 4 | `theorem` | [inter_sdiff_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/inter-sdiff-self--5bf5ad2000f9802f06276dd0.md) | 65 | `result-track:5bf5ad2000f9802f06276dd02f6ccefc26110b73925d355b5649b77a4f9b833d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/instance--5a77177c9bf8b70b6088a018.md) | 69 | `declaration-track:5a77177c9bf8b70b6088a0187b3e33cbbe02e4ebf1047ad2b558c7ae94bc0b5a` |
| 6 | `theorem` | [notMem_sdiff_of_mem_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/notmem-sdiff-of-mem-right--35042a435848b4cc8f87020a.md) | 77 | `result-track:35042a435848b4cc8f87020a857543055a124a64372a17f23cdaae07f9824705` |
| 7 | `theorem` | [notMem_sdiff_of_notMem_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/notmem-sdiff-of-notmem-left--ad40d0c0e746e59f35c42197.md) | 82 | `result-track:ad40d0c0e746e59f35c4219768c6175c19706be920e6b68e66fc7084a4b1b8b3` |
| 8 | `theorem` | [union_sdiff_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-of-subset--aa88e406fac6a8ea4169ed66.md) | 87 | `result-track:aa88e406fac6a8ea4169ed666b35274f9c85bb253fb9aa6bd21b5ff81b997c91` |
| 9 | `theorem` | [sdiff_union_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-union-of-subset--08b334ecff613b75765a8fda.md) | 90 | `result-track:08b334ecff613b75765a8fdaef93ddeb1989dca42fa7953b6cf0177e8923debe` |
| 10 | `lemma` | [inter_sdiff_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/inter-sdiff-assoc--91896a130f38b0b1d72a98ba.md) | 94 | `result-track:91896a130f38b0b1d72a98ba59ac37908b9b3e049d7ad53c7d75204cf99c05f1` |
| 11 | `lemma` | [sdiff_inter_right_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-inter-right-comm--c26704fdacbc4f8c693f9638.md) | 97 | `result-track:c26704fdacbc4f8c693f9638c7156ae1a6b17923ecdbd1030f2b0e867eebb8de` |
| 12 | `lemma` | [inter_sdiff_left_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/inter-sdiff-left-comm--7ab3dab6dad7a9997c22a82c.md) | 99 | `result-track:7ab3dab6dad7a9997c22a82c30e7e7ffb7fbed6f39b363d4da4bc825b1d786fc` |
| 13 | `theorem` | [sdiff_inter_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-inter-self--122bb928c15f0b022e25504c.md) | 102 | `result-track:122bb928c15f0b022e25504cd6dd85b6e2b072446c45d74b5f2497610d1adb06` |
| 14 | `theorem` | [sdiff_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-self--92fbd24d404a1355b8597d28.md) | 105 | `result-track:92fbd24d404a1355b8597d28e3a53dfb8ea684530b18e265ceb327f4e00f820c` |
| 15 | `theorem` | [sdiff_inter_distrib_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-inter-distrib-right--89f5dc4cb55dcb775a313b48.md) | 108 | `result-track:89f5dc4cb55dcb775a313b48de267740ffe31fcd07de44dec59f0a02f17123ce` |
| 16 | `theorem` | [sdiff_inter_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-inter-self-left--14578036c85ae2560ec5ba73.md) | 112 | `result-track:14578036c85ae2560ec5ba731a72053112cff0a47f2937a7ef030b692526246e` |
| 17 | `theorem` | [sdiff_inter_self_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-inter-self-right--8b0e8d742af3a90b66599750.md) | 116 | `result-track:8b0e8d742af3a90b665997505e90b392635b50eb65e905df1b27b74ce3ffd58b` |
| 18 | `theorem` | [sdiff_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-empty--21955e694021e376edcc9b4e.md) | 120 | `result-track:21955e694021e376edcc9b4ee9be623c2c08435123f045d75e59db1306a20cf1` |
| 19 | `theorem` | [sdiff_subset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-subset-sdiff--ac7c520206d26368317dacd0.md) | 124 | `result-track:ac7c520206d26368317dacd0974dd24f95c0a75617a54b3bf5ef4c3b23f0f2da` |
| 20 | `theorem` | [sdiff_subset_sdiff_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-subset-sdiff-iff-subset--2c9f1b9dec194542925614fb.md) | 127 | `result-track:2c9f1b9dec194542925614fb15dc659c72f16b33cd8bd169e4f6665641a75688` |
| 21 | `theorem` | [coe_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/coe-sdiff--5727dcd3a7a6aafe1faa69e2.md) | 132 | `result-track:5727dcd3a7a6aafe1faa69e29a8ad233af995abbb73c82dbea01a15ef6abc644` |
| 22 | `theorem` | [union_sdiff_self_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-self-eq-union--3f934c2876465b3c72931095.md) | 136 | `result-track:3f934c2876465b3c72931095e7e6fd11f9963f10ae5c3e05bd16e808fa8de131` |
| 23 | `theorem` | [sdiff_union_self_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-union-self-eq-union--e510c056c0f1329c8bb921d9.md) | 140 | `result-track:e510c056c0f1329c8bb921d9bffa6816243cabf1b2d546a299a4d19a4d3d2482` |
| 24 | `theorem` | [union_sdiff_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-left--3086348429f8502e294f1123.md) | 143 | `result-track:3086348429f8502e294f11235bd514d82a9bdb806f8e66fb7c2692e321052042` |
| 25 | `theorem` | [union_sdiff_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-right--466185636a77f0e2bb5a6d41.md) | 146 | `result-track:466185636a77f0e2bb5a6d41c6c092b7ef6d34b353a62ef3687ae733cb9e4e06` |
| 26 | `theorem` | [union_sdiff_cancel_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-cancel-left--a4b453c69c5ea74c2d3a37ab.md) | 149 | `result-track:a4b453c69c5ea74c2d3a37abacb9b34eb34bfe8f9244d63ea8a587e6fd0a48a6` |
| 27 | `theorem` | [union_sdiff_cancel_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-cancel-right--e548f1dc9beb1e3641f4d63a.md) | 152 | `result-track:e548f1dc9beb1e3641f4d63a9c5e614ce7d6b37fdeffa5b47b577d1ef48227c9` |
| 28 | `theorem` | [union_sdiff_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-symm--dca0bd96e40050ca00ff79f8.md) | 155 | `result-track:dca0bd96e40050ca00ff79f857725f698f12e314637d29be002db002c7547d54` |
| 29 | `theorem` | [sdiff_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-union-inter--dda68a240b9b90ef01eac129.md) | 157 | `result-track:dda68a240b9b90ef01eac129dbbb88ad2303b9a0f2f6f38d518ef7c55f168be2` |
| 30 | `theorem` | [sdiff_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-idem--92e66ea7e526da2a69056f60.md) | 160 | `result-track:92e66ea7e526da2a69056f60241eb9b20fd996913e907d15670e078ba9c97beb` |
| 31 | `theorem` | [subset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/subset-sdiff--783f0fbf75bb9c1aef34cfe6.md) | 163 | `result-track:783f0fbf75bb9c1aef34cfe608e4c7fb62f2151aec9e8fdf3265bab11700d5e1` |
| 32 | `theorem` | [sdiff_eq_empty_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-eq-empty-iff-subset--cd18367b452a46bf15b29c56.md) | 167 | `result-track:cd18367b452a46bf15b29c5630dac9edb2cd571bcc7be4538947b976955a198a` |
| 33 | `theorem` | [sdiff_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-nonempty--3bfee939e35ff2b3acc694bb.md) | 170 | `result-track:3bfee939e35ff2b3acc694bb84b1ee48fdaa417f862165621ea635802f825f56` |
| 34 | `theorem` | [empty_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/empty-sdiff--996374260a578b4c5bedddf2.md) | 174 | `result-track:996374260a578b4c5bedddf21ebf364ed722017a52d945affc056aa3f46bf084` |
| 35 | `theorem` | [insert_sdiff_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/insert-sdiff-of-notmem--8e65a5388a1b67e6aeeea119.md) | 177 | `result-track:8e65a5388a1b67e6aeeea119bcb6032763cb4d73bdc9435a584a060a07cea5d2` |
| 36 | `theorem` | [insert_sdiff_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/insert-sdiff-of-mem--3b60301a57818b85436c9736.md) | 184 | `result-track:3b60301a57818b85436c9736f4971f4baada967d37a21f302f2b2488dec920ca` |
| 37 | `lemma` | [insert_sdiff_cancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/insert-sdiff-cancel--0ea8ddd0ca225b4f43b53135.md) | 188 | `result-track:0ea8ddd0ca225b4f43b53135baf2b26d3ec5cc0c678d5ba3370a4fbf9654d234` |
| 38 | `theorem` | [insert_sdiff_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/insert-sdiff-insert--f8123e4a411167fed3c6ebf6.md) | 192 | `result-track:f8123e4a411167fed3c6ebf65f93fa31cff65fcc76f8225ef936152c574e44c6` |
| 39 | `lemma` | [insert_sdiff_insert'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/insert-sdiff-insert--70a3d8b3f17a1af812c960d2.md) | 195 | `result-track:70a3d8b3f17a1af812c960d2d2e965db2537058b081e14434d6fa52423e308fb` |
| 40 | `lemma` | [cons_sdiff_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/cons-sdiff-cons--ffded70d9b77aae0e83b013f.md) | 198 | `result-track:ffded70d9b77aae0e83b013f27e9a144455725620afed509643bbb65337a36f6` |
| 41 | `theorem` | [sdiff_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-insert-of-notmem--6774743587711da6f01d5073.md) | 201 | `result-track:6774743587711da6f01d507399b60a949e9b4277168395a76351e5bebaee3a89` |
| 42 | `theorem` | [sdiff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-subset--c31b19ef13196ccf165d6a01.md) | 208 | `result-track:c31b19ef13196ccf165d6a011494153e3403cadcdd577c61e7a6aa5948d5d4e0` |
| 43 | `theorem` | [sdiff_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-ssubset--aee9f780a36d355380cc2e29.md) | 210 | `result-track:aee9f780a36d355380cc2e29c9bbf4a1dad2d15d32d60c0b3692eab02b5e1b0a` |
| 44 | `theorem` | [union_sdiff_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-distrib--4aa9a947582376f41a5259e4.md) | 213 | `result-track:4aa9a947582376f41a5259e4ddee63b534a57fff309ccf53848f58ca308d1b77` |
| 45 | `theorem` | [sdiff_union_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-union-distrib--9aac341102a1ca5d8009fa67.md) | 216 | `result-track:9aac341102a1ca5d8009fa670ed818c0a1fb05819123c62655c29919653a5d3f` |
| 46 | `theorem` | [union_sdiff_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-sdiff-self--1f9b23775b9db13d99b5913e.md) | 219 | `result-track:1f9b23775b9db13d99b5913e290d99288ab49ad4021471c93cd270ffd7826b09` |
| 47 | `theorem` | [Nontrivial.sdiff_singleton_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/nontrivial-sdiff-singleton-nonempty--c30115c38ad40695776d1d38.md) | 222 | `result-track:c30115c38ad40695776d1d38dca35c2f035967781d506cc57fdba7ab4a663950` |
| 48 | `theorem` | [sdiff_sdiff_left'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-sdiff-left--7fa1e228150768b604004e99.md) | 228 | `result-track:7fa1e228150768b604004e9916705bfb46fdbb3c2993442efdb93e6d0a22959f` |
| 49 | `theorem` | [sdiff_union_sdiff_cancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-union-sdiff-cancel--8e7a3e072003d9c24cde7c3e.md) | 231 | `result-track:8e7a3e072003d9c24cde7c3e2c736e116de73ce28a1fbe511d171feb0dafd564` |
| 50 | `theorem` | [sdiff_sdiff_eq_sdiff_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-sdiff-eq-sdiff-union--d3fc29dba119d483acf83186.md) | 234 | `result-track:d3fc29dba119d483acf8318644bcd8c4527acaa9a9b4fa51bff063f9dc3346c6` |
| 51 | `theorem` | [sdiff_sdiff_self_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-sdiff-self-left--5e3f441ebc585951213dcf64.md) | 237 | `result-track:5e3f441ebc585951213dcf642848120346fc378f67dfdddfda62ffa53532f379` |
| 52 | `theorem` | [sdiff_sdiff_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-sdiff-eq-self--8580ffb2c9befb1dce399a4f.md) | 240 | `result-track:8580ffb2c9befb1dce399a4fd9e8214c1df8b87f351f73c860194c3d0aefb851` |
| 53 | `theorem` | [sdiff_eq_sdiff_iff_inter_eq_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-eq-sdiff-iff-inter-eq-inter--b6c4694df21e375c0e7bf8a9.md) | 243 | `result-track:b6c4694df21e375c0e7bf8a922401377a5f831fbb7b73527157936d6882b788f` |
| 54 | `theorem` | [union_eq_sdiff_union_sdiff_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/union-eq-sdiff-union-sdiff-union-inter--f645e14346a2daadd2fec75e.md) | 247 | `result-track:f645e14346a2daadd2fec75e1a281fcbaf9f8de94142c77fa924f9518393bf35` |
| 55 | `theorem` | [sdiff_eq_self_iff_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-eq-self-iff-disjoint--b57a17c432663d59ac7b1104.md) | 250 | `result-track:b57a17c432663d59ac7b11044d48b5b36d453d6b8f17cb00c07363b54406bc2a` |
| 56 | `theorem` | [sdiff_eq_self_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SDiff/Varianteb9d7252a40b10c1da3b83e2261def48b659e956e58b74188a5b8f194ffc9bfa.lean/declarations/sdiff-eq-self-of-disjoint--e22f50f5af1aa01ffb82871e.md) | 253 | `result-track:e22f50f5af1aa01ffb82871ed8f3e8d88bf3a5e2777b7e0d9e9e660a5dd05258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
