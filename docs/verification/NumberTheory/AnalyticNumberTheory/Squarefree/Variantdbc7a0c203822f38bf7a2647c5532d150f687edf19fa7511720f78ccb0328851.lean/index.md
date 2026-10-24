# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Squarefree.Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b432b40601406036d22e5331727584d8c3c0dfb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b432b40601406036d22e5331727584d8c3c0dfb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cardDistinctFactors_eq_card_primeFactors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/carddistinctfactors-eq-card-primefactors--bb2986451ffff9fe648e7b91.md) | 31 | `result-track:bb2986451ffff9fe648e7b91f23aa15de813e492bb6fe5a61956ec3b2e00ff0d` |
| 2 | `lemma` | [prime_of_isPrimePow_dvd_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/prime-of-isprimepow-dvd-squarefree--6b1c6fe0b05f0faeff5ab69b.md) | 35 | `result-track:6b1c6fe0b05f0faeff5ab69b9fa77b78e45a61752a969535ce015ba681ee763a` |
| 3 | `lemma` | [primeFactors_div_of_mem](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/primefactors-div-of-mem--46f646b55e8d5bbed6f7a038.md) | 40 | `result-track:46f646b55e8d5bbed6f7a0385ede178c6197d6cf954e504a0c6985c2c65531a6` |
| 4 | `lemma` | [squarefree_div_of_mem](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/squarefree-div-of-mem--163c90302f28b707ae795174.md) | 49 | `result-track:163c90302f28b707ae795174410b188d2c02d918707075a23ebe006e8708bed2` |
| 5 | `lemma` | [cardDistinctFactors_div_of_mem](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/carddistinctfactors-div-of-mem--f15c93a0e12cbfe26e447768.md) | 53 | `result-track:f15c93a0e12cbfe26e447768586c60f1ab2b6457ff5e639b8ea0b9f65c545d80` |
| 6 | `lemma` | [vonMangoldt_eq_zero_of_cardDistinctFactors_ne_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/vonmangoldt-eq-zero-of-carddistinctfactors-ne-one--174fe3247ec0e408e0f0e9ff.md) | 61 | `result-track:174fe3247ec0e408e0f0e9ffb72b0bcb99ce7e53b56b7e7b7805aaad637991ca` |
| 7 | `lemma` | [cardFactors_eq_cardDistinctFactors_of_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/cardfactors-eq-carddistinctfactors-of-squarefree--02a686a1831b56d21d0debe1.md) | 67 | `result-track:02a686a1831b56d21d0debe158432568d2715224049273638346bed531f00942` |
| 8 | `theorem` | [pow_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/pow-apply-squarefree--a522c711c63a4af0ea173bb8.md) | 74 | `result-track:a522c711c63a4af0ea173bb83c295e59f8f9e384d4afcea97eacaabf075603cf` |
| 9 | `lemma` | [vonMangoldt_supported](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/vonmangoldt-supported--2b2a9c306fbac3124f71e733.md) | 117 | `result-track:2b2a9c306fbac3124f71e7333f821c711216e26af1604c60ea0025487ce300b2` |
| 10 | `lemma` | [lamLog_supported](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/lamlog-supported--76a9c5f875b0f10ae31377d3.md) | 120 | `result-track:76a9c5f875b0f10ae31377d33a1b88ace91f4a98b0f1058e335727c3a9a18b33` |
| 11 | `theorem` | [lamPow_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/lampow-apply-squarefree--ee0a10c38a95664b3565d7f9.md) | 124 | `result-track:ee0a10c38a95664b3565d7f9a3cb6bcab083543bfe7272a1e6c39ac52466b9ce` |
| 12 | `theorem` | [lamLogPow_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/lamlogpow-apply-squarefree--3d8b8f4fac51e648962c801b.md) | 134 | `result-track:3d8b8f4fac51e648962c801b343aa5107e141639e5acb965933c700d30c0e9f9` |
| 13 | `lemma` | [sum_primeFactors_log_of_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/sum-primefactors-log-of-squarefree--5082da56dd356e4cfdd3d592.md) | 145 | `result-track:5082da56dd356e4cfdd3d59273c4be2fe6398d6a528b1377754b978da71f7c8a` |
| 14 | `theorem` | [lamLogConv_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/lamlogconv-apply-squarefree--77ef49e2f4618f20fcb9f458.md) | 152 | `result-track:77ef49e2f4618f20fcb9f4583ea29341f34463ea1723aeee30885870c44404e5` |
| 15 | `theorem` | [xiCoeff_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/xicoeff-squarefree--cbd2d64e4154ad68adfbf431.md) | 194 | `result-track:cbd2d64e4154ad68adfbf43140c3f1407b0fbfd0da4420f99994b8a8446aaf6a` |
| 16 | `theorem` | [xiCoeff_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/xicoeff-prime--ceb605a3e9c0290bc0c5f64e.md) | 210 | `result-track:ceb605a3e9c0290bc0c5f64e89c90fea7030c8f024f0e3f5023b91c6e4e8dec0` |
| 17 | `theorem` | [norm_sq_xiCoeff_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/declarations/norm-sq-xicoeff-squarefree--0e970d43e0c39050f258d8b4.md) | 220 | `result-track:0e970d43e0c39050f258d8b4d6bbc950c02b710e0bd72a4b0a378859964f6eed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
