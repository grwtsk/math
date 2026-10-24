# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Basic.Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7167e088fe435a61ff901c3e6cee31a571173358",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7167e088fe435a61ff901c3e6cee31a571173358`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Fernique` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasGaussianLaw.congr](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/hasgaussianlaw-congr--8301febc23b2cd764065cac1.md) | 52 | `result-track:8301febc23b2cd764065cac1f439d1838ed798b123c09466068c515f51afeb4e` |
| 2 | `lemma` | [IsGaussian.hasGaussianLaw](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/isgaussian-hasgaussianlaw--67b4d3b97c84d51a3ca7afd0.md) | 59 | `result-track:67b4d3b97c84d51a3ca7afd0d7878d4253396b049383ba18f4e10407a241a769` |
| 3 | `lemma` | [IsGaussian.hasGaussianLaw_id](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/isgaussian-hasgaussianlaw-id--371f516634e8b7a7578e401d.md) | 64 | `result-track:371f516634e8b7a7578e401de079224df0b487bc41cd0c9aad3585c5e2204db2` |
| 4 | `lemma` | [HasGaussianLaw.isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/hasgaussianlaw-isprobabilitymeasure--bfbbbc398fbdcfb83e175921.md) | 67 | `result-track:bfbbbc398fbdcfb83e175921eb9d86300fbabae53dc6cb2361178e1bc5751289` |
| 5 | `lemma` | [HasLaw.hasGaussianLaw](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/haslaw-hasgaussianlaw--3c11dfcd4f557ed5628c686c.md) | 72 | `result-track:3c11dfcd4f557ed5628c686c215deda9f66587fd7858b09c49bfd7f7218375a9` |
| 6 | `lemma` | [HasGaussianLaw.map_of_measurable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/hasgaussianlaw-map-of-measurable--2fb8fffb7dfb8988b7f7b54d.md) | 76 | `result-track:2fb8fffb7dfb8988b7f7b54d3bec0963b5956ebf619ef89fe80b958d5e37acf1` |
| 7 | `lemma` | [HasGaussianLaw.map_eq_gaussianReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/hasgaussianlaw-map-eq-gaussianreal--758e6bc707a9d5842a1309b4.md) | 86 | `result-track:758e6bc707a9d5842a1309b4a8c4b7953a34462dd729222737ed76136c9eac8a` |
| 8 | `lemma` | [of_subsingleton](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/of-subsingleton--34b0129975146c9ece88a038.md) | 98 | `result-track:34b0129975146c9ece88a038bbbb76e2853d75e785567682283d797f257b8768` |
| 9 | `lemma` | [charFun_map_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/charfun-map-eq--559d194f359bb5a1b582a096.md) | 102 | `result-track:559d194f359bb5a1b582a0965c1b99c0419de49ec0ba5f0433feb1c3e8f11ba8` |
| 10 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.HasGaussianLawCongr.Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.ProbabilityTheory.hasGaussianLaw_iff_charFun_map_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--55997d6fcd46281731d36d09.md) | 107 | `result-track:55997d6fcd46281731d36d09c554728943ab96e1577e58c42642006ed689c8c7` |
| 11 | `lemma` | [charFunDual_map_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/charfundual-map-eq--cac62e103b1645d752e1c70a.md) | 119 | `result-track:cac62e103b1645d752e1c70a4930d23da68f1f479bd68dbb7a9dcd34e9b21e8a` |
| 12 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.HasGaussianLawCongr.Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.ProbabilityTheory.hasGaussianLaw_iff_charFunDual_map_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--78e04fec7b0b730fee709e4e.md) | 124 | `result-track:78e04fec7b0b730fee709e4e97882a0327b499b826db500cadb776b7d06e596c` |
| 13 | `lemma` | [charFunDual_map_eq_fun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/charfundual-map-eq-fun--bc171cff24c1fde9b202be94.md) | 134 | `result-track:bc171cff24c1fde9b202be94922be762d233a2c448c7e6caa311f50a63b829c5` |
| 14 | `lemma` | [memLp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/memlp--d31d3090fc03f7bbf4b2cc29.md) | 139 | `result-track:d31d3090fc03f7bbf4b2cc29ca2307c96a5cfc6175544b0e236d0bf3e8dacf20` |
| 15 | `lemma` | [memLp_two](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/memlp-two--0cebe3e41176a80a9f361945.md) | 146 | `result-track:0cebe3e41176a80a9f361945a35d606325a37e59035153be6b65acb4967cdb19` |
| 16 | `lemma` | [integrable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/integrable--2bc3071e6e7b7f65d9192f50.md) | 149 | `result-track:2bc3071e6e7b7f65d9192f508cb53158fc1c59666218df4cefac031f66c9add8` |
| 17 | `lemma` | [map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/map--8369c43900a6e556871245b7.md) | 155 | `result-track:8369c43900a6e556871245b72b4ec059557141a9e6597f309a8f3913009326b4` |
| 18 | `lemma` | [map_fun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/map-fun--7eb8f39b3e979ef5092a067c.md) | 158 | `result-track:7eb8f39b3e979ef5092a067c43b3859d47986582931ddff402a9f54451027893` |
| 19 | `lemma` | [map_equiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/map-equiv--10449be19cd0b4368c2050ba.md) | 161 | `result-track:10449be19cd0b4368c2050bab49964f42b0b880027313c08425a295cd1db2f96` |
| 20 | `lemma` | [map_equiv_fun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/map-equiv-fun--bd095cf82da6fbe0f31fbc4f.md) | 164 | `result-track:bd095cf82da6fbe0f31fbc4f7250505e8a35b73fee8507e9534f7329e16d40ca` |
| 21 | `lemma` | [smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/smul--99e2121ea383a5ef636b2402.md) | 169 | `result-track:99e2121ea383a5ef636b2402267429e886b9c2d54f32b140073e0d0bcac026ba` |
| 22 | `lemma` | [fun_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/fun-smul--2979126156a1e53cd863b736.md) | 172 | `result-track:2979126156a1e53cd863b736ae2aa99b8a1f24b1bc4655ba6f20c2c14675314d` |
| 23 | `lemma` | [neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/neg--08f5601377b3b20809a7f96e.md) | 175 | `result-track:08f5601377b3b20809a7f96e80dbc9da873b611306fb3c78efdb57b240ce4c73` |
| 24 | `lemma` | [fun_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/fun-neg--48bb7792b12ff91e3b6d35c4.md) | 177 | `result-track:48bb7792b12ff91e3b6d35c4ba85dda397fd77a1e317ea29ecf4904a8f928ec5` |
| 25 | `lemma` | [toLp_prodMk](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/tolp-prodmk--657cbc99f20bb10f7e826094.md) | 184 | `result-track:657cbc99f20bb10f7e8260949150b464739bd1ae79cec69e237c126ea8546dba` |
| 26 | `lemma` | [fst](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/fst--c96768623c833d4968b91278.md) | 190 | `result-track:c96768623c833d4968b91278652fc3f1664505854251bca2b8e2ca64a8bc5ce6` |
| 27 | `lemma` | [snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/snd--dd6bf85e4b61a8601d933713.md) | 194 | `result-track:dd6bf85e4b61a8601d9337136167da716948f8721fc96402f819159c132e6c8e` |
| 28 | `lemma` | [add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/add--78673b3f6fa5cf280bdd6b49.md) | 199 | `result-track:78673b3f6fa5cf280bdd6b4941589bf3a840c45e141d6e0bd458ff7270eec1c9` |
| 29 | `lemma` | [fun_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/fun-add--739bb51ae8c6e6502c434137.md) | 202 | `result-track:739bb51ae8c6e6502c4341377a3841269ef159eef6e480868a4cc224a801f4f7` |
| 30 | `lemma` | [sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/sub--36ee270701a593171a07847c.md) | 206 | `result-track:36ee270701a593171a07847cbafb29fe9d231d0e9cea7ccff9535a3445ffc623` |
| 31 | `lemma` | [fun_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/fun-sub--c9a35648d256803e180b6366.md) | 209 | `result-track:c9a35648d256803e180b636668dd2d7cd812a2980e8574d3b577545339a03de3` |
| 32 | `lemma` | [eval](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/eval--aba48418a6b87d0288e2a581.md) | 221 | `result-track:aba48418a6b87d0288e2a5812bee25c059a4b36b984738d4116002d9992e02dc` |
| 33 | `lemma` | [prodMk](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/prodmk--57c2cecbf47dc3e5d9d94345.md) | 226 | `result-track:57c2cecbf47dc3e5d9d94345e31973d6d119d0b79baf747f53addf27f3e08d18` |
| 34 | `lemma` | [toLp_pi](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/tolp-pi--6aa607d77218c278fa8ae277.md) | 231 | `result-track:6aa607d77218c278fa8ae277ef85027475d8339fc3a9b51084c5ed9399760301` |
| 35 | `lemma` | [sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/sum--2f330f7a641b9d9dcfdf096f.md) | 238 | `result-track:2f330f7a641b9d9dcfdf096fda51972a21cf42dcfd4157a8d5641b93d17dbe0b` |
| 36 | `lemma` | [fun_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant869c917cfed7f78f4318e14936285d28e39341e8aa301dc32a557d03c3514316.lean/declarations/fun-sum--bf03514744c41f7cc72f4ce5.md) | 245 | `result-track:bf03514744c41f7cc72f4ce55eb8e4a21e1de5411eec73a91f619fdcc90351ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
