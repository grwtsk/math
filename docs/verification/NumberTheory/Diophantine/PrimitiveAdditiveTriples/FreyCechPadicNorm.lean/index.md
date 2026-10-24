# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPadicNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "442a65803df5872febff260baf3473d5e0b0966d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `442a65803df5872febff260baf3473d5e0b0966d`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Padics.WeightedPermutationNorm`](../../../../../mathematics/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPrimeBudget`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Slot](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/slot--d57c94fc9202e48034ed758b.md) | 26 | `declaration-track:d57c94fc9202e48034ed758bb062950b0ffca4ba71776cc388f4532bb3b49fa4` |
| 2 | `abbrev` | [RationalData](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/rationaldata--fbfee4fff8e3f14f51469312.md) | 27 | `declaration-track:fbfee4fff8e3f14f51469312d69eee04eda84c0b0591eb92bd63c43ddcb102f8` |
| 3 | `instance` | [slotsNonempty](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/slotsnonempty--e76a495f7359ea2d6929978a.md) | 29 | `declaration-track:e76a495f7359ea2d6929978a786e45ebdb4a0c0c8cb376df71ff8e6a6a5c3bb8` |
| 4 | `def` | [rawCoordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/rawcoordinates--36550b0c5e7d7bea495d888e.md) | 33 | `declaration-track:36550b0c5e7d7bea495d888ecd436f82b7f2b6aebf511cdf287b23fb35e19b2a` |
| 5 | `def` | [frameQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/frameq--a1b8e21f2344027dbd047680.md) | 37 | `declaration-track:a1b8e21f2344027dbd047680f371954c5ecd45494bef68980a2e70ecd382f845` |
| 6 | `def` | [minimumQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/minimumq--1e4b4b622e800f8a017d1697.md) | 52 | `declaration-track:1e4b4b622e800f8a017d169769d3de19b43217090ec3362cada5efb301d081e0` |
| 7 | `def` | [reducedPortQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/reducedportq--50de7ba2ff1b3aa1d1b5fda3.md) | 56 | `declaration-track:50de7ba2ff1b3aa1d1b5fda33dc8cf2ac4421e536120119bda5ea599c353fb4c` |
| 8 | `def` | [combinedQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/combinedq--a5a19de4f58ab1cbd7174e56.md) | 62 | `declaration-track:a5a19de4f58ab1cbd7174e5654213feb97ce7bc2c43ec69e4ee885a1cf5ed1c9` |
| 9 | `def` | [weights](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/weights--d5c3e7cd45cf244f22aed639.md) | 65 | `declaration-track:d5c3e7cd45cf244f22aed6391a84dcfbf993135d7b76ab2354fdf9883fbd8c96` |
| 10 | `def` | [permutation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/permutation--f06007b7ac9822c30defd0b9.md) | 68 | `declaration-track:f06007b7ac9822c30defd0b956b823bd5795765186b3d30763d897bda628f791` |
| 11 | `theorem` | [combinedQ_integer](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/combinedq-integer--63fb982e7adc17a2581e5167.md) | 71 | `result-track:63fb982e7adc17a2581e516793e6701dd1b81f70b7e998a165c278e110f0e7a6` |
| 12 | `theorem` | [frame_combinedQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/frame-combinedq--6e1ddcb329ffecdc71d6804e.md) | 87 | `result-track:6e1ddcb329ffecdc71d6804e073b9d5596eab4d422441083b60f9df3cfcdaf89` |
| 13 | `theorem` | [weights_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/weights-ne-zero--edd2a5dd015d1a2461aa978c.md) | 96 | `result-track:edd2a5dd015d1a2461aa978c004aa4f2322bfefda98ae896f5f23f17692b6243` |
| 14 | `def` | [inverseQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inverseq--254ba572c17a069b30ac2f90.md) | 103 | `declaration-track:254ba572c17a069b30ac2f90df22f550144b34f1b09416f456c3ec3190731340` |
| 15 | `theorem` | [inverseQ_combinedQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inverseq-combinedq--717e2fa1f8d194f4e8206306.md) | 107 | `result-track:717e2fa1f8d194f4e82063061993caa3e8300c4fee2a558189dd2908d6dbfc1d` |
| 16 | `theorem` | [combinedQ_inverseQ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/combinedq-inverseq--4b85087b80118e7b7bd26ebe.md) | 112 | `result-track:4b85087b80118e7b7bd26ebe1de2be6710dc183c600b1ef69a6ea46cc238c7e0` |
| 17 | `def` | [targetNorm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/targetnorm--8c7825933b5728c20fb21565.md) | 122 | `declaration-track:8c7825933b5728c20fb215652b42c88b1d885b7a3a4a56fe1bd7e550a316d3ff` |
| 18 | `theorem` | [frame_isometry](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/frame-isometry--f9d944509698540d1cde354d.md) | 126 | `result-track:f9d944509698540d1cde354d94cf9b1944eb23f47ee9f891beadaeffcb217d2c` |
| 19 | `def` | [InverseBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inversebound--64510bbf091da52d70711881.md) | 159 | `declaration-track:64510bbf091da52d7071188156b0556e16e01e2f86b12876074460540d5a52ef` |
| 20 | `theorem` | [inverse_bound_columns](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inverse-bound-columns--6c6a0b4e0c483fb42bef3324.md) | 162 | `result-track:6c6a0b4e0c483fb42bef332449bf886d9fc509672d364bca00a6a1327451405f` |
| 21 | `def` | [inverseFactor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inversefactor--cf26739171a1e9ab9ebab616.md) | 178 | `declaration-track:cf26739171a1e9ab9ebab616282236e18be1b86a03562271e9114e6e224d67a4` |
| 22 | `theorem` | [signed_clearing_norm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/signed-clearing-norm--62403c88bca59e94c32152c2.md) | 181 | `result-track:62403c88bca59e94c32152c223c446ac3c9ebf2728dbc496aee50fb77a30a8d7` |
| 23 | `theorem` | [weight_dvd_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/weight-dvd-clearing--9e3512848a86a62578180ab4.md) | 190 | `result-track:9e3512848a86a62578180ab4ec0644c36ceac56807855af7e6c92311e40360dd` |
| 24 | `theorem` | [inverse_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inverse-bound-iff--9f2519e6f4dfbcaa5becf4df.md) | 199 | `result-track:9f2519e6f4dfbcaa5becf4df3c8d0ca22e1554cfee47e54a8f881125453d2ed7` |
| 25 | `theorem` | [inverseFactor_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inversefactor-depth--4bab677202581919b3d08fd0.md) | 223 | `result-track:4bab677202581919b3d08fd0f17ee90414102e3a3883516eeb526ffb8f9bfd90` |
| 26 | `theorem` | [forward_nonexpanding](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/forward-nonexpanding--930f1162c320ba1dad28b27b.md) | 231 | `result-track:930f1162c320ba1dad28b27b8a5f047a0b0609979396f604815922a36b27b56f` |
| 27 | `theorem` | [forward_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/forward-bound-iff--543f321fb411276423d8986f.md) | 238 | `result-track:543f321fb411276423d8986fbd24236511b98064cce156eef73985b0c5c7cfc0` |
| 28 | `theorem` | [inverse_estimate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inverse-estimate--6e4842329b567173f7df7b57.md) | 254 | `result-track:6e4842329b567173f7df7b577fa6eefb1eb7483e9246c03a1040e5b0327106b5` |
| 29 | `theorem` | [inverseFactor_off_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/inversefactor-off-support--277c7fd2bc1c5a9a7bf6736a.md) | 260 | `result-track:277c7fd2bc1c5a9a7bf6736ac98d32ae24d4b95aba215e8dc54f01b6e087a398` |
| 30 | `theorem` | [log_inverseFactor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/log-inversefactor--fbda691713d137a72b0832b3.md) | 269 | `result-track:fbda691713d137a72b0832b3a872a682830a3423513d202dd2f746fa0532ae01` |
| 31 | `theorem` | [log_inverseFactor_nonneg](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/log-inversefactor-nonneg--3cf683dd1578b76c9425571b.md) | 277 | `result-track:3cf683dd1578b76c9425571bdd7608ad74d2492faa466bb933243043ba36f442` |
| 32 | `def` | [finiteInverseCost](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/finiteinversecost--d0d2e7e7058ab3f1887f6231.md) | 285 | `declaration-track:d0d2e7e7058ab3f1887f623102972da897af3070cbe5dace445d4edc6800bf0e` |
| 33 | `theorem` | [finiteInverseCost_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/declarations/finiteinversecost-eq--9e24d97fa6bc1c2a45de10e0.md) | 290 | `result-track:9e24d97fa6bc1c2a45de10e02cb5aa9e3ea765c7ba5bf6752794961b0bf60867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
