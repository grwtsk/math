# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateLaplaceStatements.Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fc49080214d1fd4d1118368de11e9dfe6a06866",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fc49080214d1fd4d1118368de11e9dfe6a06866`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.Inversion` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFrequency](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/angularfrequency--57fca1516b21b9ae87439ba7.md) | 18 | `declaration-track:57fca1516b21b9ae87439ba76afd4b8fd67fe4ef61b9ea30c3cb3ae9f05c2661` |
| 2 | `theorem` | [boundaryInverse_eq_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/boundaryinverse-eq-fourierinv--969ba1d076b7cb0ebcbfed05.md) | 22 | `result-track:969ba1d076b7cb0ebcbfed05297fd6f2cc1cacd13b3bcaa5d7577cbfca321485` |
| 3 | `theorem` | [candidate_frequency_admission](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-frequency-admission--f6759f5bca2f34478da5c821.md) | 41 | `result-track:f6759f5bca2f34478da5c8210156a2700f68e36aa1d60ced63081a1f9269b098` |
| 4 | `def` | [fullBoundaryVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/fullboundaryvector--c99a85590d68de06acdf75ef.md) | 64 | `declaration-track:c99a85590d68de06acdf75ef2b6843bf02bdf4433c068d85145b03d1772cc343` |
| 5 | `theorem` | [fullBoundaryVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/fullboundaryvector-ae--ddc15efb037a31236b60e3bd.md) | 70 | `result-track:ddc15efb037a31236b60e3bdd5a2e5e71ce28c45cbaf301d9b325121c92ace48` |
| 6 | `theorem` | [candidate_boundaryInverse_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-memlp--415ac3102848268bf3b04abd.md) | 81 | `result-track:415ac3102848268bf3b04abd7d89e88adffa685020df546e0bdd1d021bbda4c1` |
| 7 | `theorem` | [candidate_boundaryInverse_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-continuous--d76e8c6f66acb0fa4d32e41d.md) | 87 | `result-track:d76e8c6f66acb0fa4d32e41dd9ce192096c58bed9ec18de7c87a8e0e85e17cf1` |
| 8 | `theorem` | [norm_sq_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/norm-sq-tolp--ce623bf27f3f60f66d72db40.md) | 95 | `result-track:ce623bf27f3f60f66d72db40a10c941069b1be623fc2bd7f4304cba7cd19b92c` |
| 9 | `theorem` | [fullBoundaryVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/fullboundaryvector-norm-sq--e5435c64d00e18c9cfa63ade.md) | 106 | `result-track:e5435c64d00e18c9cfa63ade3c61cc899dd1c76cc5f7c9c19237038051415939` |
| 10 | `def` | [controller](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/controller--86928a21c67ab8dfa19978bd.md) | 124 | `declaration-track:86928a21c67ab8dfa19978bd90a1800b02905f7de98d6eb7af03b2f03ed38d77` |
| 11 | `theorem` | [controller_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/controller-ae--49d028dcb2e8308a9828cc99.md) | 129 | `result-track:49d028dcb2e8308a9828cc997fb8db08988a1baf7a7ca4933977474cb1d6163d` |
| 12 | `theorem` | [zeroExtension_controller](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/zeroextension-controller--dd6690fa5054d0a480625d9e.md) | 136 | `result-track:dd6690fa5054d0a480625d9e12c257e014ea4488664d2582a0d6d3345b5d49ce` |
| 13 | `theorem` | [controller_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/controller-norm-sq--78433dc29cf5ec773310c350.md) | 153 | `result-track:78433dc29cf5ec773310c350a02cd6d217a8def77dd6e32757492cb8552e2e10` |
| 14 | `theorem` | [boundaryInverse_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/boundaryinverse-shift--3f9d5da19169d2200b98fc56.md) | 172 | `result-track:3f9d5da19169d2200b98fc56da7b9b53822db322bd41eab699a4def02ab27b93` |
| 15 | `theorem` | [candidate_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-shift--62de4d4cc225a58a2030e4f7.md) | 216 | `result-track:62de4d4cc225a58a2030e4f7841790b9efa5df50147f7590f6acc015dd1886a9` |
| 16 | `theorem` | [candidate_boundaryInverse_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-shift--508d384e8a675ee779c179fd.md) | 222 | `result-track:508d384e8a675ee779c179fdd0747ea72ecc32b395432f2eb44d2f890f164a28` |
| 17 | `theorem` | [candidate_boundaryInverse_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-bounded--4569a1d29beda2f4b4e89084.md) | 243 | `result-track:4569a1d29beda2f4b4e89084b5272349fc8e047c035c9885aa90a4b7e6c14b4a` |
| 18 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-half-shift--60048468e7204ed14690055c.md) | 263 | `result-track:60048468e7204ed14690055c672054daae27f5fc8d9a88bfbfb6f1006427eee9` |
| 19 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-exp-bound--fd65ccb29d85dd478fe22b09.md) | 279 | `result-track:fd65ccb29d85dd478fe22b09868759e058c265e91ff0f9c785b4465d122ef3ef` |
| 20 | `theorem` | [candidate_boundaryInverse_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-integrable--e7d4763f4a301213535910b6.md) | 291 | `result-track:e7d4763f4a301213535910b62c68fd8aa8b4db19454c5e9d23ba2f76367cc18b` |
| 21 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-laplace-integrable--8cfe11dfdf7122f5e640ce2e.md) | 310 | `result-track:8cfe11dfdf7122f5e640ce2e476b1465864d0ad512516d6d3180554c8cb56d7d` |
| 22 | `theorem` | [candidate_boundaryInverse_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-fourier--74b5529f953b8786854165f0.md) | 342 | `result-track:74b5529f953b8786854165f0d29dbe5bf85d2e7b1222cb60b4f21b8c9bffbad1` |
| 23 | `theorem` | [candidate_boundaryInverse_tilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-tilt--cf156553c5a486d052bc3a0b.md) | 378 | `result-track:cf156553c5a486d052bc3a0b61e53779226a3889c8f015f470537133ff6aaeb2` |
| 24 | `theorem` | [candidate_boundaryInverse_laplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/candidate-boundaryinverse-laplace--4f955123981ed0eeae55ac21.md) | 391 | `result-track:4f955123981ed0eeae55ac212798c88ee1c1941e6ca92856e08252d147ac1b82` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/example--f72e4683960effc1c1b7eac3.md) | 424 | `declaration-track:f72e4683960effc1c1b7eac363a98f91e39f6de5da8cffa1af7809660ec2a415` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/example--ca7147bebb9f88ee882fcd07.md) | 429 | `declaration-track:ca7147bebb9f88ee882fcd0752cbb2b551fe75b23e578398173a1512663e6118` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/example--3e89ae54225a486df8f54e60.md) | 434 | `declaration-track:3e89ae54225a486df8f54e603c9f93e3bb1e6e6ed7a3c09119a4389ce4444486` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/declarations/example--c9bba807fc1ae89b4e43844d.md) | 439 | `declaration-track:c9bba807fc1ae89b4e43844d1ed9431c2d17ed66616dd168c05846f68e52a8e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
