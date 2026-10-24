# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.InitialFormula.Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5821d1847af5320967e6e7ac504340255923935",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5821d1847af5320967e6e7ac504340255923935`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/rcoeff--c599b5f9d7c61e4ab255e7f7.md) | 38 | `declaration-track:c599b5f9d7c61e4ab255e7f7e715a9379797cd067e2a5cef5a1ef334e3ba9623` |
| 2 | `def` | [sCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/scoeff--8296f232aa60dcc183fb6682.md) | 52 | `declaration-track:8296f232aa60dcc183fb668238127366f5b0cc6efb45884b20781df275ef0665` |
| 3 | `def` | [scalePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/scalepolynomial--3f42a47601f0a5a5625356c1.md) | 65 | `declaration-track:3f42a47601f0a5a5625356c19aac2a41e3488aa5740a14336a482624fb64e26e` |
| 4 | `def` | [positivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/positivepolynomial--680a5a16c27edf2739ee00cc.md) | 69 | `declaration-track:680a5a16c27edf2739ee00ccadfccc7c7fd8743f297ee8617950d9dd436c24b8` |
| 5 | `def` | [mixedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/mixedpolynomial--5058b19e1485286aac2fcc75.md) | 72 | `declaration-track:5058b19e1485286aac2fcc75fbac875ade5d47ef8f2e0a8873f7f601f5b7b5e4` |
| 6 | `theorem` | [scalePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/scalepolynomial-eval--e8b8bb27d3a5728293dadbc2.md) | 75 | `result-track:e8b8bb27d3a5728293dadbc2e9fe1696307c690bf0e925249f5689abb143d0f7` |
| 7 | `theorem` | [positivePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/positivepolynomial-eval--e0ec8c577f56b4ab2d3a5815.md) | 81 | `result-track:e0ec8c577f56b4ab2d3a581520dba2fbe5b29370b2a137905eb106ca4d1f0712` |
| 8 | `theorem` | [mixedPolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/mixedpolynomial-eval--33546466d88b8c4bb90c460f.md) | 86 | `result-track:33546466d88b8c4bb90c460fa885f927224c9753f1e9bac9bb06fec44360021a` |
| 9 | `theorem` | [positivePolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/positivepolynomial-expansion--561b3f1d02c60f0c72f1b6e4.md) | 92 | `result-track:561b3f1d02c60f0c72f1b6e418eb2654b35bb5796c8523f4b7492a59887b1da9` |
| 10 | `theorem` | [mixedPolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/mixedpolynomial-expansion--b2fce50c54a6c167a34ff791.md) | 106 | `result-track:b2fce50c54a6c167a34ff7917a6085b2c92d354c630359f657f959f649146def` |
| 11 | `theorem` | [positivePolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/positivepolynomial-natdegree-le--b3dec0fdf046eb24067c3ff3.md) | 117 | `result-track:b3dec0fdf046eb24067c3ff3d95fa3463e893bfc232e56f59aa33f8d8234a7b5` |
| 12 | `theorem` | [mixedPolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/mixedpolynomial-natdegree-le--0b8b22b2280939763f4b96e4.md) | 122 | `result-track:0b8b22b2280939763f4b96e4a1876f6d233542ab74c7daa518f54a38d83762cf` |
| 13 | `theorem` | [positivePolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/positivepolynomial-coeff--d69c6bd723f044b5d2aa1da1.md) | 128 | `result-track:d69c6bd723f044b5d2aa1da1973c8e6a90ea8ef8e783c55513ca83c8f4580ec8` |
| 14 | `theorem` | [positivePolynomial_neg_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/positivepolynomial-neg-coeff--cc91bf335b01d5f232b0aeb6.md) | 137 | `result-track:cc91bf335b01d5f232b0aeb6283a5e257c65bad1e6fb40876c1ec7e5c1561188` |
| 15 | `theorem` | [mixedPolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/mixedpolynomial-coeff--db9f83d51d0ad9057b86b565.md) | 146 | `result-track:db9f83d51d0ad9057b86b565830395164f820becceca4722d1da392c7861552b` |
| 16 | `def` | [polynomialKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/polynomialkernel--234c88d1c72ace8794e90643.md) | 155 | `declaration-track:234c88d1c72ace8794e90643bc0b76009a0f56f1f20be7951d888f5455b6d8cd` |
| 17 | `def` | [sourceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/sourcekernel--c8ba1814505ba54f61b025cb.md) | 159 | `declaration-track:c8ba1814505ba54f61b025cb22a9ac62733ed60a2f48ca9fc9c36e7e1af3ee69` |
| 18 | `def` | [equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/equation20summand--317ca703ed14d904408cb2e8.md) | 166 | `declaration-track:317ca703ed14d904408cb2e8269e2adc41b83ea557581128348fc9479c526e50` |
| 19 | `theorem` | [polynomialKernel_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/polynomialkernel-positive--bd38f357a816b5cdcdc1c15b.md) | 174 | `result-track:bd38f357a816b5cdcdc1c15bc21e6d60efc9be2c323ab88c2935a8cc2f838a7a` |
| 20 | `theorem` | [polynomialKernel_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/polynomialkernel-negative--075649775a773cbdfe0629bb.md) | 186 | `result-track:075649775a773cbdfe0629bbfaf3ce3470c7ea31c4d770fa37107dc1152cc25a` |
| 21 | `theorem` | [polynomialKernel_mixed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/polynomialkernel-mixed--e4d68b4aca4d3a10979c3711.md) | 198 | `result-track:e4d68b4aca4d3a10979c3711691bca440c83bc4ee14fa5f4cdb7fabb946bb81b` |
| 22 | `theorem` | [sourceKernel_eq_equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/sourcekernel-eq-equation20summand--38937bfec290ef2e13f87910.md) | 212 | `result-track:38937bfec290ef2e13f87910462eec867d239dfec6dbdbde580a991ff94c4544` |
| 23 | `def` | [weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/weightedpolynomial--1f3c6e15100f523d72baae31.md) | 227 | `declaration-track:1f3c6e15100f523d72baae319c9259317805ed485dc14f77972f6fc21595fdbe` |
| 24 | `theorem` | [weightedPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/weightedpolynomial-eq-sum--0fa3e5daf3dcd6cc7e54b24f.md) | 231 | `result-track:0fa3e5daf3dcd6cc7e54b24fc783a9dc1e4b03c175c9393f696b7efa05f88a58` |
| 25 | `theorem` | [weightedPolynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/weightedpolynomial-integrable--0dbe5e2bd9357b974d500c08.md) | 248 | `result-track:0dbe5e2bd9357b974d500c08d27094cc33e191f28ad98ec3968ce37e175047f2` |
| 26 | `theorem` | [integral_weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/integral-weightedpolynomial--22d563090c65cbe30a4f1107.md) | 261 | `result-track:22d563090c65cbe30a4f1107df70865752ca738401708771cdba47463eddf595` |
| 27 | `theorem` | [weighted_expandedSummand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/weighted-expandedsummand-eq--464778e54c59f0ea37379775.md) | 280 | `result-track:464778e54c59f0ea37379775a70ca6b77a13fd134b08a5d76cd9a13bc7619400` |
| 28 | `theorem` | [occurrence_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/occurrence-integrable--ba7791863e70f2f43879a6b7.md) | 309 | `result-track:ba7791863e70f2f43879a6b7b266c215aa6ecc88bd22190ce5da1dba92368164` |
| 29 | `theorem` | [integral_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/integral-occurrence--e1ad40b5dfeaa9cde1b24e49.md) | 346 | `result-track:e1ad40b5dfeaa9cde1b24e49a74308d79bc0e7c8aac3b4c7a7c243976ffbca04` |
| 30 | `def` | [occurrenceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/occurrenceintegrand--e2e8e4dbaeb22d14651f7f43.md) | 392 | `declaration-track:e2e8e4dbaeb22d14651f7f436aab39a0e42f9c1ac6486008ca63a333c9053d0e` |
| 31 | `def` | [scaleMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/scalemajorant--819d9186f1cdfa3fddd9d550.md) | 398 | `declaration-track:819d9186f1cdfa3fddd9d550a784886112c5cf168cf51387a12d3b0d928ef56d` |
| 32 | `theorem` | [scaleMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/scalemajorant-nonneg--52dcb063b4d510859748bc37.md) | 402 | `result-track:52dcb063b4d510859748bc37f1badbdf1a583c8bedd3519a15bc9b75c6632894` |
| 33 | `theorem` | [scaleMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/scalemajorant-integrable--478d9f62d94e1db78bc23c29.md) | 410 | `result-track:478d9f62d94e1db78bc23c2993993b469cd66a3d43d6dcbca08c7be7abaebb99` |
| 34 | `theorem` | [occurrenceIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/occurrenceintegrand-norm-le--8ed764c5e9a9b3ff97c37459.md) | 439 | `result-track:8ed764c5e9a9b3ff97c37459674dbaaa4bb8721d2f02573c9cf3a563786c1e9e` |
| 35 | `theorem` | [integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/integral-norm-le--7966a9e7f885b7a6a7f015ae.md) | 472 | `result-track:7966a9e7f885b7a6a7f015ae9c644003ed60be0399590e54f12d3d966288da16` |
| 36 | `theorem` | [integral_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/integral-norms-summable--61f76698d639f4428db8ff79.md) | 487 | `result-track:61f76698d639f4428db8ff795f995338df5a5aacffa1ed6d3f8d4f8803125be1` |
| 37 | `theorem` | [summedIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/summedintegrand-eq--e1ea786a89b48eeca59c70e2.md) | 502 | `result-track:e1ea786a89b48eeca59c70e21e8a4bca1f93bcdffaed7e681a91c95acabf5180` |
| 38 | `theorem` | [integral_tsum_occurrences](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/integral-tsum-occurrences--21ebae8d3ab6b72d8ed1ac59.md) | 515 | `result-track:21ebae8d3ab6b72d8ed1ac596b8789f8546f6b61a0387a404ac6fdeb199a0e1b` |
| 39 | `theorem` | [integrals_enorm_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/integrals-enorm-ne-top--ff50f64f9848d87f5e19bb6f.md) | 528 | `result-track:ff50f64f9848d87f5e19bb6f33f7167803f741b8f0b4397f6cd7203693a95187` |
| 40 | `theorem` | [summedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/summedintegrand-integrable--5d94cc1e5d6e3cf18868dc54.md) | 542 | `result-track:5d94cc1e5d6e3cf18868dc54d3eedf5690cbbc3f65c5dbae934dc05705032519` |
| 41 | `theorem` | [weightedSource_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/weightedsource-laplace-integrable--1e44f2d188061003c540130f.md) | 567 | `result-track:1e44f2d188061003c540130f03ddb37edcdaa885694d9c8bd84a24285329e77f` |
| 42 | `theorem` | [equation20](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/equation20--dfde15f36b717c317f6ea6b6.md) | 579 | `result-track:dfde15f36b717c317f6ea6b68fedae14d1be0016023e42790adab55e5825faeb` |
| 43 | `theorem` | [equation20_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/equation20-norms-summable--78544974b34ee03333cf3076.md) | 599 | `result-track:78544974b34ee03333cf3076526b16e92fa1240b18f58b6dcc1df11286f23aa8` |
| 44 | `def` | [InitialFormulaCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/initialformulacheckpoint--4e834f5f5d42dacf62c45857.md) | 612 | `declaration-track:4e834f5f5d42dacf62c45857674aaf837eea887bb139f97432a8c3b12486f9a7` |
| 45 | `theorem` | [initial_formula_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/declarations/initial-formula-checkpoint--684be269a3e51e725c77f963.md) | 628 | `result-track:684be269a3e51e725c77f9633c110eda6561c89e9c0990b6195d9c6dfd69d7d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
