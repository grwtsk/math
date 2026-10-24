# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CovarianceBilinDual.Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80cde296bc69db2a1015dddbf0d3a68b4797da7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80cde296bc69db2a1015dddbf0d3a68b4797da7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean.json)

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
| 1 | `def` | [toLpₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/tolp--764c73f2fe23a3b188c1f8da.md) | 67 | `declaration-track:764c73f2fe23a3b188c1f8da4bb94a852ed6f6c169980c64e849a35e60f9278f` |
| 2 | `lemma` | [toLpₗ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/tolp-apply--3da4c9ef939bec69fd2536c1.md) | 76 | `result-track:3da4c9ef939bec69fd2536c175c3d47eb545d515b534ab7c43d24b58f89bd267` |
| 3 | `lemma` | [toLpₗ_of_not_memLp](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/tolp-of-not-memlp--8f44936f1df36a33790a0fc8.md) | 81 | `result-track:8f44936f1df36a33790a0fc801c2240addb195379b12aca9ba6a68805f83c908` |
| 4 | `lemma` | [norm_toLpₗ_le](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/norm-tolp-le--db1fb3ee5c296bb8cb1145e4.md) | 85 | `result-track:db1fb3ee5c296bb8cb1145e42c62d2f794747092f23cb4d8dc2a6e11be8c8b0d` |
| 5 | `def` | [toLp](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/tolp--acf5abc3450da202d2719b18.md) | 155 | `declaration-track:acf5abc3450da202d2719b18927bb15d5dd26242cb934f7e7e85cf5f330e6731` |
| 6 | `lemma` | [toLp_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/tolp-apply--19c65e08c22720aab486f1bc.md) | 169 | `result-track:19c65e08c22720aab486f1bcbe492e7816c259dd28dd8984592bff0c27eec3b7` |
| 7 | `lemma` | [toLp_of_not_memLp](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/tolp-of-not-memlp--041e18c0c12f269c7e05fa73.md) | 174 | `result-track:041e18c0c12f269c7e05fa73c9437a19bd9bae234ec1498e93bd3b9f80d8da91` |
| 8 | `def` | [uncenteredCovarianceBilinDual](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/uncenteredcovariancebilindual--f0b7523c5e49e92bb546aa02.md) | 191 | `declaration-track:f0b7523c5e49e92bb546aa02a203e87db9f8e4f0a835768d81270dd553f5e39a` |
| 9 | `lemma` | [uncenteredCovarianceBilinDual_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/uncenteredcovariancebilindual-apply--cbbc8eb089cde9c6523fd212.md) | 195 | `result-track:cbbc8eb089cde9c6523fd212c19b756f3c64741dd07c90a16c06f042324be89b` |
| 10 | `lemma` | [uncenteredCovarianceBilinDual_of_not_memLp](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/uncenteredcovariancebilindual-of-not-memlp--b0bae44dbd9c3e80fb70561e.md) | 205 | `result-track:b0bae44dbd9c3e80fb70561e2e03a8713f692299d40ba83e48987b851ea97b74` |
| 11 | `lemma` | [uncenteredCovarianceBilinDual_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/uncenteredcovariancebilindual-zero--d7effcf5afd06faa5239751d.md) | 210 | `result-track:d7effcf5afd06faa5239751d0fb4922551f9a136388b5ca0efdd3f2d5b73536f` |
| 12 | `lemma` | [norm_uncenteredCovarianceBilinDual_le](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/norm-uncenteredcovariancebilindual-le--52eadda7f3d6bebb1743d300.md) | 215 | `result-track:52eadda7f3d6bebb1743d300c175c21f6ed6a8369cb7420209b57f513ced73c9` |
| 13 | `def` | [covarianceBilinDual](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual--f586d7db0d5c4c6522514793.md) | 251 | `declaration-track:f586d7db0d5c4c6522514793470c623210a5a51d835704be7a4a65cfbeecdf2a` |
| 14 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.ToLp.Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.MeasureTheory.memLp_id_of_self_sub_integral](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/root-grwtsk-analysis-functionalanalysis-tolp-variantb5caf8c5b24cf9e7b042--e60152cb64c4eef815dea266.md) | 255 | `result-track:e60152cb64c4eef815dea266e63b3a1ecf35dc41229101f62227ffc817c2cb38` |
| 15 | `lemma` | [covarianceBilinDual_of_not_memLp'](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-of-not-memlp--8ec88f34d52de153acf236c8.md) | 304 | `result-track:8ec88f34d52de153acf236c8b3665f400ce39813b4842e72b4eecb3aeae76d19` |
| 16 | `lemma` | [covarianceBilinDual_of_not_memLp](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-of-not-memlp--af9955efe7c025ae5778f435.md) | 312 | `result-track:af9955efe7c025ae5778f435092966f75baa1b1d4fc5bec62b5db11540d2bbfd` |
| 17 | `lemma` | [covarianceBilinDual_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-zero--bc8a22aa1269ec463c94f634.md) | 319 | `result-track:bc8a22aa1269ec463c94f63416cfb4cea60389c4a0afa77acc25269cc027edf7` |
| 18 | `lemma` | [covarianceBilinDual_comm](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-comm--d8b5326240eca49c865908e8.md) | 322 | `result-track:d8b5326240eca49c865908e805569bb9c35fd5d7e2ece50fed596dffe584d0fd` |
| 19 | `lemma` | [covarianceBilinDual_self_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-self-nonneg--b05551b1114978a366db09db.md) | 331 | `result-track:b05551b1114978a366db09db17d50c1b0a1e88a43d6b1314e9920e3146a75578` |
| 20 | `lemma` | [isPosSemidef_covarianceBilinDual](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/ispossemidef-covariancebilindual--47fe226a203bf6c7924a1416.md) | 338 | `result-track:47fe226a203bf6c7924a141685680f09747db7f8e3d8ce7c4a3fde1f50777a55` |
| 21 | `lemma` | [covarianceBilinDual_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-apply--65ebcae98117ab6279e51034.md) | 344 | `result-track:65ebcae98117ab6279e510340d06de1c07410f4101bf3dcce0d739147bef8860` |
| 22 | `lemma` | [covarianceBilinDual_apply'](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-apply--088c50a24c0b4ba13315ba70.md) | 353 | `result-track:088c50a24c0b4ba13315ba7088c8fcd1378bd049f3499dcbb5882b9a62569727` |
| 23 | `lemma` | [covarianceBilinDual_eq_covariance](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-eq-covariance--28a5dba8c5ed2b291ae311a6.md) | 360 | `result-track:28a5dba8c5ed2b291ae311a6e7320038aca802297b1f6254c7492db9c323a9f8` |
| 24 | `lemma` | [covarianceBilinDual_self_eq_variance](../../../../../mathematics/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantc70ba4b586b150b01b8b0d7f524eeec5d76f21061290969fd4a2bfb355959f14.lean/declarations/covariancebilindual-self-eq-variance--6fff3767d0525374b84249be.md) | 364 | `result-track:6fff3767d0525374b84249bee0109622afc4aa2ad26bec265c2f40ec1a2b083f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
