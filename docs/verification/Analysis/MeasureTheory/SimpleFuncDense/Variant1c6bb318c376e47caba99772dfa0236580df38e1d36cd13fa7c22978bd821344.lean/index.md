# Verification target: GRWTSK.Analysis.MeasureTheory.SimpleFuncDense.Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46cc87531fe88f814da440b1301ccd6fc85df753",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46cc87531fe88f814da440b1301ccd6fc85df753`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFunc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metrizable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nearestPtInd](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/nearestptind--36e3619f410f63ab6a2af1e6.md) | 55 | `declaration-track:36e3619f410f63ab6a2af1e6f4a4d03aadbe2f8fb1765a5e331d87e550f1e4db` |
| 2 | `def` | [nearestPt](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/nearestpt--0381844d034d74b39d1201de.md) | 67 | `declaration-track:0381844d034d74b39d1201de6900daacaaa468c321089d61e57d786026d60d08` |
| 3 | `theorem` | [nearestPtInd_zero](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/nearestptind-zero--cb3710121f50e420af79f818.md) | 71 | `result-track:cb3710121f50e420af79f818f6c6d6b8775d33d176a7881a32493b89b9739c45` |
| 4 | `theorem` | [nearestPt_zero](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/nearestpt-zero--6cd8a0c0e023f0b0303951df.md) | 75 | `result-track:6cd8a0c0e023f0b0303951dfac560c5d085db7a0f54ff2127008d977f8717e4f` |
| 5 | `theorem` | [nearestPtInd_succ](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/nearestptind-succ--474b0156fff35018e887ad8c.md) | 78 | `result-track:474b0156fff35018e887ad8c12557172fab2915c6efea5c67da6003ef3096298` |
| 6 | `theorem` | [nearestPtInd_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/nearestptind-le--fa228fa998334b8c30c0fdd4.md) | 85 | `result-track:fa228fa998334b8c30c0fdd409e6fd08a7ebc6ab520d2142163d49679d5715f0` |
| 7 | `theorem` | [edist_nearestPt_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/edist-nearestpt-le--e83df30e63d7fe4ace095cce.md) | 93 | `result-track:e83df30e63d7fe4ace095cce2208cb4dafdf1a94f91591cdff5a72400984fa18` |
| 8 | `theorem` | [tendsto_nearestPt](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/tendsto-nearestpt--aa5c6740be06c916950ccc9d.md) | 107 | `result-track:aa5c6740be06c916950ccc9df4d912f3ca6c4f1b333544205dd0defca14e039f` |
| 9 | `def` | [approxOn](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/approxon--b1be281df31e130aeba0e822.md) | 118 | `declaration-track:b1be281df31e130aeba0e82239fae6634c136b59476242270f5ac2397b0f6e82` |
| 10 | `theorem` | [approxOn_zero](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/approxon-zero--053546ff534fe85d332d04c1.md) | 124 | `result-track:053546ff534fe85d332d04c124629fabc1ae213ed4159aae9288532c77c7a40c` |
| 11 | `theorem` | [approxOn_mem](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/approxon-mem--8dcce40dbc66682b78cac8cf.md) | 128 | `result-track:8dcce40dbc66682b78cac8cfd45ea91726525c902e53fbb498abfc6a5efd12a9` |
| 12 | `lemma` | [approxOn_range_nonneg](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/approxon-range-nonneg--f9fbfe9712c359d9bc82b66d.md) | 135 | `result-track:f9fbfe9712c359d9bc82b66d8a64596ffe0524abe0b18fd0498a58c17465570e` |
| 13 | `theorem` | [approxOn_comp](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/approxon-comp--bf0b361316856ba87e5b5f75.md) | 146 | `result-track:bf0b361316856ba87e5b5f75e548aeb1dc243c4805458b2f5ffb6e94a39eeb76` |
| 14 | `theorem` | [tendsto_approxOn](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/tendsto-approxon--a1adc17bbc182ccd5d1d3987.md) | 151 | `result-track:a1adc17bbc182ccd5d1d3987d42b9dfb0a63ffcbf5d22060f4e5264f00b37c6a` |
| 15 | `theorem` | [edist_approxOn_mono](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/edist-approxon-mono--1362e9db34f73a967300eeda.md) | 163 | `result-track:1362e9db34f73a967300eeda2e06909b3a4845043e928c6d8adf5698adbd92d1` |
| 16 | `theorem` | [edist_approxOn_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/edist-approxon-le--2f2b0ebcbe374be5387dffc4.md) | 169 | `result-track:2f2b0ebcbe374be5387dffc476ab5d49f2749e0563250f44879eabde98bc0a7b` |
| 17 | `theorem` | [edist_approxOn_y0_le](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/edist-approxon-y0-le--b98e03a9f18440ce644c06a1.md) | 173 | `result-track:b98e03a9f18440ce644c06a11d98c974d43791f27883d24a8e92cf2f552b1942` |
| 18 | `lemma` | [HasCompactSupport.exists_simpleFunc_approx_of_prod](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/hascompactsupport-exists-simplefunc-approx-of-prod--b016a2a06b63caa29a20a899.md) | 196 | `result-track:b016a2a06b63caa29a20a89905f0f8ad4b0e1634492118c1ada613e42d528cf4` |
| 19 | `lemma` | [HasCompactSupport.measurable_of_prod](../../../../../mathematics/Analysis/MeasureTheory/SimpleFuncDense/Variant1c6bb318c376e47caba99772dfa0236580df38e1d36cd13fa7c22978bd821344.lean/declarations/hascompactsupport-measurable-of-prod--fb331963f0e7905e981ee683.md) | 240 | `result-track:fb331963f0e7905e981ee683b27fee94809b4de678b568c54ab83456e88bd698` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
