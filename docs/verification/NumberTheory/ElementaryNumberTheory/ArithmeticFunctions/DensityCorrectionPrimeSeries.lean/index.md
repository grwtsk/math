# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a1d7528edd923578606b1690d7180bd5cacbdac",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a1d7528edd923578606b1690d7180bd5cacbdac`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_correction_prime_weighted_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-weighted-term--d05413023773460c861e66fc.md) | 20 | `result-track:d05413023773460c861e66fc2245aa6c37f248da371207538692065ab1f5b8dc` |
| 2 | `theorem` | [density_correction_prime_hasSum_tail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-hassum-tail--105069c6101eb135bfe68d33.md) | 29 | `result-track:105069c6101eb135bfe68d3332f8c5625a5703516fe9c05155eec0ffd27f8b3e` |
| 3 | `theorem` | [density_correction_prime_tsum_tail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-tsum-tail--9030b7f360586bddc1e89d00.md) | 42 | `result-track:9030b7f360586bddc1e89d0065eaf2a185df45f0dc5fa66e4f93828c4a8432b2` |
| 4 | `theorem` | [density_correction_prime_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-summable--f90c975a10288bd509182afd.md) | 48 | `result-track:f90c975a10288bd509182afda28813c9e4d5620812028cea2268cf23d9ddebb5` |
| 5 | `theorem` | [density_prime_reciprocal_mass_algebra](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-prime-reciprocal-mass-algebra--40f52faf779705eabd9fc39b.md) | 54 | `result-track:40f52faf779705eabd9fc39bd34b6bcbc9e517c30c1f5b43d11020e148541101` |
| 6 | `theorem` | [density_correction_prime_reciprocal_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-reciprocal-hassum--09a8ac858560faaab3076720.md) | 65 | `result-track:09a8ac858560faaab30767206de0308e340517d42a46871dee785056354a8649` |
| 7 | `theorem` | [density_correction_prime_reciprocal_tail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-reciprocal-tail--39b25c96e5477ea836263a1a.md) | 76 | `result-track:39b25c96e5477ea836263a1a18769557d52f7dc3e971ce044f3c5468393e87ff` |
| 8 | `theorem` | [density_correction_prime_reciprocal_factor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-reciprocal-factor--bc262caf8b98fcaa101ae67f.md) | 95 | `result-track:bc262caf8b98fcaa101ae67ff4820cd97020f2a8cf03a348e34483db1ecc29ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
