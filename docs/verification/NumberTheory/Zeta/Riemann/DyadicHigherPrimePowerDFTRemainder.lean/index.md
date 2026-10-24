# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerDFTRemainder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd67f27f123229da4af05b526af8ad5c39554669",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd67f27f123229da4af05b526af8ad5c39554669`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateNecessaryDecay`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenCoordinateNecessaryDecay.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/coefficient-nonnegative--fb4b9276a7d99b698b411774.md) | 52 | `result-track:fb4b9276a7d99b698b411774265d7c5ee9e3ba2b275579d5643ea70dcbd025ab` |
| 2 | `def` | [higherPrimePowerWindowMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowerwindowmass--ca0c17c87aa2f5f1a7f577b1.md) | 58 | `declaration-track:ca0c17c87aa2f5f1a7f577b1a45c53e8ab391d0b213c144a3509c384c1a49035` |
| 3 | `theorem` | [higherPrimePowerWindowMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowerwindowmass-nonnegative--200fd6c409ba47d90d65a808.md) | 61 | `result-track:200fd6c409ba47d90d65a808ad40c85dda4e675ff6496b997e638c130c1cff51` |
| 4 | `def` | [higherPrimePowerMangoldtWindowMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowermangoldtwindowmass--e213cd1b8fd9e8d768e80f82.md) | 67 | `declaration-track:e213cd1b8fd9e8d768e80f82e442e2c6f636ad2403350665ede61fc547d8690f` |
| 5 | `theorem` | [higherPrimePowerMangoldtWindowMass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowermangoldtwindowmass-nonnegative--031a0b17fcf7844e1d831e31.md) | 70 | `result-track:031a0b17fcf7844e1d831e31bcea665d07add471d3f466f03e0cb28d30082f5b` |
| 6 | `theorem` | [higherPrimePowerWindowMass_le_mangoldt_div](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowerwindowmass-le-mangoldt-div--7a4e17f6a97be81f33588027.md) | 77 | `result-track:7a4e17f6a97be81f335880272e83325ecab6db30ff7a2b827e6eaae9060eec67` |
| 7 | `theorem` | [higherPrimePowerMangoldtWindowMass_le_psi_sub_theta](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowermangoldtwindowmass-le-psi-sub-theta--037d8997b8ebf2de87cef45b.md) | 102 | `result-track:037d8997b8ebf2de87cef45b41ba9aa910a3403b043c1e977a25ef2b597ced9d` |
| 8 | `theorem` | [higherPrimePowerWindowMass_sqrt_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/higherprimepowerwindowmass-sqrt-bound--7d12838436e74079cdf9434e.md) | 134 | `result-track:7d12838436e74079cdf9434ef4b13950acfcf5200d3cee82d39cb3f69350aabb` |
| 9 | `def` | [greenPrimeOnlyDFTPhaseSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenprimeonlydftphasesum--289540eadc055bd569550f5c.md) | 159 | `declaration-track:289540eadc055bd569550f5c6e50e7161d6ad43e9dbbd35c665446b856b0bc0f` |
| 10 | `def` | [greenHigherPrimePowerDFTPhaseSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenhigherprimepowerdftphasesum--ab097747879cc7413c615927.md) | 165 | `declaration-track:ab097747879cc7413c6159278ca1216d0517d167818252c22f86a28e683509a6` |
| 11 | `def` | [greenPrimeOnlyWindowMassComplex](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenprimeonlywindowmasscomplex--e2ad8ee8ac441742817eca06.md) | 170 | `declaration-track:e2ad8ee8ac441742817eca062b189bf141866e8ff92d714b7062c06fc52098b8` |
| 12 | `def` | [greenHigherPrimePowerWindowMassComplex](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenhigherprimepowerwindowmasscomplex--a76f9e0dae0f423f54242b16.md) | 173 | `declaration-track:a76f9e0dae0f423f54242b16b0a8ef839ca06ac48c564c384e36ff855a8c5ba0` |
| 13 | `theorem` | [greenWeightedDFTPhaseSum_split](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenweighteddftphasesum-split--69f488a340712d28ff30c77a.md) | 178 | `result-track:69f488a340712d28ff30c77a51d14b0d0942a1acd8648dd1913ab789722f3e73` |
| 14 | `theorem` | [greenWindowCoefficientMassComplex_split](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenwindowcoefficientmasscomplex-split--b4ddb0cdb24c0689a3e8ef60.md) | 190 | `result-track:b4ddb0cdb24c0689a3e8ef606aa0f585b9bd9da8e40e57bfa70774045b2e3732` |
| 15 | `def` | [greenPrimeOnlyFourierPrimeCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenprimeonlyfourierprimecoordinate--a1758c809921254a071e9fd8.md) | 204 | `declaration-track:a1758c809921254a071e9fd87fcaa6ca9468d2c567bc9e5ddecbcd4969014921` |
| 16 | `def` | [greenHigherPrimePowerFourierPrimeCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenhigherprimepowerfourierprimecoordinate--da14a5bb11dfcf322991bb96.md) | 211 | `declaration-track:da14a5bb11dfcf322991bb96f8d93b6417011bc8259fee77c971fdde83c60632` |
| 17 | `theorem` | [greenFourierPrimeCoordinate_split](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenfourierprimecoordinate-split--6417c9edc33d14a436f8642c.md) | 217 | `result-track:6417c9edc33d14a436f8642ce135737c3c891fa7faf77d2887f385c2657611d9` |
| 18 | `theorem` | [greenHigherPrimePowerDFTPhaseSum_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenhigherprimepowerdftphasesum-norm-le--4dd81849e4be76a25d1deead.md) | 232 | `result-track:4dd81849e4be76a25d1deead474d40d03849123db2f56362540c21211522f69b` |
| 19 | `theorem` | [greenHigherPrimePowerWindowMassComplex_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenhigherprimepowerwindowmasscomplex-norm--b6443405ec07893b27b19a54.md) | 253 | `result-track:b6443405ec07893b27b19a54e2d52297634373d6c4a8510df4a5be03045758a9` |
| 20 | `theorem` | [greenHigherPrimePowerFourierPrimeCoordinate_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/declarations/greenhigherprimepowerfourierprimecoordinate-norm-le--09a87ca95e4da7092d783aa7.md) | 265 | `result-track:09a87ca95e4da7092d783aa7171b1aadfce8611fb2d98a6ee7410149d3e4b106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
