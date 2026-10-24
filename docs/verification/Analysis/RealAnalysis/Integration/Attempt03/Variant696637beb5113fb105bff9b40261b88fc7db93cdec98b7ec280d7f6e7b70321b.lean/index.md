# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e74de990257d5694e7d2ea094993621f2caf65",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e74de990257d5694e7d2ea094993621f2caf65`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/normalizedtransform--37589d0d0bfcef91048f8482.md) | 25 | `declaration-track:37589d0d0bfcef91048f8482349f4b34ae75a80c6533d5931c3d20901759ff56` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/boundarytransform--f61a02e017bda7d22b42aed3.md) | 30 | `declaration-track:f61a02e017bda7d22b42aed3e494a6a8472f33249927eba06443badc70f35395` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/normalizedtransform-dictionary--15fa9f6cd24e324a778cb19e.md) | 33 | `result-track:15fa9f6cd24e324a778cb19ef4cd8d294b759072c03fb6656fde01fad3635605` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/normalized-integrand-integrable--561f90026489f05b9f2285db.md) | 43 | `result-track:561f90026489f05b9f2285db46061e9bf150f89de6f024cc81096f2a8ed646e1` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/full-complex-correlation-square--9c5286c16916cfda0bdb703d.md) | 54 | `result-track:9c5286c16916cfda0bdb703dc337af101347a5fe40896eef75e6a0c599fe493d` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/interval-complex-correlation-square--f62c9f404cc362b95766bae6.md) | 85 | `result-track:f62c9f404cc362b95766bae6aaa6e1a39d98b237b2ec5b18e9848ce8054e689f` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/critical-complex-ibp--43f4a9cec507287b7942cbd6.md) | 106 | `result-track:43f4a9cec507287b7942cbd699b2c18c8877fcadf4ab67372c99872d446dd02c` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/declarations/boundary-transform-exact--8dcc90cd59637ba67fb81c33.md) | 147 | `result-track:8dcc90cd59637ba67fb81c339fe7f5483d76a0ad5739a39ef617d4a8b5c5dac9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
