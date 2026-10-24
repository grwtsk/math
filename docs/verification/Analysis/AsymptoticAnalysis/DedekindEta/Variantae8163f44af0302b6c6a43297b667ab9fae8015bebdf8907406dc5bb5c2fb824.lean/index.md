# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.DedekindEta.Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4752cbb504378c5b719939f5eaab0007e09dfb93",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4752cbb504378c5b719939f5eaab0007e09dfb93`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean.json)

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
| 1 | `abbrev` | [eta_q](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/eta-q--cb9362c15be96f3e2329223e.md) | 52 | `declaration-track:cb9362c15be96f3e2329223e6d8d3a3a14e2fa28d8a1389b0b5cf8c9e7d6dd5c` |
| 2 | `lemma` | [eta_q_eq_cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/eta-q-eq-cexp--aa3643b0b0f5af0bc09e1219.md) | 54 | `result-track:aa3643b0b0f5af0bc09e121982a395a17e87ca6266111e53d06706067187f07f` |
| 3 | `lemma` | [eta_q_eq_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/eta-q-eq-pow--6f12dbeab72fa792d401669e.md) | 58 | `result-track:6f12dbeab72fa792d401669e9edfecf887cdd2ae70dc08c52dabffc45762279c` |
| 4 | `lemma` | [one_sub_eta_q_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/one-sub-eta-q-ne-zero--41a4e651164b6b2612456425.md) | 61 | `result-track:41a4e651164b6b2612456425ba4fba56dab1812f5594e66a4cba05ecbce4c2de` |
| 5 | `def` | [eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/eta--7b2dd4dcd628be4458aac8fa.md) | 68 | `declaration-track:7b2dd4dcd628be4458aac8faaaa337f6f0d6b566ce47b90b52304a2ac8d22efd` |
| 6 | `lemma` | [multipliable_one_sub_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/multipliable-one-sub-pow--592744542a356ab2bd5c197d.md) | 74 | `result-track:592744542a356ab2bd5c197d8f033fe88bb359fb8ba7062123bcf4d25657336c` |
| 7 | `lemma` | [multipliableLocallyUniformlyOn_one_sub_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/multipliablelocallyuniformlyon-one-sub-pow--4c8f86b5eec541fd6cd50493.md) | 81 | `result-track:4c8f86b5eec541fd6cd504931423c51f519b9a3d38ba6b1fa6acfe19082c150b` |
| 8 | `lemma` | [differentiableOn_tprod_one_sub_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/differentiableon-tprod-one-sub-pow--cf1f0c8feed030dae211b15e.md) | 97 | `result-track:cf1f0c8feed030dae211b15ecb509c493b67d4539f578051552be4d091141539` |
| 9 | `lemma` | [differentiableOn_tprod_one_sub_pow_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/differentiableon-tprod-one-sub-pow-pow--ba53562f33024520ec4fe1e8.md) | 105 | `result-track:ba53562f33024520ec4fe1e8ca7e04ca520e5ae62fda089c0df6d64f0c830151` |
| 10 | `theorem` | [summable_eta_q](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/summable-eta-q--adf35fce4616002a7d582749.md) | 110 | `result-track:adf35fce4616002a7d582749f3b349b1cdc4d461c9508122fcab5af6f0c70da4` |
| 11 | `lemma` | [multipliableLocallyUniformlyOn_eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/multipliablelocallyuniformlyon-eta--4244cac7a6f13d25a428414b.md) | 114 | `result-track:4244cac7a6f13d25a428414b5917e7b4482005200d8f3f05a404cd025528e29d` |
| 12 | `lemma` | [eta_tprod_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/eta-tprod-ne-zero--69867f151fcd43c36dc471ba.md) | 119 | `result-track:69867f151fcd43c36dc471ba2e93c7b32c21e829291debe70982f80eabcf10be` |
| 13 | `lemma` | [eta_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/eta-ne-zero--0135db84e4eae1a896c86a78.md) | 125 | `result-track:0135db84e4eae1a896c86a78cf8dda3ad3511b248e0d91a0f4221fb40e65e925` |
| 14 | `lemma` | [logDeriv_one_sub_cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/logderiv-one-sub-cexp--22bff0e67057cadb3be61b5e.md) | 128 | `result-track:22bff0e67057cadb3be61b5e32d27facec2f916ee304e31ad1242aca4f5af32a` |
| 15 | `lemma` | [logDeriv_one_sub_mul_cexp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/logderiv-one-sub-mul-cexp-comp--b61db74df14e96b603c8a374.md) | 133 | `result-track:b61db74df14e96b603c8a37490fa4cc4597a6db1085998eda33f93f7fe489dfb` |
| 16 | `theorem` | [one_sub_eta_logDeriv_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/one-sub-eta-logderiv-eq--22ae641bdbfeed2f43a75dbf.md) | 140 | `result-track:22ae641bdbfeed2f43a75dbf60a374ce3386cde7a86310e0c696be1fef01e054` |
| 17 | `lemma` | [tsum_logDeriv_eta_q](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/tsum-logderiv-eta-q--a238c3e322ba0ed85ed6424e.md) | 148 | `result-track:a238c3e322ba0ed85ed6424ee7d390ff899cc4f3170ed5c46fbc9fe0bce1b6aa` |
| 18 | `lemma` | [differentiableAt_eta_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/differentiableat-eta-tprod--e7e1eeb939ce7b343eea3408.md) | 153 | `result-track:e7e1eeb939ce7b343eea340828cbb931d25d18e5a1908d8e45b17ce7b3534e25` |
| 19 | `theorem` | [differentiableAt_eta_of_mem_upperHalfPlaneSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/differentiableat-eta-of-mem-upperhalfplaneset--5b363b904b1287fac6274c0d.md) | 159 | `result-track:5b363b904b1287fac6274c0de1d3370e2f6b1ada31bfcb266b698cbfb4391209` |
| 20 | `lemma` | [logDeriv_qParam](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/logderiv-qparam--54283bb4a664f5d440f1fa9c.md) | 163 | `result-track:54283bb4a664f5d440f1fa9c22eb33ba149e25b8fa81c27f2b87ca398f998e33` |
| 21 | `lemma` | [summable_logDeriv_one_sub_eta_q](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/summable-logderiv-one-sub-eta-q--0983526227629904b5334f71.md) | 170 | `result-track:0983526227629904b5334f714371059c99da27119042d5371024bbb54b221198` |
| 22 | `lemma` | [logDeriv_eta_eq_E2](../../../../../mathematics/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/declarations/logderiv-eta-eq-e2--e9490b5b89f127ff409d418a.md) | 177 | `result-track:e9490b5b89f127ff409d418a80f7bbeda9380c0a05a90e76ebbdedcef96506ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
