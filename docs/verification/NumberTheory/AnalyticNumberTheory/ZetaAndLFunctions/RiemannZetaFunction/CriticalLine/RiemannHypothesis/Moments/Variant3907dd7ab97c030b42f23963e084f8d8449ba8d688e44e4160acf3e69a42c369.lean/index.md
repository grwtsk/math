# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Moments.Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b986f9e1d27b12f03120458974c03cff4d8dd46",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b986f9e1d27b12f03120458974c03cff4d8dd46`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.QuarticWindow.Quartic` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.WindowLocalHyps` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edge_estimate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/edge-estimate--b2b4b7da41b1b265ce0fd491.md) | 34 | `result-track:b2b4b7da41b1b265ce0fd49143d394947898e4ca8c1a338e202b6a017938bbe8` |
| 2 | `theorem` | [integral_scale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/integral-scale--e33d5b0926edb170f23aac76.md) | 131 | `result-track:e33d5b0926edb170f23aac761c7a91d8f4c0d3cf014b931fd8d1137a18086878` |
| 3 | `def` | [mQ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/mq--e7ba8e10962c53e0bbd979c9.md) | 140 | `declaration-track:e7ba8e10962c53e0bbd979c92bf7832066b512b0cda693f7c3d2ba331608f9d6` |
| 4 | `lemma` | [mQ_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/mq-nonneg--7269b80cfaa8236ac313b202.md) | 142 | `result-track:7269b80cfaa8236ac313b202d567ea958ee3a4242f1209a53d05b276008b4c8c` |
| 5 | `lemma` | [mQ_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/mq-le-one--69ca7236d8e2c57bfa1d270b.md) | 143 | `result-track:69ca7236d8e2c57bfa1d270beb5790a9f2e62d95d94c05fb0485479cab8c6cc8` |
| 6 | `lemma` | [abs_mQ_le_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/abs-mq-le-one--414c1ec6c1a74d69e6d917a8.md) | 144 | `result-track:414c1ec6c1a74d69e6d917a80b26b16d2e8bf81a8a3e5a8bb24ad2f2881b2075` |
| 7 | `lemma` | [mQ_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/mq-continuous--09bada1147f9f7c8379e09df.md) | 145 | `result-track:09bada1147f9f7c8379e09df5f1d9d836d290937a250cd43c2ada59e06bca10f` |
| 8 | `lemma` | [fQ_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/fq-sq--0edc265e9aae688ccf311738.md) | 147 | `result-track:0edc265e9aae688ccf3117381f649beee0db1e024ce92aaaa7ba6259cb4ff382` |
| 9 | `lemma` | [mQ_core](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/mq-core--d6643da10582fab63f39719f.md) | 148 | `result-track:d6643da10582fab63f39719f41de5ebd191b2b476a1c8bd897cc05287c5de289` |
| 10 | `lemma` | [phiMQ_sq_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/phimq-sq-eq--4aef704e003a2441dcbfb603.md) | 151 | `result-track:4aef704e003a2441dcbfb603d00a8793dd858fcde0ba7d0a9e2d17b402dbd52b` |
| 11 | `lemma` | [phiMQ_pow_four_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/phimq-pow-four-eq--15207a4e54a64cda56a771a5.md) | 154 | `result-track:15207a4e54a64cda56a771a57dd88b1cb70e51bb868245ff0adfc340e2a46e4e` |
| 12 | `theorem` | [aQ_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/aq-close--44fcc1e3fe6a1951f5a14c42.md) | 161 | `result-track:44fcc1e3fe6a1951f5a14c42003f51cb64430ea4f5e331e2186502e357b72ee4` |
| 13 | `theorem` | [bQ_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/bq-close--6bd087b2052eae0885c0fd98.md) | 191 | `result-track:6bd087b2052eae0885c0fd98172fdca2183977cf0795aa10bde5b6d6b659db6b` |
| 14 | `def` | [sharpQ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/sharpq--b52ca3a209ba2063e04867d2.md) | 228 | `declaration-track:b52ca3a209ba2063e04867d2099ecf8de7893c6642e8df99a62b37d9555fa428` |
| 15 | `theorem` | [sharpQ_autocorr_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/sharpq-autocorr-eq--eb30b44b7e2ff7c874e4f4d8.md) | 230 | `result-track:eb30b44b7e2ff7c874e4f4d81c487201fa7d51f5c55f50af883b24996fccb821` |
| 16 | `theorem` | [integral_abs_phiMQsq_sub_sharp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/integral-abs-phimqsq-sub-sharp--ef2cff456ae2c672caba0571.md) | 264 | `result-track:ef2cff456ae2c672caba0571f522b089254df5dec875ab5643ebffd5570e6bbd` |
| 17 | `theorem` | [autocorr_phiMQsq_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/autocorr-phimqsq-close--577f86c480bb0bc7a554ae99.md) | 369 | `result-track:577f86c480bb0bc7a554ae99c6467d248a8dc4badac201518f46a9d0d5db1e2b` |
| 18 | `theorem` | [aV_quartic_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/av-quartic-close--b2034babe9f45c5d3985e740.md) | 486 | `result-track:b2034babe9f45c5d3985e740db2f8ffcdc8344a4fb6eedeabc60acbbbe1866ca` |
| 19 | `theorem` | [bV_quartic_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/bv-quartic-close--0ffb122591ba43931aff4b01.md) | 490 | `result-track:0ffb122591ba43931aff4b0143c5e6bd1549bf0af9e688b58e0852dff7a4a5f9` |
| 20 | `theorem` | [bV_quartic_ge_half](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/bv-quartic-ge-half--a7e9717726f251557a0a6122.md) | 495 | `result-track:a7e9717726f251557a0a61229a7db4983a0faf8556c7eee313e27aca59126c33` |
| 21 | `theorem` | [gV_quartic_close_at](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/gv-quartic-close-at--7c121d1badaa4295f4f209fe.md) | 502 | `result-track:7c121d1badaa4295f4f209fee9004baf74dc0edcfaa8e364962b28d5f746af63` |
| 22 | `theorem` | [gV_quartic_close](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/gv-quartic-close--c5bc5309de92bdce4fc09800.md) | 507 | `result-track:c5bc5309de92bdce4fc09800cb21b679f253c0975723b1a63299151edd61b309` |
| 23 | `theorem` | [gV_quartic_continuous](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/gv-quartic-continuous--c6a90569730ca05ef03f882c.md) | 513 | `result-track:c6a90569730ca05ef03f882c6f7e6e43ce57da7cc0f6ab70a358c1b78deaf930` |
| 24 | `theorem` | [localHypsCoreQ_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/declarations/localhypscoreq-eventually--e14b65275ebb20be62d9acbb.md) | 518 | `result-track:e14b65275ebb20be62d9acbbbcc4c08c0ac598add4c1feb9c009558e988d399c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
