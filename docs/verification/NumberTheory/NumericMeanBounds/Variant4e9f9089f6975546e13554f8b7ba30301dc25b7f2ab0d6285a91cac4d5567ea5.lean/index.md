# Verification target: GRWTSK.NumberTheory.NumericMeanBounds.Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8271a16aff960ad0b8cb591665a3419a7b4a20a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8271a16aff960ad0b8cb591665a3419a7b4a20a`.

Source path: `GRWTSK/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NormalizedGammaBudget` — import line 6; external provider; requires a separately pinned dependency.
- `FiniteRationalCertificate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pi_lower](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/log-pi-lower--a6affcb6a57b5da925402b25.md) | 23 | `result-track:a6affcb6a57b5da925402b25002ddc72bc5f27887401c6f5ad743c50cd754dec` |
| 2 | `theorem` | [actual_endpoint_lt](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/actual-endpoint-lt--41f2628da3c1925d3147ba53.md) | 34 | `result-track:41f2628da3c1925d3147ba53d6b9dde14feb8b860bb4b90a6644cfcf781fc956` |
| 3 | `theorem` | [sqrt_two_bounds](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/sqrt-two-bounds--2865ddcae84be0e1129ac29b.md) | 40 | `result-track:2865ddcae84be0e1129ac29b96451384038c533f8b78901447ec81482fcaf794` |
| 4 | `theorem` | [sqrt_three_bounds](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/sqrt-three-bounds--2e5c87797d2a91610a35ead6.md) | 45 | `result-track:2e5c87797d2a91610a35ead6c4d4142f1ffc50835b9d631fabb23fb96f296d93` |
| 5 | `theorem` | [fixed_prime_sum_gt](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/fixed-prime-sum-gt--15b7f0ada1c0bb5326ffa352.md) | 50 | `result-track:15b7f0ada1c0bb5326ffa3527fb5efbea37543ee17de6064e2a0e26e50b1ee2b` |
| 6 | `theorem` | [actual_coarse_calibration_lt](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/actual-coarse-calibration-lt--5b7f4d1e52b7035e0a9a8a3e.md) | 65 | `result-track:5b7f4d1e52b7035e0a9a8a3e0b6d201daa9079f22b1aaef2d694fd0a49baa816` |
| 7 | `theorem` | [actual_sharp_calibration_lt](../../../../mathematics/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/declarations/actual-sharp-calibration-lt--c2f0e37fbfc485f015ed4afe.md) | 86 | `result-track:c2f0e37fbfc485f015ed4afe78eb0434bd400d3c51353fc065a0cb589a3b3139` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
