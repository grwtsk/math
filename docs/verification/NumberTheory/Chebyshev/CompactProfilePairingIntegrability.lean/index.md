# Verification target: GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd680a1eaf9989e5455ec7976c6772e4ff9f71a4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd680a1eaf9989e5455ec7976c6772e4ff9f71a4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Integration.CompactPolynomialMoments`](../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileCorrelation`](../../../../mathematics/Analysis/Convolution/CompactProfileCorrelation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Function.Floor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshev_prime_power_nonneg](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/declarations/chebyshev-prime-power-nonneg--0c13058378776adf083c5b15.md) | 26 | `result-track:0c13058378776adf083c5b15cf688c6822c303b449e89ecd43c3c28f66c35554` |
| 2 | `theorem` | [chebyshev_prime_power_monotone](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/declarations/chebyshev-prime-power-monotone--30bdf21eff6beaa5518ce2b9.md) | 30 | `result-track:30bdf21eff6beaa5518ce2b9ec013342cf457c66816b0166fe8a2d3631ab25da` |
| 3 | `theorem` | [error_profile_measurable](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/declarations/error-profile-measurable--6ad4119ac2858e180ac6afda.md) | 40 | `result-track:6ad4119ac2858e180ac6afdafebf7ab03e7e02433ad7de67a18a237b263b26f9` |
| 4 | `theorem` | [error_profile_bound](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/declarations/error-profile-bound--c05164594cd6836d993cd5ed.md) | 46 | `result-track:c05164594cd6836d993cd5edf903004deafe1f62c71d2ba7f3c42b68c9428daf` |
| 5 | `theorem` | [source_weight_continuous](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/declarations/source-weight-continuous--d31732e88bcd2b0632f3edb0.md) | 59 | `result-track:d31732e88bcd2b0632f3edb0a5832394b464bd3e26e86ac777605e94a4b7739e` |
| 6 | `theorem` | [signed_pairing_integrable](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/declarations/signed-pairing-integrable--7c1ce020332f29e6321ce875.md) | 67 | `result-track:7c1ce020332f29e6321ce875b6603f919b91541ae9aae3bccc07686bbe6cc720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
