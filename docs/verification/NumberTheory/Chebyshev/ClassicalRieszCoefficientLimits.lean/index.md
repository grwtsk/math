# Verification target: GRWTSK.NumberTheory.Chebyshev.ClassicalRieszCoefficientLimits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ce7a9562f744f1c02709dfcf0a162d9919fba3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ce7a9562f744f1c02709dfcf0a162d9919fba3`.

Source path: `GRWTSK/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization`](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszNormalization.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation`](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSourceSlope](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/finitesourceslope--82d350e1ce09854dac157afb.md) | 20 | `declaration-track:82d350e1ce09854dac157afbc4f898e37858b696a9cd624df3f4a71f8fec0b1f` |
| 2 | `def` | [finiteSourceIntercept](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/finitesourceintercept--d8e85dee70b48a9e338f0663.md) | 23 | `declaration-track:d8e85dee70b48a9e338f06638763c98c879c8dbdb17e1d6c206a22439d140a36` |
| 3 | `theorem` | [slope_error_eq](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/slope-error-eq--e4f6528de731cfd2a3aac56f.md) | 26 | `result-track:e4f6528de731cfd2a3aac56f98f3d91443591db05137e1a1a977a05bef6415f8` |
| 4 | `theorem` | [norm_slope_error_le](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/norm-slope-error-le--7f54476b708ac84ac509a90b.md) | 35 | `result-track:7f54476b708ac84ac509a90ba0bf7057e604fa5649f0dcdecf5397b8e629dd9f` |
| 5 | `theorem` | [norm_intercept_error_le](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/norm-intercept-error-le--5ca6c182bf186cc59fa97df5.md) | 42 | `result-track:5ca6c182bf186cc59fa97df5055315407eb63b59bd2ff066ba44fabe912f1550` |
| 6 | `theorem` | [finiteSourceSlope_tendsto_source](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/finitesourceslope-tendsto-source--4f7f3fa978b701656cb1e814.md) | 58 | `result-track:4f7f3fa978b701656cb1e81442429e9533129908b2c363db2e2c0d51aa7acd1d` |
| 7 | `theorem` | [finiteSourceIntercept_tendsto_source](../../../../mathematics/NumberTheory/Chebyshev/ClassicalRieszCoefficientLimits.lean/declarations/finitesourceintercept-tendsto-source--dea44b99d565195b9736fa6b.md) | 67 | `result-track:dea44b99d565195b9736fa6b99963da56afae3eeb50deddcea0fde8559dc08b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
