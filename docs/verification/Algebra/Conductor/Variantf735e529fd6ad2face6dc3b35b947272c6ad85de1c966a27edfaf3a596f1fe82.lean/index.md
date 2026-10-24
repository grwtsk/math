# Verification target: GRWTSK.Algebra.Conductor.Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edff584f5fa01f744a936b064b73c47f5932e991",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/index.md) · [Full source](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edff584f5fa01f744a936b064b73c47f5932e991`.

Source path: `GRWTSK/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductor](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/conductor--e0bfa122441576041ef25a7e.md) | 40 | `declaration-track:e0bfa122441576041ef25a7ec7c1663b653d4ace701bb67afb11e1ca204ca610` |
| 2 | `theorem` | [conductor_eq_of_eq](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/conductor-eq-of-eq--3f445f09cf1c96269423ee90.md) | 48 | `result-track:3f445f09cf1c96269423ee90cb35beeffcfa853ed7bdd7ad7190e2e4f8d10ad6` |
| 3 | `theorem` | [conductor_subset_adjoin](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/conductor-subset-adjoin--41bb7039e910992f3354f170.md) | 51 | `result-track:41bb7039e910992f3354f1705493d7f15197813d40a6b783ca8c2a02bbaea787` |
| 4 | `theorem` | [mem_conductor_iff](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/mem-conductor-iff--2a5279a3eda45651942d3ba5.md) | 54 | `result-track:2a5279a3eda45651942d3ba5c17c4b48411ebd31ab86d2985d7ccb671de67442` |
| 5 | `theorem` | [conductor_eq_top_of_adjoin_eq_top](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/conductor-eq-top-of-adjoin-eq-top--6a9bc563a87c0866df1a69ae.md) | 57 | `result-track:6a9bc563a87c0866df1a69ae3601efae5814b7f3b90103386067e5f00664bad2` |
| 6 | `theorem` | [conductor_eq_top_of_powerBasis](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/conductor-eq-top-of-powerbasis--13c437d248c9e365d6bbbf50.md) | 60 | `result-track:13c437d248c9e365d6bbbf509e4c97a6a4e0e81b9699c3aa9db7c9332fb58928` |
| 7 | `theorem` | [adjoin_eq_top_of_conductor_eq_top](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/adjoin-eq-top-of-conductor-eq-top--c5ea9f187cf2d9091a6ad95c.md) | 63 | `result-track:c5ea9f187cf2d9091a6ad95c5490e5ca10654945afd85e38b78e5780532e8d1d` |
| 8 | `theorem` | [conductor_eq_top_iff_adjoin_eq_top](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/conductor-eq-top-iff-adjoin-eq-top--96b8e0f040962e1195dfb01d.md) | 68 | `result-track:96b8e0f040962e1195dfb01d277c5b7c112fa733ff695bfeddffdf533263d06e` |
| 9 | `lemma` | [mem_coeSubmodule_conductor](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/mem-coesubmodule-conductor--472d87a3ef5e20cb9d0435ce.md) | 73 | `result-track:472d87a3ef5e20cb9d0435ced5cda647a7ba0381534154131ef3ae2b13861ac4` |
| 10 | `theorem` | [prod_mem_ideal_map_of_mem_conductor](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/prod-mem-ideal-map-of-mem-conductor--e575bf5c88c2d8ca404a2f09.md) | 96 | `result-track:e575bf5c88c2d8ca404a2f091f8c235517d08cee9ac5bc85e79a559b692875e5` |
| 11 | `theorem` | [comap_map_eq_map_adjoin_of_coprime_conductor](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/comap-map-eq-map-adjoin-of-coprime-conductor--e53e50a4ae801f61b153b867.md) | 128 | `result-track:e53e50a4ae801f61b153b8674d187e3a7e2378dc339c53e4cfd0c767401dd26d` |
| 12 | `def` | [quotAdjoinEquivQuotMap](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/quotadjoinequivquotmap--41f53d7810435893ae020ffb.md) | 165 | `declaration-track:41f53d7810435893ae020ffbce683a52aaaf8cfcc965bf12b5f1bcd3fe9ff853` |
| 13 | `theorem` | [quotAdjoinEquivQuotMap_apply_mk](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/quotadjoinequivquotmap-apply-mk--dc2f174f4f229f1f613fca54.md) | 201 | `result-track:dc2f174f4f229f1f613fca5447a0b498a96e7e9caf81a9bb79c6f856f956d868` |
| 14 | `lemma` | [Localization.localRingHom_bijective_of_not_conductor_le](../../../../mathematics/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/declarations/localization-localringhom-bijective-of-not-conductor-le--23a8d36031c6121abca59635.md) | 206 | `result-track:23a8d36031c6121abca596352cd32b047223c55a587d64f9136b07562fb8f56d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
