# Verification target: GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientMass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec29fb62160ffffbad322d48730172b68726c84",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec29fb62160ffffbad322d48730172b68726c84`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreLengthCoefficientMass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalOuterTranspose`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalOuterTranspose.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftCoefficientDepths](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/leftcoefficientdepths--cb9a23fe199a263bc569d38c.md) | 20 | `declaration-track:cb9a23fe199a263bc569d38ce874accfb1966c67b37c90df2f8aee540f66d6ad` |
| 2 | `def` | [rightCoefficientDepths](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/rightcoefficientdepths--844e920fa64c5dcdb121fba2.md) | 24 | `declaration-track:844e920fa64c5dcdb121fba2652f0b274e1cac48dfd9578c4e4bc7130b011484` |
| 3 | `theorem` | [harmonicShiftLower_eq_left](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/harmonicshiftlower-eq-left--e516ba8eed3168a7038862ca.md) | 29 | `result-track:e516ba8eed3168a7038862cacb1e058457d4614966033f3b22897af2d2bd6fc8` |
| 4 | `theorem` | [harmonicShiftCount_eq_leftScale](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/harmonicshiftcount-eq-leftscale--668572d94cb2481b3cce66c5.md) | 37 | `result-track:668572d94cb2481b3cce66c50411669e66912ef28ebefeec234a207c5036c049` |
| 5 | `theorem` | [harmonicShiftReciprocal_eq_left](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/harmonicshiftreciprocal-eq-left--fb4c13ed315518d7b14d7f12.md) | 45 | `result-track:fb4c13ed315518d7b14d7f12f4c1dea6471a9000fd6176b57f81d5a38ca759a3` |
| 6 | `theorem` | [harmonicShiftLower_eq_right](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/harmonicshiftlower-eq-right--aab1320e3c0860c2c0d72e57.md) | 55 | `result-track:aab1320e3c0860c2c0d72e57fb8bbcae6d0ec0a271d4531d20211a7629d802bf` |
| 7 | `theorem` | [harmonicShiftCount_eq_rightDistance](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/harmonicshiftcount-eq-rightdistance--397772ebbaf45ffa0fb1c3ab.md) | 65 | `result-track:397772ebbaf45ffa0fb1c3aba659ffa8423990946bcfc32d587c20ed0cf4e9c4` |
| 8 | `theorem` | [harmonicShiftReciprocal_eq_right](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/harmonicshiftreciprocal-eq-right--1bd1038a89b5599ace51c0bd.md) | 74 | `result-track:1bd1038a89b5599ace51c0bdca9b32683cdf2c82273cc40a3e1a49b28813eb0a` |
| 9 | `def` | [fullLengthCoefficientMass](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/fulllengthcoefficientmass--87897a38d8f2a4a77787774b.md) | 86 | `declaration-track:87897a38d8f2a4a77787774b48ee80cbf87ed2393e127214b894b11370ff1332` |
| 10 | `theorem` | [coreLengthCoefficientMass_le_full](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/corelengthcoefficientmass-le-full--2f5573b7d0d3ecc908922c03.md) | 92 | `result-track:2f5573b7d0d3ecc908922c0358cefaf55ea3bd098da3eda238094bdc2159e5c1` |
| 11 | `def` | [leftLengthCoefficientMass](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/leftlengthcoefficientmass--81b061997c4442e7e424014f.md) | 108 | `declaration-track:81b061997c4442e7e424014f99002ab32ecba653ccf27d48ecd30023f69a4181` |
| 12 | `def` | [rightLengthCoefficientMass](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/rightlengthcoefficientmass--9dc5d1d6d65873cf1a0c26fd.md) | 114 | `declaration-track:9dc5d1d6d65873cf1a0c26fd646b6dbbb1f829bb14a67560541d25fdf7fb8f23` |
| 13 | `theorem` | [fullLengthCoefficientMass_eq_left_add_right](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/fulllengthcoefficientmass-eq-left-add-right--640262420ba3b4e5cca8abf6.md) | 121 | `result-track:640262420ba3b4e5cca8abf6d9a308bf10c83865c3039b4009b273fff2539bfa` |
| 14 | `theorem` | [coreTerminalLengthCoefficient_eq_zero_left_of_ne](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/coreterminallengthcoefficient-eq-zero-left-of-ne--76b0de9eb02b9c6b0c48bd07.md) | 141 | `result-track:76b0de9eb02b9c6b0c48bd07938e8d249f78700d90ee8a686d099e374a7026fd` |
| 15 | `theorem` | [coreInteriorLengthCoefficient_eq_left](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/coreinteriorlengthcoefficient-eq-left--d9843e49b4985f37cb1f4faf.md) | 152 | `result-track:d9843e49b4985f37cb1f4fafed187e2a8d40b9c5d59d3002fb0e0068db7ef8af` |
| 16 | `theorem` | [coreInteriorLengthCoefficient_eq_right](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/coreinteriorlengthcoefficient-eq-right--c691d93adc263f0ebb5be990.md) | 177 | `result-track:c691d93adc263f0ebb5be990ffb606adbc9c86117aaca99f4689a5f44509b1c8` |
| 17 | `def` | [ReciprocalLengthCoefficientMassBound](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/reciprocallengthcoefficientmassbound--f987c0f3a259b13021355066.md) | 201 | `declaration-track:f987c0f3a259b13021355066629d9fef5e8ff27ade1f0251c841cc092c2ed443` |
| 18 | `theorem` | [coreLengthCoefficientMass_le_of_reciprocalBound](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/declarations/corelengthcoefficientmass-le-of-reciprocalbound--b644bff5d9e75bae116d957c.md) | 210 | `result-track:b644bff5d9e75bae116d957c015710f527a78126c4f244c93eebb6a95b56bc06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
