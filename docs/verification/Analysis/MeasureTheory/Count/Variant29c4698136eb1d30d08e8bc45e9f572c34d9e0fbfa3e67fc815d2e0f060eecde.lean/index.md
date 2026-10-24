# Verification target: GRWTSK.Analysis.MeasureTheory.Count.Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "898bedc8e504260d0b9442834f236ddb95bc0373",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `898bedc8e504260d0b9442834f236ddb95bc0373`.

Source path: `GRWTSK/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Dirac` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.ENNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count--60bb7e5bda36db4265d6039d.md) | 27 | `declaration-track:60bb7e5bda36db4265d6039da070062a3bcc564ea48371c67db6c1239eec591d` |
| 2 | `lemma` | [count_ne_zero''](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-ne-zero--bd7bc5f8aa3d6fb54f4ba0d7.md) | 30 | `result-track:bd7bc5f8aa3d6fb54f4ba0d7e41a1fd4d1d822a6d87940ed29a7f887883aa143` |
| 3 | `theorem` | [le_count_apply](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/le-count-apply--e32d6ad62afd00fe7afedd86.md) | 32 | `result-track:e32d6ad62afd00fe7afedd86e05c36f640e331a14e1b494ab1fec777552148f3` |
| 4 | `theorem` | [count_apply](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply--d238b9f170e050f5f0aa5030.md) | 38 | `result-track:d238b9f170e050f5f0aa50306f920f412c0071047055ff54ef684abb84b32932` |
| 5 | `theorem` | [count_empty](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-empty--fead0922b4348972e942b75c.md) | 42 | `result-track:fead0922b4348972e942b75c5d1eeef1c95da9d532d7b8537cdfdebf71fe7941` |
| 6 | `theorem` | [count_apply_finset'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-finset--e1525167861c1da9da9b5a2a.md) | 45 | `result-track:e1525167861c1da9da9b5a2a95b717d14f1db8fcc53b23aa2a8456eb3daf2631` |
| 7 | `theorem` | [count_apply_finset](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-finset--e4a6fa323148e629f548f82e.md) | 49 | `result-track:e4a6fa323148e629f548f82ef825edfaa893cd0dd2533b15db62ca8611edc5be` |
| 8 | `theorem` | [count_apply_finite'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-finite--7cf11f2529081f7b6eab3726.md) | 53 | `result-track:7cf11f2529081f7b6eab3726b5afa7ed80adb285f9d11e51ada5ead80bdb1cfa` |
| 9 | `theorem` | [count_apply_finite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-finite--612de2c0127c1fb5a75ca6ff.md) | 58 | `result-track:612de2c0127c1fb5a75ca6ff0f9371052c8555efa7948dd49aab9c5075dc5d7d` |
| 10 | `theorem` | [count_apply_infinite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-infinite--0eab0cdf160cdf5fd0206e0f.md) | 62 | `result-track:0eab0cdf160cdf5fd0206e0fa1b832406e2365914cd9a502a264e32c921a9959` |
| 11 | `theorem` | [count_apply_eq_top'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-eq-top--9df33d2f0e49d4baa9609eb1.md) | 72 | `result-track:9df33d2f0e49d4baa9609eb13f54d44da58ad00e4377c7c0ac0e5625c835fede` |
| 12 | `theorem` | [count_apply_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-eq-top--1fc4fb8f70a49013b9395b60.md) | 79 | `result-track:1fc4fb8f70a49013b9395b602e1cfae1e3367830c80b9fdad878379d157f0dd5` |
| 13 | `theorem` | [count_apply_lt_top'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-lt-top--8970508f78b6e65862b597b8.md) | 86 | `result-track:8970508f78b6e65862b597b89ded4f60a1e818b7e9eb57d241b6db35b5f59b96` |
| 14 | `theorem` | [count_apply_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-apply-lt-top--621f400d2e355bca2b02262f.md) | 93 | `result-track:621f400d2e355bca2b02262f7d5dd0ea67592b679444070c14f2f11503f45265` |
| 15 | `theorem` | [count_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-eq-zero-iff--81e8c5e638d158f14ce77d14.md) | 100 | `result-track:81e8c5e638d158f14ce77d14318ab5b6c05b7a783734254c5af44e570b050586` |
| 16 | `lemma` | [count_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-ne-zero-iff--787cf230f67cab3066151f1c.md) | 105 | `result-track:787cf230f67cab3066151f1ce8195936255019b22f151a1b9e869dfcb7fa311b` |
| 17 | `lemma` | [ae_count_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/ae-count-iff--510d04550aa1cb6ede4cda56.md) | 116 | `result-track:510d04550aa1cb6ede4cda56cbd959896cac135bf7dbb2a9fff7c5c43874af28` |
| 18 | `theorem` | [count_singleton'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-singleton--7101aa631b0b9008082b9149.md) | 123 | `result-track:7101aa631b0b9008082b91498596664a920235d6ee09b85fbeb6542870e073fc` |
| 19 | `theorem` | [count_singleton](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-singleton--68f216f38c98fc69fc5fb941.md) | 128 | `result-track:68f216f38c98fc69fc5fb941cde544c76981a36f3a8502c8848980579663ee94` |
| 20 | `theorem` | [_root_.MeasureTheory.count_real_singleton'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/root-measuretheory-count-real-singleton--87e16c3e9418c9f9c178da69.md) | 132 | `result-track:87e16c3e9418c9f9c178da69cc2723bf26a5ae139349fcd2dfa131801d6e1d4d` |
| 21 | `theorem` | [_root_.MeasureTheory.count_real_singleton](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/root-measuretheory-count-real-singleton--b80e2ca176e44d2b59168f5a.md) | 137 | `result-track:b80e2ca176e44d2b59168f5a67dc5bc19d160f052fcbfd76885f23e00aacfb03` |
| 22 | `theorem` | [count_injective_image'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-injective-image--8f137262de43060d3e293ac0.md) | 141 | `result-track:8f137262de43060d3e293ac05278d8b60c64918d8b0f12974441ad1a8f8bb800` |
| 23 | `theorem` | [count_injective_image](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-injective-image--acc52d2a7395bebf00dd2424.md) | 153 | `result-track:acc52d2a7395bebf00dd2424575666f051c9902c878fe63018d8fb49d3a4cb6d` |
| 24 | `instance` | [count.instSigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-instsigmafinite--2db6dccc3aadc0505a1f4951.md) | 161 | `declaration-track:2db6dccc3aadc0505a1f4951b2d5cb35d8f4dc63bed9132761407baff6b218a8` |
| 25 | `instance` | [count.isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-isfinitemeasure--a97d63206d92d90586c41d56.md) | 164 | `declaration-track:a97d63206d92d90586c41d566405c7feb1867c9892db65a01e243bc146ee0171` |
| 26 | `lemma` | [count_univ](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant29c4698136eb1d30d08e8bc45e9f572c34d9e0fbfa3e67fc815d2e0f060eecde.lean/declarations/count-univ--876e744185ecce48d75884ca.md) | 169 | `result-track:876e744185ecce48d75884ca6ed8683d5dae7eec3e6d2df3ee09928f99e11a5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
