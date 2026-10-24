# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58cd77b039784fb584b53880f8454dd81583d07d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58cd77b039784fb584b53880f8454dd81583d07d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/normalizedtransform--253ae25ee9526b1a0cae627c.md) | 33 | `declaration-track:253ae25ee9526b1a0cae627c781e6fa5d11c3c19ce59135d16e053b09035fe55` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/boundarytransform--54b85f8990645e0068482977.md) | 38 | `declaration-track:54b85f8990645e0068482977102db63957eb9f0d69921512f66569084b10c9fc` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/normalizedtransform-dictionary--ceeaad2e06d6d90015b984b1.md) | 41 | `result-track:ceeaad2e06d6d90015b984b1a3dc08a98dfe80e61a2619ece3971146fea34f85` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/normalized-integrand-integrable--206e5d7b2f4f043edcbe8c2e.md) | 51 | `result-track:206e5d7b2f4f043edcbe8c2e99baec1777292286e56f4cc86b5ba4479cb54a03` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/full-complex-correlation-square--8d0cda95e984e5fe631234d4.md) | 62 | `result-track:8d0cda95e984e5fe631234d4ad19dddd0bf32d083ca1301776f216d314cabfc8` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/interval-complex-correlation-square--069cfb20bae15d15320f10f4.md) | 93 | `result-track:069cfb20bae15d15320f10f43c3add7396311abd6600831a456afac69647601c` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/critical-complex-ibp--66b1c262e863aa7fbebbc0ec.md) | 114 | `result-track:66b1c262e863aa7fbebbc0ec2efb20ea6f62e853a8a9ea044df86f9d834d0278` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb.lean/declarations/boundary-transform-exact--1e27f7bebb2d81cc16aa0081.md) | 155 | `result-track:1e27f7bebb2d81cc16aa008182182d3026df828cf7aad8a5c4910a06f3fc22e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
