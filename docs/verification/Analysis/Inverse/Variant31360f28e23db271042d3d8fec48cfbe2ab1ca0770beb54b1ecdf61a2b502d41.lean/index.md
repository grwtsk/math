# Verification target: GRWTSK.Analysis.Inverse.Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb9bba9211dc66f732b3570dcddecc878f80c76e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb9bba9211dc66f732b3570dcddecc878f80c76e`.

Source path: `GRWTSK/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftInv](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/leftinv--fb4ebedec2cb92fcf458556f.md) | 62 | `declaration-track:fb4ebedec2cb92fcf458556f9237a8814d0edaa691abee777e1657119e5ed28d` |
| 2 | `theorem` | [leftInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/leftinv-coeff-zero--1126ea5e8aeaf37881f07b2e.md) | 72 | `result-track:1126ea5e8aeaf37881f07b2e374275dcb6de73191d110fd9fc923c9363e94ef0` |
| 3 | `theorem` | [leftInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/leftinv-coeff-one--35821003017a2556c2d22490.md) | 76 | `result-track:35821003017a2556c2d2249023dba9384dce93a3fac3975156968ab6698236a8` |
| 4 | `theorem` | [leftInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/leftinv-removezero--095bf682476a01a5d1f81047.md) | 81 | `result-track:095bf682476a01a5d1f81047ef952f174c1d3871f8101e662adaf7dadcf65f2a` |
| 5 | `theorem` | [leftInv_comp](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/leftinv-comp--3b8e854642c2301963247469.md) | 98 | `result-track:3b8e854642c2301963247469d803af2ea654eaff68bdb0d18b5b5aca0aadd54c` |
| 6 | `def` | [rightInv](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/rightinv--a4f1ac75562c0a3873839560.md) | 169 | `declaration-track:a4f1ac75562c0a38738395606b9d1a59031829245d5a163a9724de7d3017cc4c` |
| 7 | `theorem` | [rightInv_coeff_zero](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/rightinv-coeff-zero--32df710943ad69ef74448ed8.md) | 178 | `result-track:32df710943ad69ef74448ed84c386f5328cb9b4a01590f756b4fe041bc11c041` |
| 8 | `theorem` | [rightInv_coeff_one](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/rightinv-coeff-one--018fd5478804e56f1e6a2f3e.md) | 182 | `result-track:018fd5478804e56f1e6a2f3e001e3b009f2b9960f98fa58eebabfa19472272fc` |
| 9 | `theorem` | [rightInv_removeZero](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/rightinv-removezero--b750677efc449056392e307e.md) | 187 | `result-track:b750677efc449056392e307e1509f192af3af87bf238e80bd9693f929a2f402a` |
| 10 | `theorem` | [comp_rightInv_aux1](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/comp-rightinv-aux1--02507e0cad53753c20e634f3.md) | 200 | `result-track:02507e0cad53753c20e634f32b9d8172337879abb841c51dfc568b8668568626` |
| 11 | `theorem` | [comp_rightInv_aux2](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/comp-rightinv-aux2--dd5afe83b8ca592fb2fe5c60.md) | 228 | `result-track:dd5afe83b8ca592fb2fe5c60003979c6ebaa27662db9a3592ae0f53608c8bc8a` |
| 12 | `theorem` | [comp_rightInv](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/comp-rightinv--03da20e9fbeda184b5db5665.md) | 244 | `result-track:03da20e9fbeda184b5db56653e72aba4d86e334352d496d61a55b54dc2186b0d` |
| 13 | `theorem` | [rightInv_coeff](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/rightinv-coeff--eecb4fe548034eeeee5c3104.md) | 262 | `result-track:eecb4fe548034eeeee5c3104a3b557dfa4b9f39d3d91ee398d0ace8c0235404e` |
| 14 | `theorem` | [leftInv_eq_rightInv](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/leftinv-eq-rightinv--a6aba339f4693bd35454b9ad.md) | 282 | `result-track:a6aba339f4693bd35454b9ad4c6e20aaaf69e8afc4ea93500e469dc99c07c17b` |
| 15 | `theorem` | [radius_right_inv_pos_of_radius_pos_aux1](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/radius-right-inv-pos-of-radius-pos-aux1--9b327ff4a91f9a6290a36a8d.md) | 365 | `result-track:9b327ff4a91f9a6290a36a8d960918f1227b7ca813aa75bead4e903cd1439153` |
| 16 | `theorem` | [radius_rightInv_pos_of_radius_pos_aux2](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/radius-rightinv-pos-of-radius-pos-aux2--26551100def2306fd9021e13.md) | 427 | `result-track:26551100def2306fd9021e13d7ce2d80da5adb385b4a0224b97b80287aff2e54` |
| 17 | `theorem` | [radius_rightInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/radius-rightinv-pos-of-radius-pos--41fd4474512820bd1c022292.md) | 481 | `result-track:41fd4474512820bd1c0222924a8bd436b4c0152d2d6ffbf789fb66f39102dcab` |
| 18 | `theorem` | [radius_leftInv_pos_of_radius_pos](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/radius-leftinv-pos-of-radius-pos--cbed3fa3b8d72fa46b2ed40d.md) | 552 | `result-track:cbed3fa3b8d72fa46b2ed40d20eadf96460d0f124bc5b28ed607400ec8ae2292` |
| 19 | `lemma` | [HasFPowerSeriesAt.tendsto_partialSum_prod_of_comp](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/hasfpowerseriesat-tendsto-partialsum-prod-of-comp--b89688889cdde124127bd28b.md) | 567 | `result-track:b89688889cdde124127bd28b88d4fd16e8ea0807fc09da52344c0db0f821ab5a` |
| 20 | `lemma` | [HasFPowerSeriesAt.eventually_hasSum_of_comp](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/hasfpowerseriesat-eventually-hassum-of-comp--6775381fb1a039e7a45425d6.md) | 614 | `result-track:6775381fb1a039e7a45425d6d85e6b50aaedb32a25ecc55e6a3874f72b652174` |
| 21 | `theorem` | [PartialHomeomorph.hasFPowerSeriesAt_symm](../../../../mathematics/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/declarations/partialhomeomorph-hasfpowerseriesat-symm--8bde83e9cdd2aef08c5fbe6b.md) | 655 | `result-track:8bde83e9cdd2aef08c5fbe6b7dc2766e23790ffaf57197f59bee746b2efae914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
