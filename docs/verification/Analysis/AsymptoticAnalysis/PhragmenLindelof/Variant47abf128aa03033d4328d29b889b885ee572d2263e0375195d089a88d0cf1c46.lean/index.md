# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PhragmenLindelof.Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1952e5764fb1dac746d8f0e239f06f23e5f14e50",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1952e5764fb1dac746d8f0e239f06f23e5f14e50`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SuperpolynomialDecay` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_sub_exp_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/isbigo-sub-exp-exp--9bd42d7c470b58b8a3ddb729.md) | 61 | `result-track:9bd42d7c470b58b8a3ddb7294619b08b1a5f0f728c0426ef59d2c31b152381d9` |
| 2 | `theorem` | [isBigO_sub_exp_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/isbigo-sub-exp-rpow--7cdd69358d1c22aae51e1924.md) | 76 | `result-track:7cdd69358d1c22aae51e192401aad196a76288aa00d9f9974ff3397dccacd958` |
| 3 | `theorem` | [horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/horizontal-strip--c914a38b34113040d56b0c83.md) | 109 | `result-track:c914a38b34113040d56b0c836a8b4c22b9c7dc49b421a72e036f116f326944f2` |
| 4 | `theorem` | [eq_zero_on_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-horizontal-strip--5a153443c5060e69791ad0f6.md) | 225 | `result-track:5a153443c5060e69791ad0f66bb827a09b4bb4563270443b228175f807af6eda` |
| 5 | `theorem` | [eqOn_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-horizontal-strip--6093e9eddc5aa2aecdc9ea80.md) | 243 | `result-track:6093e9eddc5aa2aecdc9ea80c35c8f0bb3b6f83402a2c32ec56c9adf1a88663f` |
| 6 | `theorem` | [vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/vertical-strip--c2e2c961f48899f3431f0eda.md) | 269 | `result-track:c2e2c961f48899f3431f0eda79c273c8291b99944a62b9e772a3847aaff8c62e` |
| 7 | `theorem` | [eq_zero_on_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-vertical-strip--1ac951034d20f33a09947571.md) | 297 | `result-track:1ac951034d20f33a09947571e363c9a18fe7998ee384c65470e91149af32d858` |
| 8 | `theorem` | [eqOn_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-vertical-strip--28995be61c7aa04ee65f97c1.md) | 315 | `result-track:28995be61c7aa04ee65f97c1cd595aab8844b4f45e2b2068528fa512d8bac39c` |
| 9 | `theorem` | [quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/quadrant-i--1b70243820ba57a1483f6712.md) | 338 | `result-track:1b70243820ba57a1483f6712405ad78827519695b01c49f62907a5eaf60aa190` |
| 10 | `theorem` | [eq_zero_on_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-quadrant-i--442e30467741565fbc7bdb08.md) | 403 | `result-track:442e30467741565fbc7bdb0856692a5ea1e7bf7f0449a651705eaa7a96259114` |
| 11 | `theorem` | [eqOn_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-quadrant-i--ae9025f2cc182596b53eda89.md) | 420 | `result-track:ae9025f2cc182596b53eda89dad179c230ffe3519d0324f3ada70da076c7b491` |
| 12 | `theorem` | [quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/quadrant-ii--8ac4f14b2fa721550c0e4090.md) | 440 | `result-track:8ac4f14b2fa721550c0e40905b048051a4f93a9f8f9664effbd81eeba9c14ae1` |
| 13 | `theorem` | [eq_zero_on_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-quadrant-ii--848b94aa1935bf7f8b52af2c.md) | 466 | `result-track:848b94aa1935bf7f8b52af2c81ddb4981dafe2e66354ad4356afea95b2f07c0a` |
| 14 | `theorem` | [eqOn_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-quadrant-ii--ee15c6db55dc2bd3abc15148.md) | 483 | `result-track:ee15c6db55dc2bd3abc1514819aad18305864a43d129ee5180e86bd00f30d910` |
| 15 | `theorem` | [quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/quadrant-iii--2a9698d5112a7655a8dc2569.md) | 502 | `result-track:2a9698d5112a7655a8dc2569ca43959e12c4dbef59f231703698a1ae94803010` |
| 16 | `theorem` | [eq_zero_on_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-quadrant-iii--edaa429f85ff8fbf6e5fa443.md) | 533 | `result-track:edaa429f85ff8fbf6e5fa443aa8ab08a9e94ec5a16d2cf0854c01e8b3d626292` |
| 17 | `theorem` | [eqOn_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-quadrant-iii--ec7bba006f7c9f5b6bf3e54a.md) | 549 | `result-track:ec7bba006f7c9f5b6bf3e54ab9bd42b5fe9ed14fac6fd7cc88b0f9295648f476` |
| 18 | `theorem` | [quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/quadrant-iv--2fdf9e43e3d542732a67aa85.md) | 568 | `result-track:2fdf9e43e3d542732a67aa8584b610119406142ddaa832cf09795c4c18aac17f` |
| 19 | `theorem` | [eq_zero_on_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-quadrant-iv--d31778ed777eca57e726f88f.md) | 597 | `result-track:d31778ed777eca57e726f88fc631429fd946c4b1fd786060503c8634f669a8c0` |
| 20 | `theorem` | [eqOn_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-quadrant-iv--d86b4ae226e5372e8974c6c1.md) | 614 | `result-track:d86b4ae226e5372e8974c6c15c452c0ff19fa05fe55830ef3f2807d297551e69` |
| 21 | `theorem` | [right_half_plane_of_tendsto_zero_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/right-half-plane-of-tendsto-zero-on-real--0345cce0cd32cadac05ab4b8.md) | 640 | `result-track:0345cce0cd32cadac05ab4b818e44871515893a7fd61801f2ff0f60edf93f12c` |
| 22 | `theorem` | [right_half_plane_of_bounded_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/right-half-plane-of-bounded-on-real--006dc959b0b4370fc6f60627.md) | 712 | `result-track:006dc959b0b4370fc6f60627b62d3d8f5c2cc89bab8d0f7cfcc9848464e730ff` |
| 23 | `theorem` | [eq_zero_on_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eq-zero-on-right-half-plane-of-superexponential-decay--ba45c5e2965ab1af0baba923.md) | 755 | `result-track:ba45c5e2965ab1af0baba9233b052ccdf32ed6eed86654b45d6fde9cbcdc6257` |
| 24 | `theorem` | [eqOn_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/declarations/eqon-right-half-plane-of-superexponential-decay--1457555298708bf868ee3357.md) | 808 | `result-track:1457555298708bf868ee33577d260859ac103f029968791810a0a83bb9e90d88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
