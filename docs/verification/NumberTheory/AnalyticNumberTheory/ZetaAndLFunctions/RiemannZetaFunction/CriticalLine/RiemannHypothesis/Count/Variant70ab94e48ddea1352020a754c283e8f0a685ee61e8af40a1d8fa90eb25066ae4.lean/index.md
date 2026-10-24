# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Count.Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b42d31544152997406a974300dcd4454a01c43",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b42d31544152997406a974300dcd4454a01c43`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Contour` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Generic` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.ArgBound` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Sides` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Backlund` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gw](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/gw--add84d5c55d4b8c1bde440bc.md) | 43 | `declaration-track:add84d5c55d4b8c1bde440bc19b5a1e1283ea03b596b082cc530a176b8a92b9e` |
| 2 | `lemma` | [Gw_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/gw-analyticat--44e92b6332e4e9932f061880.md) | 45 | `result-track:44e92b6332e4e9932f061880a5bb071beca9a794132958ee3b0c144a9b6a31bb` |
| 3 | `lemma` | [logDeriv_hardyW_eq_of_zeta_ne](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/logderiv-hardyw-eq-of-zeta-ne--47eb513c85a590b7334e405a.md) | 50 | `result-track:47eb513c85a590b7334e405a13bd6baff9a48f54511add166e47ce386a8e7681` |
| 4 | `theorem` | [vertical_boundW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/vertical-boundw--de9232ced7ea46c44c61ce32.md) | 63 | `result-track:de9232ced7ea46c44c61ce32e2b41569fd5e93d7228871103bce821d007a1a2c` |
| 5 | `theorem` | [hardyW_generic_inputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/hardyw-generic-inputs--68c773ee1385b1c1333ef6be.md) | 122 | `result-track:68c773ee1385b1c1333ef6be29b4750b0b03af90c58c38c55634b1dae06f47d0` |
| 6 | `theorem` | [horizontal_boundW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/horizontal-boundw--b20f674241b24152d395011a.md) | 132 | `result-track:b20f674241b24152d395011a4c5cdbd9a9ecd0614b55ec5efeb5760f45a08daf` |
| 7 | `theorem` | [local_countW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/local-countw--1d4a32d178129182102d0929.md) | 141 | `result-track:1d4a32d178129182102d0929c39de6881bd7dc830d8384ce824a19ef6beb23f3` |
| 8 | `theorem` | [local_count_wZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/local-count-wzeros--79acd23abf928296c1a3b5c6.md) | 147 | `result-track:79acd23abf928296c1a3b5c6b6c49e7de4f93e77edb5b156f8c5ae4a5379aa48` |
| 9 | `theorem` | [halfContour_omegaW_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/halfcontour-omegaw-split--196dc4252aaa327bbb07a9aa.md) | 153 | `result-track:196dc4252aaa327bbb07a9aa1f7ce119589b16959eefe3c9c33bf3494d08841e` |
| 10 | `theorem` | [halfContour_hardyW_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/halfcontour-hardyw-bound--9625aeed974ead285e1f5560.md) | 219 | `result-track:9625aeed974ead285e1f5560dccfa10ab3266d95e99bfda6f39cc5e05e5dec94` |
| 11 | `theorem` | [hardyW_rvM_main](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/hardyw-rvm-main--9d627241108481a7f9332740.md) | 258 | `result-track:9d627241108481a7f9332740db79eabbdf7082321bde2d7f5eb861a14b5f518d` |
| 12 | `theorem` | [riemannVonMangoldt_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/riemannvonmangoldt-w--bef1d537f21a0348d48a2a10.md) | 276 | `result-track:bef1d537f21a0348d48a2a1042b1aa2eef26074a6d799b178e5ac9475dae08c3` |
| 13 | `theorem` | [riemannVonMangoldt_W'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant70ab94e48ddea1352020a754c283e8f0a685ee61e8af40a1d8fa90eb25066ae4.lean/declarations/riemannvonmangoldt-w--fbf7a2c18c5171e7d5e39145.md) | 284 | `result-track:fbf7a2c18c5171e7d5e3914563877d4cc11116fef7810b8881548524efdc88c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
