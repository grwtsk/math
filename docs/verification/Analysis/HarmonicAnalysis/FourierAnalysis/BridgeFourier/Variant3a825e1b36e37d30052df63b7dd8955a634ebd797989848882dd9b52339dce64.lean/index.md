# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BridgeFourier.Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41933025f3086285c4247232331e6fbc843481b6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41933025f3086285c4247232331e6fbc843481b6`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_eq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/sourcefourier-eq-fourier--495984896d164e3e9a9eb346.md) | 27 | `result-track:495984896d164e3e9a9eb346841b331073d24ed2c2ace7ad8176ad1579cffed9` |
| 2 | `theorem` | [deriv_complexification](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/deriv-complexification--a8d02bf8d2c08046994a7ff0.md) | 41 | `result-track:a8d02bf8d2c08046994a7ff06db62a46e7a9ecc874d4d9183148268aafc8b895` |
| 3 | `theorem` | [sourceFourier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/sourcefourier-norm-le--ac51200d94bf190f2bc54644.md) | 47 | `result-track:ac51200d94bf190f2bc5464489e19796836ba0df26637a6043fdaecd37866b91` |
| 4 | `theorem` | [sourceFourier_deriv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/sourcefourier-deriv--eccdedecc11d471215760af6.md) | 57 | `result-track:eccdedecc11d471215760af6ab94a506ce16d55640efdb29620d5142d7f86201` |
| 5 | `theorem` | [sourceFourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/sourcefourier-frequency-bound--4dbbe1e982b87ee4f67cec9c.md) | 76 | `result-track:4dbbe1e982b87ee4f67cec9c65a559e1d3ffea852e9b43284a68457a62317a8b` |
| 6 | `theorem` | [sourceFourier_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/sourcefourier-continuous--2a1409b293b690b34263f1af.md) | 84 | `result-track:2a1409b293b690b34263f1af131b0f9e5830453ebcddd0bf8b31d5a52fe53314` |
| 7 | `theorem` | [log_fourier_majorant](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/log-fourier-majorant--41efbf1bc992cbd1331183a9.md) | 96 | `result-track:41efbf1bc992cbd1331183a91e22f122597c4a3ecc88854bf0597225fd90bf95` |
| 8 | `theorem` | [logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/logarithmic-fourier-integrable--1b81bdd0e48f1ea384fb962a.md) | 133 | `result-track:1b81bdd0e48f1ea384fb962af4f75eb529895444f612984737c48f755154ff13` |
| 9 | `theorem` | [fourier_normSq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/fourier-normsq-integrable--c83b020d923a79af228992c9.md) | 158 | `result-track:c83b020d923a79af228992c979491ca89b266a74813f6c5096defb5010149c05` |
| 10 | `theorem` | [actual_derivative_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/actual-derivative-integrable--cd5f0548ee9e2f7ef0b14276.md) | 180 | `result-track:cd5f0548ee9e2f7ef0b142768559d82f8bbe047fb532af60d4ad2b24532cbfee` |
| 11 | `theorem` | [actual_fourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/actual-fourier-frequency-bound--11ab2a7bd55f9db5a510eec7.md) | 187 | `result-track:11ab2a7bd55f9db5a510eec7630481fcf4947cb181b378f080876bac7aeb84e1` |
| 12 | `theorem` | [actual_logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/actual-logarithmic-fourier-integrable--18d42df0475b400cd6dc9ecf.md) | 196 | `result-track:18d42df0475b400cd6dc9ecf98e16b80762bedc7736556aa1352bcc759a9001d` |
| 13 | `theorem` | [actual_fourier_square_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant3a825e1b36e37d30052df63b7dd8955a634ebd797989848882dd9b52339dce64.lean/declarations/actual-fourier-square-integrable--c2535d901d63d732009d61aa.md) | 205 | `result-track:c2535d901d63d732009d61aae1007fa636920717d525600a9e533ed2f7aacd04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
