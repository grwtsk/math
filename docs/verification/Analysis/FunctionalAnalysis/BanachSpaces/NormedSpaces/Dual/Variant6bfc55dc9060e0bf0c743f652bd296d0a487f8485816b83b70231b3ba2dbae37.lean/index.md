# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Dual.Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c5674340d58727bcd482d64d73e1b55153be353",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c5674340d58727bcd482d64d73e1b55153be353`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Polar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.AbsConvex` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Dual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/dual--7f7a1d423a612cab6e2f312f.md) | 59 | `declaration-track:7f7a1d423a612cab6e2f312fee2de2d6c67722895e3aed3b33ba5cc0f9582038` |
| 2 | `def` | [inclusionInDoubleDual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/inclusionindoubledual--e56050ca926a4f0704761562.md) | 63 | `declaration-track:e56050ca926a4f0704761562255686b5e6fe5475a9fdbfc34b3fdad44e0c57f4` |
| 3 | `theorem` | [dual_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/dual-def--cd5fb4071efa6517949f5ff5.md) | 67 | `result-track:cd5fb4071efa6517949f5ff5f4869021ff3f3c2ab3f79823b38fd745f4173b25` |
| 4 | `theorem` | [inclusionInDoubleDual_norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/inclusionindoubledual-norm-eq--80ef967b1ab9f356f99eab91.md) | 70 | `result-track:80ef967b1ab9f356f99eab91b2cb2034718fa2777c5a3e5e8fab7e7230bf2aa5` |
| 5 | `theorem` | [inclusionInDoubleDual_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/inclusionindoubledual-norm-le--7772cae751d5c56056e5f99e.md) | 74 | `result-track:7772cae751d5c56056e5f99e52e151b666c445cc45cc8773cd79c0a9663b4372` |
| 6 | `theorem` | [double_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/double-dual-bound--69fe2c3e5fd7b3d974883b71.md) | 78 | `result-track:69fe2c3e5fd7b3d974883b71063d631fd37e83b55369c2f22661c30d2df9d46d` |
| 7 | `def` | [dualPairing](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/dualpairing--3336de8c763dbc964cf9d56b.md) | 82 | `declaration-track:3336de8c763dbc964cf9d56b81a2b502928f316602970260408b7170c436a972` |
| 8 | `theorem` | [dualPairing_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/dualpairing-apply--f34d5a2b313cc3dfd0f7ff55.md) | 86 | `result-track:f34d5a2b313cc3dfd0f7ff55c5109e5938fdb96a59146a1863c3f703578fde21` |
| 9 | `theorem` | [dualPairing_separatingLeft](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/dualpairing-separatingleft--f8dc17de688d470ece57dc61.md) | 89 | `result-track:f8dc17de688d470ece57dc617007739e851561d64903ffc08161428f24892e04` |
| 10 | `theorem` | [norm_le_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/norm-le-dual-bound--d4b73a901aae0d7b0bfd1a01.md) | 101 | `result-track:d4b73a901aae0d7b0bfd1a014d5292f8674ef1e522aa169ff64cb772f9f81f20` |
| 11 | `theorem` | [eq_zero_of_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/eq-zero-of-forall-dual-eq-zero--76e0f1cfbfbcba7aaa14b68d.md) | 113 | `result-track:76e0f1cfbfbcba7aaa14b68d960e6921ed3c630b77b6e766785d8cac79860a8a` |
| 12 | `theorem` | [eq_zero_iff_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/eq-zero-iff-forall-dual-eq-zero--798cca6ef12781d07180b7d5.md) | 116 | `result-track:798cca6ef12781d07180b7d5210fb5688f45a9270c2e2cd195b5976f8dcc4cb3` |
| 13 | `theorem` | [eq_iff_forall_dual_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/eq-iff-forall-dual-eq--0f326789136a7cb5f1f65a76.md) | 120 | `result-track:0f326789136a7cb5f1f65a76634c9253f54fa7e5927752a3d3128b4e6c6325dd` |
| 14 | `def` | [inclusionInDoubleDualLi](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/inclusionindoubledualli--009d79109cdf62c0a627b5e1.md) | 125 | `declaration-track:009d79109cdf62c0a627b5e1966ce1ef2334f279cd79c823bb2b2e01892cf122` |
| 15 | `def` | [polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar--e6bab635565d02df9c665fd7.md) | 145 | `declaration-track:e6bab635565d02df9c665fd7db4d39560cfef904fc2c949bbe22a886b3c7cbd9` |
| 16 | `def` | [polarSubmodule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polarsubmodule--c6a897b0c594d8fbeae855e2.md) | 152 | `declaration-track:c6a897b0c594d8fbeae855e294ad6b124de03a50e4aa1314ab5554099b8cc0d6` |
| 17 | `lemma` | [polarSubmodule_eq_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polarsubmodule-eq-polar--7c753e01f95cf1516fa71f1b.md) | 159 | `result-track:7c753e01f95cf1516fa71f1bd7774e02b48a086f15d7b882b127e9cfb3d72218` |
| 18 | `theorem` | [mem_polar_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/mem-polar-iff--92d820d09b86c551e34b06e2.md) | 162 | `result-track:92d820d09b86c551e34b06e2cf7db5d24a0670242d675f0ff65e36bbf68b0dd3` |
| 19 | `lemma` | [polarSubmodule_eq_setOf](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polarsubmodule-eq-setof--5cf2978f41f7616714ed4b87.md) | 165 | `result-track:5cf2978f41f7616714ed4b87a3288898a7e2e75cff21ef6778c908c7c10ea9f0` |
| 20 | `lemma` | [mem_polarSubmodule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/mem-polarsubmodule--90f6903f9d114caf42af8e62.md) | 169 | `result-track:90f6903f9d114caf42af8e62453e0a17d1fcc187be3fc644d3c57215b5f247cb` |
| 21 | `theorem` | [zero_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/zero-mem-polar--6142828ecfffdefabc674b7d.md) | 176 | `result-track:6142828ecfffdefabc674b7dbf2450212bdaac76b877d83484201f7d159ff91f` |
| 22 | `theorem` | [polar_nonempty](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-nonempty--f2959b813e1414daf7a3645a.md) | 179 | `result-track:f2959b813e1414daf7a3645a4024696679b4b6776c5e1884ab24fe24e506c553` |
| 23 | `theorem` | [polar_univ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-univ--104a97f3e1bf31f344f1e3f4.md) | 183 | `result-track:104a97f3e1bf31f344f1e3f43dd979e716833eede07b5f4e119a6d61ff390330` |
| 24 | `theorem` | [isClosed_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/isclosed-polar--b473d20c9aaa4c9f91f4b443.md) | 187 | `result-track:b473d20c9aaa4c9f91f4b4433ae8590a0f706d268655f2596b0cbd5bfbb4cba9` |
| 25 | `theorem` | [polar_closure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-closure--15f41e7ae6ee90aff5821fbf.md) | 194 | `result-track:15f41e7ae6ee90aff5821fbf5b63a93b6243343e70e1a1701e38a9d325de5409` |
| 26 | `theorem` | [smul_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/smul-mem-polar--f897b88cf7d59cef3c022313.md) | 205 | `result-track:f897b88cf7d59cef3c0223138eaca5025a60916e878c90c9204991bd3b8078d1` |
| 27 | `theorem` | [polar_ball_subset_closedBall_div](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-ball-subset-closedball-div--8bdb1b26fd47bb0c326489c5.md) | 219 | `result-track:8bdb1b26fd47bb0c326489c57fe620f54d04400cbb78ca48be2b28440a3db0d2` |
| 28 | `theorem` | [closedBall_inv_subset_polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/closedball-inv-subset-polar-closedball--da525c419d562f5bc7924092.md) | 232 | `result-track:da525c419d562f5bc79240926c4b9bd842ef016cb13752bc6b7cadf124631161` |
| 29 | `theorem` | [polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-closedball--92e7c41cbf92d7b452351051.md) | 244 | `result-track:92e7c41cbf92d7b4523510512916befc497fa204c6afd9e430da19e83ea83848` |
| 30 | `theorem` | [polar_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-ball--3493d116f70580775c9255cc.md) | 252 | `result-track:3493d116f70580775c9255cc128672123a0d6c6e3b039da2fa533d29b48c61b5` |
| 31 | `theorem` | [isBounded_polar_of_mem_nhds_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/isbounded-polar-of-mem-nhds-zero--884bd7f5935cddbc7ea6236c.md) | 271 | `result-track:884bd7f5935cddbc7ea6236cafe7481e680bf195c8029537e5586bf48c47cc36` |
| 32 | `theorem` | [polar_empty](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-empty--cdb82e43c4b137db543c93a7.md) | 280 | `result-track:cdb82e43c4b137db543c93a7263d32a06a73412ca733008acf816e3b3d2ebc7d` |
| 33 | `theorem` | [polar_singleton](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-singleton--8060cc1b2535670c68aa4cab.md) | 284 | `result-track:8060cc1b2535670c68aa4cab5ca70f4315e496ac098f434491cc35e408ca45e0` |
| 34 | `theorem` | [mem_polar_singleton](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/mem-polar-singleton--8f30aacbeb129fee66e088ec.md) | 287 | `result-track:8f30aacbeb129fee66e088ec15f831181e0173600cb2dead5e965a816f33cc14` |
| 35 | `theorem` | [polar_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-zero--2eefc01a61435ede39dc7432.md) | 290 | `result-track:2eefc01a61435ede39dc7432d7132d626046e0d1162c4fb89322c403442abecf` |
| 36 | `theorem` | [sInter_polar_eq_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/sinter-polar-eq-closedball--f61762edbe9a0e1526c8878d.md) | 293 | `result-track:f61762edbe9a0e1526c8878d446baf188e7dc375c8586e10576a480dfa6c7398` |
| 37 | `theorem` | [polar_AbsConvex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant6bfc55dc9060e0bf0c743f652bd296d0a487f8485816b83b70231b3ba2dbae37.lean/declarations/polar-absconvex--9c64d6fe6a255fe48bf6e300.md) | 316 | `result-track:9c64d6fe6a255fe48bf6e300e376bdda1f944888f414d11bd5995199fb1bc79f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
