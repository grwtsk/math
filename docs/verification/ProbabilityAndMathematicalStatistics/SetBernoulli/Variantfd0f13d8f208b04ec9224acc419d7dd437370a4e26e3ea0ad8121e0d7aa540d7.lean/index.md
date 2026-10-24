# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.SetBernoulli.Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "219f9f3e95c823b484e5972c7ca41db14b86212d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `219f9f3e95c823b484e5972c7ca41db14b86212d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.NCard` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [setBernoulli](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli--13b2e446516d0405c617dce8.md) | 45 | `declaration-track:13b2e446516d0405c617dce8168555e49c76508122e3355fe2143043c8e88e10` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/instance--4c3fc75ba9fc41ef5ec26db8.md) | 50 | `declaration-track:4c3fc75ba9fc41ef5ec26db825cabd10ef68f32068f8b4762a1749d90fa3923a` |
| 3 | `lemma` | [setBernoulli_eq_map](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-eq-map--9260ac710b0619e98de63fdf.md) | 55 | `result-track:9260ac710b0619e98de63fdf039743a0a0d95a424f5971b86bc8270cda064e4b` |
| 4 | `lemma` | [setBernoulli_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-apply--069a005a44ba24b9141bca0a.md) | 60 | `result-track:069a005a44ba24b9141bca0aa8d26a57b6e8b9924ecbd9517ce891d4f901403c` |
| 5 | `lemma` | [setBernoulli_apply'](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-apply--f167dfbd36f95f4c0fae4fe5.md) | 64 | `result-track:f167dfbd36f95f4c0fae4fe5d504c51a613095d8f32be07379e1c63a00909eae` |
| 6 | `lemma` | [setBernoulli_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-zero--62a152713ee972d7ba7e7d57.md) | 69 | `result-track:62a152713ee972d7ba7e7d5751b8db459f90b749063ad099b6e91047e5162cdf` |
| 7 | `lemma` | [setBernoulli_one](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-one--269c23afdedb2fce0093e171.md) | 72 | `result-track:269c23afdedb2fce0093e171f39c639853fbeeab0effdcb0def1f70d7589a5d2` |
| 8 | `lemma` | [setBernoulli_ae_subset](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-ae-subset--6431c9c15340d5d1655cf016.md) | 77 | `result-track:6431c9c15340d5d1655cf01655df0ca087f3561c5f10488b5df58ff8b082fd6d` |
| 9 | `lemma` | [setBernoulli_singleton_of_not_subset](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-singleton-of-not-subset--02e75ae907fa3023b7496513.md) | 91 | `result-track:02e75ae907fa3023b749651373d34241da86e8c42aba181c8087abfbda5611a0` |
| 10 | `lemma` | [setBernoulli_apply_eq_apply_subsets](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-apply-eq-apply-subsets--d40e1732e95756edefe3a9b1.md) | 96 | `result-track:d40e1732e95756edefe3a9b1e398f29fc1e1ff2a90f73f5be65bbdc0b899074c` |
| 11 | `lemma` | [map_ncard_setBernoulli_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/map-ncard-setbernoulli-apply--9b273e1ba24a079324cf9445.md) | 101 | `result-track:9b273e1ba24a079324cf94457293ad11e9638ce35b24b4b09fc922c42764cd6d` |
| 12 | `lemma` | [setBernoulli_singleton](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-singleton--f1ef929001ad19ae5dfbbec2.md) | 107 | `result-track:f1ef929001ad19ae5dfbbec23fd84c9900d4a3c8e7ab2c13e153b4106152d77e` |
| 13 | `lemma` | [setBernoulli_real_singleton](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-real-singleton--f4951eb55ffb418c02000bad.md) | 124 | `result-track:f4951eb55ffb418c02000bad8393f1ef2bd181e822a56451821be3c6b1bda6e5` |
| 14 | `lemma` | [map_ncard_setBernoulli_real_singleton](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/map-ncard-setbernoulli-real-singleton--5321a924690e88110f23c3c9.md) | 128 | `result-track:5321a924690e88110f23c3c9184ce5a32ce8f986e44bc18a6b300f83d830ce95` |
| 15 | `lemma` | [map_ncard_setBernoulli_singleton](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/map-ncard-setbernoulli-singleton--b18f1724fdd5d376e4cb04ce.md) | 144 | `result-track:b18f1724fdd5d376e4cb04ce3e37bdf112fa1d64db7ac22ca6353cfc4629681e` |
| 16 | `lemma` | [setBernoulli_empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/setbernoulli-empty--3e721fc551e37d2ca3455fcf.md) | 151 | `result-track:3e721fc551e37d2ca3455fcf65d72da304995fbff2376d34b07695b21c73c50b` |
| 17 | `abbrev` | [IsSetBernoulli](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/issetbernoulli--3a7520b5cfab24674567855d.md) | 168 | `declaration-track:3a7520b5cfab24674567855d2d08662ed78af5de32158e8bdf86ea95055d8541` |
| 18 | `lemma` | [isSetBernoulli_congr](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/issetbernoulli-congr--3059277006ed8fa8f683f526.md) | 170 | `result-track:3059277006ed8fa8f683f526c53bcbb7f36e30b015d780b874573cb62831409e` |
| 19 | `lemma` | [IsSetBernoulli.ae_subset](../../../../mathematics/ProbabilityAndMathematicalStatistics/SetBernoulli/Variantfd0f13d8f208b04ec9224acc419d7dd437370a4e26e3ea0ad8121e0d7aa540d7.lean/declarations/issetbernoulli-ae-subset--c229569018353703a288a883.md) | 175 | `result-track:c229569018353703a288a88339be10f39f049a49061c1fc4b3c30961ef0d2178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
