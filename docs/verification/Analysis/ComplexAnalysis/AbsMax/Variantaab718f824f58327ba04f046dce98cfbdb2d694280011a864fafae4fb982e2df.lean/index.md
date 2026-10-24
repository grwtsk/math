# Verification target: GRWTSK.Analysis.ComplexAnalysis.AbsMax.Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b683f4c268f85a327789a1981aedfb37d786920e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b683f4c268f85a327789a1981aedfb37d786920e`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ExtrClosure` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_max_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-max-aux--ab8957591aea76844e8a812e.md) | 113 | `result-track:ab8957591aea76844e8a812e9abe8a5963eff829f32fe4f65b3a1262adb7ae4c` |
| 2 | `theorem` | [norm_max_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-max-aux--4be0d495e867a2b17f5373aa.md) | 150 | `result-track:4be0d495e867a2b17f5373aa73d959418ebf4e518c93a17d59290b383479d373` |
| 3 | `theorem` | [norm_max_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-max-aux--9aa51aa046d54c72a0b4d174.md) | 164 | `result-track:9aa51aa046d54c72a0b4d17409d306c369c8e9f9424e1d2e57d995260f2bf28c` |
| 4 | `theorem` | [norm_eqOn_closedBall_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-eqon-closedball-of-ismaxon--ae273f86fd2e0191f4586c10.md) | 185 | `result-track:ae273f86fd2e0191f4586c100e38f43f756815be41c3da188730fc327cb3094e` |
| 5 | `theorem` | [norm_eq_norm_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-eq-norm-of-ismaxon-of-ball-subset--620a9a6435fe8debeee0a6ac.md) | 205 | `result-track:620a9a6435fe8debeee0a6acb3bc801ddf524a7b8ca963ed5f8c215744ee1305` |
| 6 | `theorem` | [norm_eventually_eq_of_isLocalMax](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-eventually-eq-of-islocalmax--4fec6e94957d00ee96b364e2.md) | 213 | `result-track:4fec6e94957d00ee96b364e29c05c97fc213e411cce10dc00804d226dd61e8b6` |
| 7 | `theorem` | [isOpen_setOf_mem_nhds_and_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/isopen-setof-mem-nhds-and-ismaxon-norm--59ff4053c99bfeaa8470b906.md) | 222 | `result-track:59ff4053c99bfeaa8470b90612d0ae53d3e75b814250a1b318ffefed69f399a3` |
| 8 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--70a6b51307d7a2be6e35ce97.md) | 232 | `result-track:70a6b51307d7a2be6e35ce97b1f2f243c91cb1cd6e4a86d6c7910ba40f76ee86` |
| 9 | `theorem` | [norm_eqOn_closure_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-eqon-closure-of-ispreconnected-of-ismaxon--4e6d3c2840fbd7561dac4b4b.md) | 254 | `result-track:4e6d3c2840fbd7561dac4b4bc0c9a2a46e69e3559cb718c3c64729de00c960f0` |
| 10 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--6ce21478be3a5d50e4ca28a7.md) | 281 | `result-track:6ce21478be3a5d50e4ca28a7f91ae827b7a0f746ee50767949b86f75adac7ad2` |
| 11 | `theorem` | [eqOn_closure_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eqon-closure-of-ispreconnected-of-ismaxon-norm--559bdd911474b6d3de1f21ad.md) | 293 | `result-track:559bdd911474b6d3de1f21ad4366338cd805df9809ffacd00973e145fa6ad641` |
| 12 | `theorem` | [eq_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eq-of-ismaxon-of-ball-subset--98a2a83389ea6b42a05d9714.md) | 304 | `result-track:98a2a83389ea6b42a05d9714c06b120a07d111a8734d6c018f76e5f07a04f618` |
| 13 | `theorem` | [eqOn_closedBall_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eqon-closedball-of-ismaxon-norm--ced14673bee94477404c9f1d.md) | 319 | `result-track:ced14673bee94477404c9f1d528920584a1003d001219f299d127c1d4698a01f` |
| 14 | `lemma` | [eq_const_of_exists_max](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eq-const-of-exists-max--aeae0d531d026ea7ce852bfe.md) | 326 | `result-track:aeae0d531d026ea7ce852bfe535d685483d84ba94c13c142879b5af5fca80d80` |
| 15 | `lemma` | [eq_const_of_exists_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eq-const-of-exists-le--17a9d1746024ab3f27cac5ed.md) | 335 | `result-track:17a9d1746024ab3f27cac5edada9a972c49b44ff5daf9debab146415320d01c0` |
| 16 | `theorem` | [eventually_eq_of_isLocalMax_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eventually-eq-of-islocalmax-norm--63f52e2a9924cee02efb882e.md) | 351 | `result-track:63f52e2a9924cee02efb882e75b3a2fbb266388505ebfe6e8e02b4503a403b44` |
| 17 | `theorem` | [eventually_eq_or_eq_zero_of_isLocalMin_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eventually-eq-or-eq-zero-of-islocalmin-norm--e0e9f0e6ed673e67b839b546.md) | 360 | `result-track:e0e9f0e6ed673e67b839b5469a3a67a2446575076c639342ea0021b161dcfcd3` |
| 18 | `theorem` | [exists_mem_frontier_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/exists-mem-frontier-ismaxon-norm--06508a9fbb0eb70601072396.md) | 385 | `result-track:06508a9fbb0eb7060107239618f8586c7fe2a495c8a4f3d0ee834e8619f897c2` |
| 19 | `theorem` | [norm_le_of_forall_mem_frontier_norm_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/norm-le-of-forall-mem-frontier-norm-le--452c0b79907471ba9b55a8c0.md) | 402 | `result-track:452c0b79907471ba9b55a8c0b1b107f24d2ee3c068ded7b3348cd06d832f8213` |
| 20 | `theorem` | [eqOn_closure_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eqon-closure-of-eqon-frontier--be973613828567c3684ae1a4.md) | 425 | `result-track:be973613828567c3684ae1a491588d4167a4f96a9d3bbcafaa9464bafcd1adea` |
| 21 | `theorem` | [eqOn_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variantaab718f824f58327ba04f046dce98cfbdb2d694280011a864fafae4fb982e2df.lean/declarations/eqon-of-eqon-frontier--6ed40e24e563b6cc7324576f.md) | 434 | `result-track:6ed40e24e563b6cc7324576f7e99610147d86776cc4ccde293fb0b83f61e562d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
