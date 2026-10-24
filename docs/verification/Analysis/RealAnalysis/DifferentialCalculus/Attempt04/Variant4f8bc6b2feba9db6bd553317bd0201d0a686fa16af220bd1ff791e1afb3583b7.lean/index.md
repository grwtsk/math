# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt04.Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb27fbc7e7e73c5b8b8a51ed69162c1105fdc2b1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb27fbc7e7e73c5b8b8a51ed69162c1105fdc2b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/compactlaplace--604c55ef1b3464878dc8f095.md) | 29 | `declaration-track:604c55ef1b3464878dc8f09536307222aa3023719d56f83f013e165fd3b576dc` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/primitivetransform--1c949e669f0878387f9af91b.md) | 32 | `declaration-track:1c949e669f0878387f9af91b25b71cef1f18bcf2a7aeb9d88fcdddbdc0aa2469` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/normalizedprimitivetransform--272dc2caf0d6ff7e4c1e8877.md) | 34 | `declaration-track:272dc2caf0d6ff7e4c1e88774b072b801a50b7916e70bfbf033861175bc41bd1` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/compactlaplace-integrable--fdc5beac8bd4f0de8e9b83d9.md) | 37 | `result-track:fdc5beac8bd4f0de8e9b83d948f5b197f61fdeb31fabe9ca1b7015974a5c2dff` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/complex-weighted-derivative--045481474e3e74c4658d1924.md) | 44 | `result-track:045481474e3e74c4658d19249863e8162e6800f185afd5fb3ea0dd04ff7b236d` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/actual-complex-pole-filter--1cda6713b3fae4be9cf5d19d.md) | 73 | `result-track:1cda6713b3fae4be9cf5d19d337de6a52516cc507bab907821a7069bd43dc8f5` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/primitive-transform-normalization--cd896829130e2654c483a285.md) | 100 | `result-track:cd896829130e2654c483a285c8aa8912d1c69975973a4b3629b3cff2f3eb0dd1` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/boundary-transform-factored--7091b4760d424559b784baa5.md) | 110 | `result-track:7091b4760d424559b784baa5822370b37c89d182a18830ea907a1885af31d5d1` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/boundary-transform-factored-unnormalized--9c9e76cf5b7ee2c5c7f57229.md) | 117 | `result-track:9c9e76cf5b7ee2c5c7f572292b06c155636544b067167900b16db159b218b4f8` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/compactlaplace-hasderivat--07724bd3a8d5f1db9f392071.md) | 127 | `result-track:07724bd3a8d5f1db9f39207163f39933c0a1b5500dd0df271c71d45b79c3a930` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/compactlaplace-differentiable--19312594e38e89fa32caa603.md) | 172 | `result-track:19312594e38e89fa32caa603e420a359e09a3dcf49dd08b53b184930b8aeeedf` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/normalized-primitive-differentiable--53f476d770f833c48e1f6da4.md) | 176 | `result-track:53f476d770f833c48e1f6da4be6b99453d2d0b20cd889b7893f341ec1ae64e7f` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/primitive-differentiable--6221e63d8dedc832c637970f.md) | 181 | `result-track:6221e63d8dedc832c637970f15eb47501c018453af3ca9d058c1e45d833bca9f` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/boundary-differentiable--9c79d5b75fd3d6ef7d062f59.md) | 186 | `result-track:9c79d5b75fd3d6ef7d062f59fba28caaf336194cd267b207d6973009ae8f7766` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/normalized-primitive-half--bd5b33bb608c70644b8a1c73.md) | 195 | `result-track:bd5b33bb608c70644b8a1c73c43131c66e105fdbec8b90a96816d239754a196a` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant4f8bc6b2feba9db6bd553317bd0201d0a686fa16af220bd1ff791e1afb3583b7.lean/declarations/normalized-primitive-half-ne-zero--201f58b9ac43223f0760d2bb.md) | 210 | `result-track:201f58b9ac43223f0760d2bba51e150b3b77a1481e2b69469ddb07d4ebd6c208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
