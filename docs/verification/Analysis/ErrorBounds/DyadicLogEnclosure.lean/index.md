# Verification target: GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "141ad980037bae767a4a1e0ab0885d4f3e376aec",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/DyadicLogEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `141ad980037bae767a4a1e0ab0885d4f3e376aec`.

Source path: `GRWTSK/Analysis/ErrorBounds/DyadicLogEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/DyadicLogEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinElementary`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicMantissa](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/dyadicmantissa--e0c689ede98672c93d1bb373.md) | 27 | `declaration-track:e0c689ede98672c93d1bb373c3a5e3a90e777659aed0ffb0c558b9733342db6b` |
| 2 | `def` | [reducedLogCenter](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogcenter--8d78824c84918f6d125294f9.md) | 30 | `declaration-track:8d78824c84918f6d125294f97ee992a682d46b6b668f863a0f0cc63e247bc47d` |
| 3 | `def` | [reducedLogRadius](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogradius--167f2fa432d6745f0a6b4965.md) | 34 | `declaration-track:167f2fa432d6745f0a6b4965d5a5359a60e58f792e27e60810ec37bab711b847` |
| 4 | `theorem` | [exists_dyadic_scale](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/exists-dyadic-scale--ce7c76979bed02f0698407c7.md) | 38 | `result-track:ce7c76979bed02f0698407c7cfbec055f2f36d4798a127bb4d10ce965a082d00` |
| 5 | `theorem` | [dyadicMantissa_ge_one](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/dyadicmantissa-ge-one--0de2fb7007a5e7a39054c7d6.md) | 42 | `result-track:0de2fb7007a5e7a39054c7d6e17dba01387c99c5c4b8825437b8344f6a0e02c5` |
| 6 | `theorem` | [dyadicMantissa_le_two](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/dyadicmantissa-le-two--c201bff258a0d0d573163bf8.md) | 48 | `result-track:c201bff258a0d0d573163bf88af42e601e4501e681c64ba5bc99ccacc07d4524` |
| 7 | `theorem` | [dyadic_reconstruct](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/dyadic-reconstruct--d4fc2a3546108a3239e3e8d7.md) | 55 | `result-track:d4fc2a3546108a3239e3e8d7374e734c0db0afd7ec0c2c14fdebeaef0048ff05` |
| 8 | `theorem` | [log_dyadic_reconstruct](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/log-dyadic-reconstruct--c6fc66503266440a5d3075a2.md) | 61 | `result-track:c6fc66503266440a5d3075a208ed65ac903c4eaf626503c32826ac82d20c464f` |
| 9 | `theorem` | [grid_logCenter_nonneg](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/grid-logcenter-nonneg--8e8ea41a565410631c6243e7.md) | 68 | `result-track:8e8ea41a565410631c6243e7c2b52ea7102dfa0b94aa6801298b4727f190f042` |
| 10 | `theorem` | [reducedLogCenter_nonneg](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogcenter-nonneg--9fb1c0284666ebd974ccc72e.md) | 77 | `result-track:9fb1c0284666ebd974ccc72eabd4919edb719e50a83236d69933eb25ef2238ce` |
| 11 | `theorem` | [reducedLogCenter_error](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogcenter-error--6819b02d1ba10eb371d668f5.md) | 85 | `result-track:6819b02d1ba10eb371d668f5a0b64621c0313a821391970e282d14cabf0d7fee` |
| 12 | `theorem` | [reducedLogRadius_nonneg](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogradius-nonneg--ce8adef7f37ca8440020ad81.md) | 104 | `result-track:ce8adef7f37ca8440020ad8107c2da792220bd585d39f045605b04502bfb7153` |
| 13 | `theorem` | [logRadius_two](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/logradius-two--f3c87d8de0d58fdf0de0eb64.md) | 111 | `result-track:f3c87d8de0d58fdf0de0eb64f4dec3acf7a6e19f62ad6636f2ba7eb9cf96fc55` |
| 14 | `theorem` | [reduced_grid_radius_le](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reduced-grid-radius-le--94005d67ae14eff39e0da40b.md) | 117 | `result-track:94005d67ae14eff39e0da40b6ffa1542d0b8dc6f66ff9b4219191ef91c64fb47` |
| 15 | `theorem` | [reducedLogRadius_eq](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogradius-eq--47d0b3ab7781150fa7feb8a5.md) | 133 | `result-track:47d0b3ab7781150fa7feb8a5bc24bee85c0fb7e1964eada93b69b7110e176764` |
| 16 | `theorem` | [reducedLogRadius_le](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogradius-le--548c59775caf0e7e6af46d49.md) | 142 | `result-track:548c59775caf0e7e6af46d49ac48c22632f87f67cf4a982aaf53a57aa9b4fcdf` |
| 17 | `theorem` | [reducedLogRadius_common_le](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlogradius-common-le--8868091d744471b54c84758d.md) | 155 | `result-track:8868091d744471b54c84758da955d52b12318640fafd9e6342a2036910e24eb9` |
| 18 | `theorem` | [reducedLog_precision](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/reducedlog-precision--d9ac7f12c5145665883057d5.md) | 164 | `result-track:d9ac7f12c5145665883057d5ba2402e91359a087b756cf7e3fbc241c76cf1f8a` |
| 19 | `theorem` | [dyadicMantissa_at_power](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/dyadicmantissa-at-power--e86ef92fa3313078872f6838.md) | 173 | `result-track:e86ef92fa3313078872f68386d2c067cd49d2af2072a6365a6edadf320134013` |
| 20 | `theorem` | [power_radius](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/power-radius--c8f29c7719a3328ba986042e.md) | 178 | `result-track:c8f29c7719a3328ba986042e3652a17f9bc357e6d2dd2026f72a6cda8587c9e4` |
| 21 | `theorem` | [shared_log_two_error_control](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/shared-log-two-error-control--5d620077f4e140bb16dce444.md) | 184 | `result-track:5d620077f4e140bb16dce4449708a2b72c7b02f876752804fddeb94a226022a7` |
| 22 | `theorem` | [dyadicMantissa_at_next_power](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/dyadicmantissa-at-next-power--f61ece59f22cec4add694852.md) | 189 | `result-track:f61ece59f22cec4add69485227be3413ded9951e6cb5069c7e5371d669d5956b` |
| 23 | `theorem` | [scale_boundary_consistent](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/scale-boundary-consistent--95c8bf7fdcde6b486b1a8297.md) | 196 | `result-track:95c8bf7fdcde6b486b1a8297397f0c8aafb811d64e47b3d7ed5b4b3529becdb0` |
| 24 | `theorem` | [unreduced_radius_control](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/unreduced-radius-control--5c427f8138e5762fc21dcbe8.md) | 207 | `result-track:5c427f8138e5762fc21dcbe8360362ab4c442f6fd6b74867e073e8ccb88f02f3` |
| 25 | `theorem` | [wrong_scale_control](../../../../mathematics/Analysis/ErrorBounds/DyadicLogEnclosure.lean/declarations/wrong-scale-control--c3644156cd08dab4c28f9d36.md) | 212 | `result-track:c3644156cd08dab4c28f9d36bcd50bf24653ff48760dcf484a921848f80d5270` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
