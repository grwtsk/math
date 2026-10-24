# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IndependentFixtures.Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fba80436468b086f21ce9fa78be5dc984388d2eb",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fba80436468b086f21ce9fa78be5dc984388d2eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/planecode--9097ec547e442ee5ed25ad58.md) | 27 | `declaration-track:9097ec547e442ee5ed25ad581fab1bac870bb0bdd5e9bdce1871e504c5f38db8` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/encode--9cde027b75bff920ba8e69bf.md) | 34 | `declaration-track:9cde027b75bff920ba8e69bf0f3147825e0a85ada8b832c0041ab7e9baaa7c6a` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/interpret--3a082faae3f6cf01e39f6e2a.md) | 38 | `declaration-track:3a082faae3f6cf01e39f6e2abe75302c748452c781eb3ebf8675ca86a7621381` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/supported--51f5174d1f6177c2a6f365a0.md) | 42 | `declaration-track:51f5174d1f6177c2a6f365a0aa29369444fffbb7101dc1ec9067edc1a7aac5d0` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/coefficients--dc6245676fd163bc3c058499.md) | 45 | `declaration-track:dc6245676fd163bc3c058499f22a7b117b6c5173d9a133eaef344a083ce3fc15` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/operation--4b151e93dcc9759ee1e64502.md) | 49 | `declaration-track:4b151e93dcc9759ee1e645028c4a07c7727092c4cf14c2221c8646b641d30b86` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/move--a63c21c531eacdbcc96fe252.md) | 54 | `declaration-track:a63c21c531eacdbcc96fe252cf565da6c00de47f29efd89a6fac918916abbe18` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/operation-eq-coefficients--d5a140ce03ccfe5320289fa2.md) | 61 | `result-track:d5a140ce03ccfe5320289fa26662c221c13d8892c33df28b602d473bf8ab2d63` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/interpret-encode--b005e420b2288557cf260297.md) | 70 | `result-track:b005e420b2288557cf2602974ce56934f5d1ba08f908f065020374e6073e647a` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/interpret-move--2efcebe80c408914e152b1b2.md) | 74 | `result-track:2efcebe80c408914e152b1b26f2161de3e3534ef53969ede6b3da9c6e90f6c94` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/interpret-move-encode--82e855fad300b8bef67feaf2.md) | 80 | `result-track:82e855fad300b8bef67feaf2dd29dc5487fabf853c3d1fa20afe27bade2c30fd` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/quadratic--282e14313a069123b378a421.md) | 85 | `declaration-track:282e14313a069123b378a421c29c8e882daa602f112077dbc73c1e90232bb2bb` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/operation-quadratic--9370242329c8c27a73ad3f99.md) | 88 | `result-track:9370242329c8c27a73ad3f9998cc173bacd433d2c344c73c7849d0df51007f9c` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/move-quadratic--20ac78ba972099b45da63a17.md) | 96 | `result-track:20ac78ba972099b45da63a178e397b6aa2c1add47696b20a2d1ef62f39d52613` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/reflection--0fdcfd2d0312da97b449a1a2.md) | 101 | `declaration-track:0fdcfd2d0312da97b449a1a2193537b7909b55aca101c3d73b18ce24474326a8` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/reflection-sq--a6eeb802f63db454744de081.md) | 105 | `result-track:a6eeb802f63db454744de081882124a0dcc5aadd3d2d617fae0ff178bacf8723` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/reflection-reversal--1926a3f2ef466362163feb1c.md) | 109 | `result-track:1926a3f2ef466362163feb1cdd20892b60d63802dd49b46255bcd36672b1cdb0` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/operation-inverse--1371a6b144f7b32936e06e2e.md) | 115 | `result-track:1371a6b144f7b32936e06e2e26c7f55377668c03b939c2d853d35c3a5ce198fd` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phasereflection--88bf722f68f631d5768e7e55.md) | 122 | `declaration-track:88bf722f68f631d5768e7e55daf684f3778fcba43bbbcbd11f7be8714805e2ad` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phasereflection-sq--213c1d60d1f9758882dae937.md) | 126 | `result-track:213c1d60d1f9758882dae937afa934b59283ae83418fb664edbf8ba60f60f818` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/coefficients-one--305ad7c8c9da4d0fde9c3da1.md) | 136 | `result-track:305ad7c8c9da4d0fde9c3da1a35929dee44a9f79aba0c559813f5fe27853925b` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/operation-one--debf6aa56caf06b6653f9cd9.md) | 140 | `result-track:debf6aa56caf06b6653f9cd9929532fa8854c3c34056414b67f239bf4e17606d` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/integralat--c1d7eab608426cfca32dd48d.md) | 154 | `declaration-track:c1d7eab608426cfca32dd48de2de8fcbc404fbc76eadefacf73653a5ec9542e8` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/integralvector--9cec8606c5bcf72992ebd215.md) | 158 | `declaration-track:9cec8606c5bcf72992ebd215860bbe73a4c3efcd726581becae5c75ed0b28bf5` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/operation-integral--8c78065d453c04d248ea5f47.md) | 161 | `result-track:8c78065d453c04d248ea5f472320dffc56c5a6cdebdabbffc4f07fc44272e101` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/integralat-iff-preserves-integral--16b0276d8c7d590af87eb1b4.md) | 178 | `result-track:16b0276d8c7d590af87eb1b43a8ffb4a8d97f3866db84c63f48c65147ef2bf79` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/instance--bfb5657bd36204a517caadfe.md) | 192 | `declaration-track:bfb5657bd36204a517caadfeae5a133892e463545b06a88d76581292ae863bd5` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/instance--e0fdb69b4a85dd12612100c3.md) | 193 | `declaration-track:e0fdb69b4a85dd12612100c364eb973c949767288ad64c201f5387b1e3052772` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/coefficients-two-rat--9b7552c29eeb66d103da1124.md) | 196 | `result-track:9b7552c29eeb66d103da11240beab14dab21d33108f285d9984d65316a288484` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-two-supported-five--59832c2249f143a7e834284e.md) | 201 | `result-track:59832c2249f143a7e834284e8ef102fcbf85630c286eec279926a108437672f8` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/coefficients-two-five-diagonal-norm--81dd7d01c01c3e472b8ff755.md) | 205 | `result-track:81dd7d01c01c3e472b8ff755afedb957aed61576d13d3e8a10c32c36c560598f` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-two-five-not-integral--88b749573fce5dc53b573512.md) | 216 | `result-track:88b749573fce5dc53b573512c7ff896da3ddaefc686752e734451b20d07d8bce` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-two-not-supported-mod-five--a22ddd92c407ec10f82ebf99.md) | 223 | `result-track:a22ddd92c407ec10f82ebf999c8c8fe903ec30d9c51dc53914973dcfb3e67e06` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-one-not-supported-mod-two--e1cadc547649ad72775222dc.md) | 228 | `result-track:e1cadc547649ad72775222dc9b0047cf9be8868e1a25d1825796a4ae2b1f7909` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-one-supported-two--d441b8523f14f6f9bf50f56d.md) | 233 | `result-track:d441b8523f14f6f9bf50f56d65a75efaa017881ceb40526d787acfc66c6d1bde` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-one-two-denominator-norm--56cf703a2b1f10d264de36cd.md) | 237 | `result-track:56cf703a2b1f10d264de36cd365d9c25251e9f09177e16f498fe4e5f4b0a1c37` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-one-two-integral--defeff6836d1b55565c116fd.md) | 242 | `result-track:defeff6836d1b55565c116fddcf541e77900ffae9c483f58a063d300ccab27ca` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-two-five-basis-nonintegral--521817416c7fe3ea210b9e3b.md) | 249 | `result-track:521817416c7fe3ea210b9e3b68cf0ab6b28af95dff0392e94cb9d9dd95ac339d` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/phase-one-two-preserves-integral--acb056c41136eee40566369d.md) | 255 | `result-track:acb056c41136eee40566369d1efd0b321cb9d71432a12a5ada5b882ed42c14e5` |
| 40 | `theorem` | [unsupported_coefficients_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/unsupported-coefficients-zero--79a4a3c10d6956df5249d160.md) | 270 | `result-track:79a4a3c10d6956df5249d1600ae23d4c4e9ca90ff41700605db45b34dcb4a4d3` |
| 41 | `theorem` | [domain_and_lattice_criterion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IndependentFixtures/Variantcbc689b6115261ac9eeeeebf18652cf854f69e687c084d95a490a93627e1d315.lean/declarations/domain-and-lattice-criterion--6e784c9a56d3a80d6b3e0995.md) | 276 | `result-track:6e784c9a56d3a80d6b3e0995dcea1ce71f446c85b4638dedf38b86370a300307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
