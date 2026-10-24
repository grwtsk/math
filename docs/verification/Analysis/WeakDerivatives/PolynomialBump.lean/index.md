# Verification target: GRWTSK.Analysis.WeakDerivatives.PolynomialBump

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f580b5686d6671ff8f9d9e326aa57826e43e734",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/WeakDerivatives/PolynomialBump.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/index.md) · [Full source](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f580b5686d6671ff8f9d9e326aa57826e43e734`.

Source path: `GRWTSK/Analysis/WeakDerivatives/PolynomialBump.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/WeakDerivatives/PolynomialBump.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpInterior](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/bumpinterior--6b0566bb00305eedb2e26dc7.md) | 25 | `declaration-track:6b0566bb00305eedb2e26dc7bdc8dceee7a4c727c9b3033185c41ebae0a2918d` |
| 2 | `def` | [firstInterior](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/firstinterior--d82713c002574ab92e83156f.md) | 28 | `declaration-track:d82713c002574ab92e83156fcafd455239641fe95f5efb81b297297509ba4d3f` |
| 3 | `def` | [secondInterior](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/secondinterior--75cb7b631570142338785b14.md) | 33 | `declaration-track:75cb7b631570142338785b144763bb283d70bb28cc70ddb3e799f21a56eeeb8d` |
| 4 | `def` | [explicitSecondDerivative](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/explicitsecondderivative--4999c50c92b3f343f5fe4e78.md) | 38 | `declaration-track:4999c50c92b3f343f5fe4e78fd8bb80c4348baf9de76255903c755cf68c058e5` |
| 5 | `theorem` | [scaledBump_eq_indicator](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/scaledbump-eq-indicator--4e1d466e6fb41be56ede5a32.md) | 42 | `result-track:4e1d466e6fb41be56ede5a32e3c583e0adbabcf14e198a8171e1bb3b3f509c06` |
| 6 | `theorem` | [bumpInterior_continuous](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/bumpinterior-continuous--0d6cae413bedf3d752c6b58d.md) | 52 | `result-track:0d6cae413bedf3d752c6b58d234c2246643f042e4f5bc93342fdce84c463d220` |
| 7 | `theorem` | [firstInterior_continuous](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/firstinterior-continuous--eb6e2a37c00359ec9ae0ca3d.md) | 57 | `result-track:eb6e2a37c00359ec9ae0ca3df6b7334dcdea0bfd7c6b55951afdcf814165027e` |
| 8 | `theorem` | [secondInterior_continuous](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/secondinterior-continuous--4c3a08bdf6036ac2e1a57c97.md) | 62 | `result-track:4c3a08bdf6036ac2e1a57c9755665d1d39aea1979f38b4902c098b0587dbc0e3` |
| 9 | `theorem` | [bumpInterior_hasDerivAt](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/bumpinterior-hasderivat--0cd9ff6e1eeb4e5564397c79.md) | 67 | `result-track:0cd9ff6e1eeb4e5564397c790ac6c39cffb467de1eddcfabafd69478c6bb1080` |
| 10 | `theorem` | [firstInterior_hasDerivAt](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/firstinterior-hasderivat--fec95d8bf1d6f5df34bbda00.md) | 77 | `result-track:fec95d8bf1d6f5df34bbda00a06f61eb0a6f1da782b07530f4d52b1d3d26d22f` |
| 11 | `theorem` | [bumpInterior_endpoints](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/bumpinterior-endpoints--0e635b985361f2d2a010d9d9.md) | 89 | `result-track:0e635b985361f2d2a010d9d9ece1190997201877f9a43c54d8f5870ec1f88608` |
| 12 | `theorem` | [firstInterior_endpoints](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/firstinterior-endpoints--78a5bec8f3e717973b9575fd.md) | 94 | `result-track:78a5bec8f3e717973b9575fd068313b4595f945fd491d92532cf8b4297c13420` |
| 13 | `theorem` | [secondInterior_endpoints](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/secondinterior-endpoints--8e1d72720bda521eeb91c65c.md) | 99 | `result-track:8e1d72720bda521eeb91c65c1f262e59ff9ff3968919d09d280df283e8d3ed5b` |
| 14 | `theorem` | [integrable_zeroExtension](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/integrable-zeroextension--89b62b5856c55dd15033650f.md) | 104 | `result-track:89b62b5856c55dd15033650f45b9fdf04695bd1270a0409a05121d4c6125f4be` |
| 15 | `theorem` | [zeroExtension_integral](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/zeroextension-integral--51ea2b47b12606b6f2d84102.md) | 109 | `result-track:51ea2b47b12606b6f2d841028021e6a7a1162cbf9c0c7c5891e0008f84fd40f1` |
| 16 | `theorem` | [scaledBump_integrable](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/scaledbump-integrable--31a9f96210934e3d5478bfa4.md) | 115 | `result-track:31a9f96210934e3d5478bfa408231ea11d09f27893682768c0cc1a5d8d1af4ed` |
| 17 | `theorem` | [explicitSecondDerivative_integrable](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/explicitsecondderivative-integrable--907348ece29850806157e1a5.md) | 121 | `result-track:907348ece29850806157e1a5ccd6ccaf44597a098dfad3cb1f7ffcf0534ceab2` |
| 18 | `theorem` | [scaledBump_weak_second_derivative](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/scaledbump-weak-second-derivative--6df8c4678e8dc06f80e87525.md) | 127 | `result-track:6df8c4678e8dc06f80e87525ca65fd005542220fc15294bfe7cdac737b537f77` |
| 19 | `theorem` | [explicit_dilationTest_zero_extension](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/explicit-dilationtest-zero-extension--0aac923e3046c8e23c9550d8.md) | 170 | `result-track:0aac923e3046c8e23c9550d8bddc6251ee4b55fc3b91d415e4fe1125324a2cb3` |
| 20 | `theorem` | [explicit_dilationTest_integrable](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/explicit-dilationtest-integrable--77416ab23972986f714f1537.md) | 178 | `result-track:77416ab23972986f714f1537eb7fd7fbf1067f49459167d9555cf9046044a2d5` |
| 21 | `theorem` | [explicit_dilationTest_eq_indicator](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/explicit-dilationtest-eq-indicator--dc970a477e83df17944a652f.md) | 185 | `result-track:dc970a477e83df17944a652fdb7aecd802967eaddf54a68c34f4486b0ae3dffc` |
| 22 | `theorem` | [explicit_dilationTest_square_integrable](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/declarations/explicit-dilationtest-square-integrable--092511da3ffbb2fc3c7dad99.md) | 194 | `result-track:092511da3ffbb2fc3c7dad9984df8c5d41b6f43364c4cfac2b8ac50bfa29e4c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
