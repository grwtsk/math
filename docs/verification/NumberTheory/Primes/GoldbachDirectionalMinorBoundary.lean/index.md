# Verification target: GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "090b9b5e9658c4b5042fd4c1cdfba17e967fc855",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `090b9b5e9658c4b5042fd4c1cdfba17e967fc855`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget`](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [goldbachProgressionModel_add_residual_add_minor](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/goldbachprogressionmodel-add-residual-add-minor--10bd73aac41b7a5bf5fee227.md) | 35 | `result-track:10bd73aac41b7a5bf5fee2276484440d229e722df6538226d82c77451de135da` |
| 2 | `theorem` | [norm_goldbachProgressionResidualSum_le_frequency](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/norm-goldbachprogressionresidualsum-le-frequency--96c837e9369a9b783b4bd972.md) | 46 | `result-track:96c837e9369a9b783b4bd9729c93f4bbcc665289dadf251a0c1858ccca2143cb` |
| 3 | `theorem` | [mass_interval_of_norm_margin](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/mass-interval-of-norm-margin--fa5fffb62b49ee3cfeaf7a11.md) | 58 | `result-track:fa5fffb62b49ee3cfeaf7a111a228aa048bde7c047e0d7eee5ea3945b6b7aff3` |
| 4 | `theorem` | [goldbachLogMass_interval_of_frequency_norm_margin](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/goldbachlogmass-interval-of-frequency-norm-margin--e5fedfd3f29e2b81457a2dd4.md) | 71 | `result-track:e5fedfd3f29e2b81457a2dd408700de2b8555224173d5951877a072e1e4e16c3` |
| 5 | `theorem` | [no_frequency_norm_margin_of_large_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/no-frequency-norm-margin-of-large-logmass--2fa5fe34574119bdac28db44.md) | 87 | `result-track:2fa5fe34574119bdac28db44e8e2b3ec9941c136a00c698aeb4abfb3a4c7acff` |
| 6 | `theorem` | [mass_lower_of_signed_minor_lower](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/mass-lower-of-signed-minor-lower--94ffc4c7031c1a2878feeee2.md) | 104 | `result-track:94ffc4c7031c1a2878feeee251cb87abddee36ee885d239955650166a40f9965` |
| 7 | `theorem` | [goldbachCount_pos_of_frequency_signed_minor_lower](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/goldbachcount-pos-of-frequency-signed-minor-lower--819e6c684fdf92c1477a9ba9.md) | 116 | `result-track:819e6c684fdf92c1477a9ba9ff9fadac3148df2cbb80851d8455baf061276e4f` |
| 8 | `theorem` | [goldbachCount_pos_above_of_frequency_signed_minor_supplier](../../../../mathematics/NumberTheory/Primes/GoldbachDirectionalMinorBoundary.lean/declarations/goldbachcount-pos-above-of-frequency-signed-minor-supplier--73871c9c05aad7c823822784.md) | 133 | `result-track:73871c9c05aad7c82382278440dd2c0e9ec65e693f8099b83918a5bafb565af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
