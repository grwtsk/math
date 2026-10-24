# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocalTheorem.Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83fb5658ecaa6e06fe06faea22f28c892c34aa19",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83fb5658ecaa6e06fe06faea22f28c892c34aa19`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CenteredAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Budgets` — import line 2; external provider; requires a separately pinned dependency.
- `ActualSource` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innercutoff--377ab47f841bd622a53db61a.md) | 20 | `declaration-track:377ab47f841bd622a53db61adb8c2c44162d8bc03aab47dc450f5dc84a9b11d3` |
| 2 | `def` | [innerRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder--7b4417fe82dbf50ffb476942.md) | 22 | `declaration-track:7b4417fe82dbf50ffb4769427e5d948a32dc92729330b03783e9ccfca7d658f6` |
| 3 | `theorem` | [innerRemainder_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder-integrand-intervalintegrable--79107cca9e4cec88ba89daa4.md) | 26 | `result-track:79107cca9e4cec88ba89daa41f376216d120f87e33fe4351bbccaacd63dd7bda` |
| 4 | `theorem` | [innerCutoff_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innercutoff-ge-one--90553b04ebfcc069ae492466.md) | 33 | `result-track:90553b04ebfcc069ae49246625de6b53ff9e1e2de1801c77ffa93361dff098ce` |
| 5 | `theorem` | [innerCutoff_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innercutoff-mul--c093165ae95ca194b11045de.md) | 38 | `result-track:c093165ae95ca194b11045dec469832b474fa01073924d636e57dc2e81bc1cd5` |
| 6 | `theorem` | [innerCutoff_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innercutoff-log--4ea1fd03ba5561271b1194e7.md) | 43 | `result-track:4ea1fd03ba5561271b1194e751916cf23a2ae810896b638f8d7c3ede8c578867` |
| 7 | `theorem` | [logProfile_at_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/logprofile-at-cutoff--84d2dd91ef9266f9117604f7.md) | 47 | `result-track:84d2dd91ef9266f9117604f7304220bbf5d23f0f8c0f81740929c87a9decd600` |
| 8 | `theorem` | [innerRemainder_eq_uncentered](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder-eq-uncentered--5d2189d7e86d232bda61283d.md) | 55 | `result-track:5d2189d7e86d232bda61283de1b9f146934b0c58a08e926d112744fc3f027603` |
| 9 | `theorem` | [innerRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder-abs-le--654f5b22e0130c773f96f329.md) | 63 | `result-track:654f5b22e0130c773f96f329ff552c2a75650b8abf1c49e2c00c5806bad2aa82` |
| 10 | `theorem` | [innerRemainder_abs_le_twelve](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder-abs-le-twelve--2195de077bacc3cdc7b88ec8.md) | 82 | `result-track:2195de077bacc3cdc7b88ec8cd8c837c3255cc4e5a0699fc649a40eaad8a0709` |
| 11 | `theorem` | [inner_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/inner-sum-eq--1479f8d0399fc4932bcd06e6.md) | 87 | `result-track:1479f8d0399fc4932bcd06e64ccdf10e55de96bc71d13df537a2bb0dffc49ea3` |
| 12 | `theorem` | [inner_sum_abel_estimate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/inner-sum-abel-estimate--5fcf3af227e990b43c2fd3b4.md) | 115 | `result-track:5fcf3af227e990b43c2fd3b42b52af3803b061c76482c4b64adba766ec829d8b` |
| 13 | `theorem` | [innerCutoff_log_ge_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innercutoff-log-ge-scale--f1a3558d74ace7a7e1f2da28.md) | 129 | `result-track:f1a3558d74ace7a7e1f2da28d1671e28a02efc0a099230e842edcf327a6c24eb` |
| 14 | `theorem` | [innerRemainder_abs_le_logarithmic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder-abs-le-logarithmic--b165828653804b1ea3bb0ca0.md) | 139 | `result-track:b165828653804b1ea3bb0ca02946903c3a2981e4dc986d664aab9db16015480d` |
| 15 | `theorem` | [innerRemainder_at_support_equality](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/declarations/innerremainder-at-support-equality--833f08a8ea789b751c2149c3.md) | 151 | `result-track:833f08a8ea789b751c2149c3b9d96ae7824531bb399083e03c9c7845dbad96b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
