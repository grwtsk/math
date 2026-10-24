# Verification target: GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "badf04b0b2e1f3649a636b5616a0ab5b0a802aee",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `badf04b0b2e1f3649a636b5616a0ab5b0a802aee`.

Source path: `GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/InexactAdjointGramWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow`](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mixedReadout](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/mixedreadout--ece7b597975217dc8e9dd7d3.md) | 45 | `declaration-track:ece7b597975217dc8e9dd7d3651f466db6d8f1b94ac8261048b0d1129085d3c0` |
| 2 | `theorem` | [mixedReadout_self](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/mixedreadout-self--7ea0fbd240b9bd795e15f436.md) | 48 | `result-track:7ea0fbd240b9bd795e15f436a466b0044e30429422c8eeed11b59285283cfc1f` |
| 3 | `def` | [readoutCorrection](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/readoutcorrection--bf5566995e76616727ce0816.md) | 52 | `declaration-track:bf5566995e76616727ce0816bdb5c88770b1d09296cf38a6de420794e9781825` |
| 4 | `theorem` | [readout_add_vector](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/readout-add-vector--51f262a9be3803a40ed4ec59.md) | 56 | `result-track:51f262a9be3803a40ed4ec59a448e1322fca46be19ebf91ffd0ede4d7ee030eb` |
| 5 | `theorem` | [readoutCorrection_zero](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/readoutcorrection-zero--cab03419f6c6630eb45ba08a.md) | 63 | `result-track:cab03419f6c6630eb45ba08ab4653998b3cbc5c3660063209e65e4c56aea225e` |
| 6 | `def` | [pullbackDefect](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/pullbackdefect--6b34ea380797e5e427023216.md) | 68 | `declaration-track:6b34ea380797e5e427023216acce073196df3f3d57749b2d72164a13d8a996bd` |
| 7 | `theorem` | [test_add_pullbackDefect](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/test-add-pullbackdefect--829699bf5a02815b00ce62ac.md) | 72 | `result-track:829699bf5a02815b00ce62ac7c08014017a35cedff7e9dcff6fbf64ccf60a16e` |
| 8 | `theorem` | [pullbackDefect_zero_of_exact](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/pullbackdefect-zero-of-exact--9dbf53358651e5c9285422e5.md) | 82 | `result-track:9dbf53358651e5c9285422e5aa8068232a787ce9e4011e20b1ceb4d7e65f56e7` |
| 9 | `theorem` | [mixed_readout_modulus_bound](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/mixed-readout-modulus-bound--d360c9489f2b436590133b56.md) | 89 | `result-track:d360c9489f2b436590133b56bca3ea1d790ea7546ca7fe17b60349be11c35072` |
| 10 | `theorem` | [readoutCorrection_modulus_bound](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/readoutcorrection-modulus-bound--5de99b9ef92b45534257c8a1.md) | 117 | `result-track:5de99b9ef92b45534257c8a125bd0c604d3f067c555824970d87d25dd437a1d1` |
| 11 | `theorem` | [correction_real_lower](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/correction-real-lower--014556fc20520d4574e15e49.md) | 145 | `result-track:014556fc20520d4574e15e4903deac012d529989ac64aaae74e9318c00a2b653` |
| 12 | `theorem` | [inexact_readout_residual_step](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/inexact-readout-residual-step--e38e870bcea81b734159fe48.md) | 161 | `result-track:e38e870bcea81b734159fe481dead5294ccc21db73ca793bcb4876b3a67d3672` |
| 13 | `def` | [windowCorrection](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/windowcorrection--766217dc11c8e4a2b693d312.md) | 178 | `declaration-track:766217dc11c8e4a2b693d3128f4b5cdddb9435644272e104b2d87dd1d6528bd1` |
| 14 | `theorem` | [inexact_adjoint_window_identity](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/inexact-adjoint-window-identity--9f6d0cda73c7c964b5608d3f.md) | 183 | `result-track:9f6d0cda73c7c964b5608d3f9e279a0f1ba918b30d41559fd378cb10964e8da9` |
| 15 | `theorem` | [gram_inexact_window_identity](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/gram-inexact-window-identity--97db8edeb9a27dc9cd5ae381.md) | 206 | `result-track:97db8edeb9a27dc9cd5ae3811a4158a572205ed5235b836501cd9cc8e3961d57` |
| 16 | `theorem` | [no_fixed_negative_of_inexact_gram_window](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/no-fixed-negative-of-inexact-gram-window--a8dea80dcc2109544366091f.md) | 236 | `result-track:a8dea80dcc2109544366091fa8c595b1eeaff686f1e9df625263ac134aae8ee3` |
| 17 | `theorem` | [quadratic_correction_required_fixture](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/quadratic-correction-required-fixture--3af95695b4c470a21a2d24c0.md) | 273 | `result-track:3af95695b4c470a21a2d24c04dc3985fbed54f7bfec8412c01b5fbae7f5172e9` |
| 18 | `theorem` | [small_defect_large_residual_fixture](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/small-defect-large-residual-fixture--02dfa7501ee5afb877306f15.md) | 283 | `result-track:02dfa7501ee5afb877306f15389f0f2939d289b968bd6126371e994992e6fc24` |
| 19 | `theorem` | [erased_pullback_charged_fixture](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/erased-pullback-charged-fixture--585cba3e121ad3b834a1057b.md) | 289 | `result-track:585cba3e121ad3b834a1057b6fc826c4011841d583d59c31df63a71d4a86db2b` |
| 20 | `theorem` | [correction_consumes_margin_fixture](../../../../mathematics/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/declarations/correction-consumes-margin-fixture--e16a615341586dbc80a0b7fc.md) | 297 | `result-track:e16a615341586dbc80a0b7fc46eeea76c5dcb5149baea69be2af3ebff96c28bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
