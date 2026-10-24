# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyNecessaryCancellation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "984454af1fbfc6085fd9b3a41e83bb33875f3667",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `984454af1fbfc6085fd9b3a41e83bb33875f3667`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyLiteralFormulas.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primeOnlyMass0_sq_le_stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonlymass0-sq-le-stage--c4cf4ea35ff038daf49e9397.md) | 34 | `result-track:c4cf4ea35ff038daf49e939754cc52eb6083369b8bab8d4e5dafd421f6ab2b04` |
| 2 | `theorem` | [primeOnlyMass1_sq_le_stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonlymass1-sq-le-stage--7c83ce86f21a947edbceeec3.md) | 43 | `result-track:7c83ce86f21a947edbceeec39b797a80f742f8173892c2b92b9ebb5b42eab479` |
| 3 | `theorem` | [thetaOctaveDiscrepancy_sq_le_two_stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/thetaoctavediscrepancy-sq-le-two-stage--0758a3befde3e00c346506d5.md) | 54 | `result-track:0758a3befde3e00c346506d5360381a1eb11c969cecb4b3490c3e9aa6003e94f` |
| 4 | `theorem` | [primeOnly_negOne_sq_le_stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonly-negone-sq-le-stage--c510a326068ba37ccc369991.md) | 71 | `result-track:c510a326068ba37ccc369991e2ba852014b855bf2614ad9af2a62034f27bcec9` |
| 5 | `theorem` | [primeOnly_one_sq_le_stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonly-one-sq-le-stage--8d57a87d96d3957667f3a855.md) | 85 | `result-track:8d57a87d96d3957667f3a8555087bec405075e74c0b83578313f4b4a7d03f30e` |
| 6 | `theorem` | [primeOnlyBound_forces_harmonicMass_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonlybound-forces-harmonicmass-decay--a8227110bb2c94bd8481c488.md) | 98 | `result-track:a8227110bb2c94bd8481c48806ffc4f0a26f0a3f2ee9d34a09de4f5f04f2482c` |
| 7 | `theorem` | [primeOnlyBound_forces_thetaOctave_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonlybound-forces-thetaoctave-decay--f0abd5da16bcb728aeb70190.md) | 113 | `result-track:f0abd5da16bcb728aeb701904e4189ac47acd193a8c78abfeca8b951c7bbbe2d` |
| 8 | `theorem` | [primeOnlyBound_forces_negOne_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonlybound-forces-negone-decay--e0ec99bb1d3ff5200c7c63c9.md) | 134 | `result-track:e0ec99bb1d3ff5200c7c63c9d622e6c25ddbbad8a20e5c5e9b3cfe90846dab72` |
| 9 | `theorem` | [primeOnlyBound_forces_one_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/declarations/primeonlybound-forces-one-decay--8333239c7eb37f4edddb26d8.md) | 148 | `result-track:8333239c7eb37f4edddb26d8aa7d62f9b846c7e4065a958617af53a9c68311b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
