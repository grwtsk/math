# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SourceSensitivePackingNoGo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ede2f22d91b82774ab7cba993819bcd6cc62c74f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ede2f22d91b82774ab7cba993819bcd6cc62c74f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DirichletDampedPrimePowerPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [target_eq_zero_of_model_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/target-eq-zero-of-model-tendsto-zero--f0f964d9f5fa767f8e387f6f.md) | 41 | `result-track:f0f964d9f5fa767f8e387f6f11f90f3c60f5a049033808589d3733612dfc0874` |
| 2 | `structure` | [FixedDampedPackingComparisonAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/fixeddampedpackingcomparisonatzero--5180b8544dc18c56a7aba40b.md) | 62 | `declaration-track:5180b8544dc18c56a7aba40b20873319a83afb2f645cb52bf828d99444114b97` |
| 3 | `theorem` | [FixedDampedPackingComparisonAtZero.witnessTrace_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/fixeddampedpackingcomparisonatzero-witnesstrace-eq-zero--f24b2b27d11ee2aec1202457.md) | 75 | `result-track:f24b2b27d11ee2aec1202457e48b209b6548894e578f9ca9b8255502a2b098f1` |
| 4 | `theorem` | [FixedDampedPackingComparisonAtZero.forces_critical_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/fixeddampedpackingcomparisonatzero-forces-critical-line--9f18f65526a36430b2ecd600.md) | 92 | `result-track:9f18f65526a36430b2ecd60028376a7c8eed6098e0ae5cea0fbef7422df34b25` |
| 5 | `structure` | [SourceSensitivePrimePowerPointFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/sourcesensitiveprimepowerpointfamily--7f2e4ea0a0e55d66b41246b3.md) | 105 | `declaration-track:7f2e4ea0a0e55d66b41246b32b4493273fce97c6fe981a5a4f871e22154e3d89` |
| 6 | `def` | [SourceSensitivePrimePowerPointFamily.sequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/sourcesensitiveprimepowerpointfamily-sequence--f31d5ace11d86f3bf64885d9.md) | 114 | `declaration-track:f31d5ace11d86f3bf64885d9641c25b0d0840d58e9bffed20383d3e5bc49202e` |
| 7 | `theorem` | [SourceSensitivePrimePowerPointFamily.valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/sourcesensitiveprimepowerpointfamily-valueat-nonnegative--ec2c4dccb35aa22a3dc0b43d.md) | 126 | `result-track:ec2c4dccb35aa22a3dc0b43db80d3dbc3fdf14f4323a3d2a56748e698e49f6a8` |
| 8 | `structure` | [SourceSensitivePackingComparisonAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/sourcesensitivepackingcomparisonatzero--8045ca0da037102afefb2654.md) | 136 | `declaration-track:8045ca0da037102afefb2654a59413d9c075d76c943be24f70469d0f3339aa06` |
| 9 | `theorem` | [SourceSensitivePackingComparisonAtZero.stage_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SourceSensitivePackingNoGo.lean/declarations/sourcesensitivepackingcomparisonatzero-stage-nonnegative--e0a275a9a794017fd242090f.md) | 153 | `result-track:e0a275a9a794017fd242090fe0047a6b9df12d7b402b9a82af901e4a9c811bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
