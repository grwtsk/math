# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Squarefree.Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76d3a5d6eb42f86ed1f97f8a522fb4ecda4c5701",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76d3a5d6eb42f86ed1f97f8a522fb4ecda4c5701`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Basic` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cardDistinctFactors_eq_card_primeFactors](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/carddistinctfactors-eq-card-primefactors--3628c4a1c2ee167f0e282f7d.md) | 39 | `result-track:3628c4a1c2ee167f0e282f7d85d7e3b4f30e33606230320d03ca691398664b5a` |
| 2 | `lemma` | [prime_of_isPrimePow_dvd_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/prime-of-isprimepow-dvd-squarefree--978910470b08480fcd34fce4.md) | 43 | `result-track:978910470b08480fcd34fce41524c31733714ad6be1c729ad0e58a006ac6b06d` |
| 3 | `lemma` | [primeFactors_div_of_mem](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/primefactors-div-of-mem--a1fff1cddce11a7e2e89537d.md) | 48 | `result-track:a1fff1cddce11a7e2e89537d40f6d6dc782bee9ba6f784c646ef0fc3e6141162` |
| 4 | `lemma` | [squarefree_div_of_mem](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/squarefree-div-of-mem--3da9fe88b0d639cbed731b3e.md) | 57 | `result-track:3da9fe88b0d639cbed731b3e08a018b5b0e338fdc731c07a67802dacb00f37db` |
| 5 | `lemma` | [cardDistinctFactors_div_of_mem](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/carddistinctfactors-div-of-mem--52342dc7262c9452ddcc803c.md) | 61 | `result-track:52342dc7262c9452ddcc803c76fc55cf4f8d03db3a979265bbd1b8222cb6d040` |
| 6 | `lemma` | [vonMangoldt_eq_zero_of_cardDistinctFactors_ne_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/vonmangoldt-eq-zero-of-carddistinctfactors-ne-one--5de335f51e5a33d88df601d2.md) | 69 | `result-track:5de335f51e5a33d88df601d20cdf620e0505bcd7723b5b78c21834a42306ff9f` |
| 7 | `lemma` | [cardFactors_eq_cardDistinctFactors_of_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/cardfactors-eq-carddistinctfactors-of-squarefree--656049ea74b3c08f6c94cedd.md) | 75 | `result-track:656049ea74b3c08f6c94cedd966ee23f5a16285f3b70413d4b5491bd9f57eba8` |
| 8 | `theorem` | [pow_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/pow-apply-squarefree--371bead768d9db3e5e1272c7.md) | 82 | `result-track:371bead768d9db3e5e1272c7a7fd0f17ed5e04211dc2b2f2d4060112ec5f8cbf` |
| 9 | `lemma` | [vonMangoldt_supported](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/vonmangoldt-supported--1ff5b9a7bb353cf11804571d.md) | 125 | `result-track:1ff5b9a7bb353cf11804571d8922ef491b97ec2edccca62629624de2a5cd2868` |
| 10 | `lemma` | [lamLog_supported](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/lamlog-supported--e9a20c9d36c447d6ce8f056f.md) | 128 | `result-track:e9a20c9d36c447d6ce8f056ff9b21b7454ad54377eae7de4d033a173b26f133b` |
| 11 | `theorem` | [lamPow_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/lampow-apply-squarefree--8395238be141d495a064c122.md) | 132 | `result-track:8395238be141d495a064c122330bf58fcf2980f4cb27e94f171760decf69d678` |
| 12 | `theorem` | [lamLogPow_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/lamlogpow-apply-squarefree--f80a3dc96328c84b28c38b1d.md) | 142 | `result-track:f80a3dc96328c84b28c38b1d19c517b29562353460ea4a2133c20545505b8cbd` |
| 13 | `lemma` | [sum_primeFactors_log_of_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/sum-primefactors-log-of-squarefree--49da81c14d2ccc6e1d8158cc.md) | 153 | `result-track:49da81c14d2ccc6e1d8158cc32213e8e352d6743854b91e4d545e187a80ee763` |
| 14 | `theorem` | [lamLogConv_apply_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/lamlogconv-apply-squarefree--4b8ff5837f6b782192272e7b.md) | 160 | `result-track:4b8ff5837f6b782192272e7b5293ad2b36ab119dfa0a5696660066f4e695321e` |
| 15 | `theorem` | [xiCoeff_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/xicoeff-squarefree--a4375cb120e6a3ee2773bfba.md) | 202 | `result-track:a4375cb120e6a3ee2773bfba670005f4937671224f7cfcac1c947022ec084fe8` |
| 16 | `theorem` | [xiCoeff_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/xicoeff-prime--faf905d042ddb594469d5780.md) | 218 | `result-track:faf905d042ddb594469d5780d91ca2d58a34a629c5387ee473660294010e7727` |
| 17 | `theorem` | [norm_sq_xiCoeff_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/declarations/norm-sq-xicoeff-squarefree--8274e9ac3e92902a9177e642.md) | 228 | `result-track:8274e9ac3e92902a9177e642dafe42830e30183845031e2a3e44f625d2632672` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
