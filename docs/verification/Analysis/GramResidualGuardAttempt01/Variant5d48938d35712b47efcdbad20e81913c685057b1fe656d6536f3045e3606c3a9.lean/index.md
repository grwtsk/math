# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt01.Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ba5bb5bf4c5713c54ab976221fd7f5553e48713",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ba5bb5bf4c5713c54ab976221fd7f5553e48713`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/quadratic-difference-abs-le--a8f0a6baa3e521fbad3bfd2e.md) | 18 | `result-track:a8f0a6baa3e521fbad3bfd2ef647ac9f8834737d56a6cbf579fcbe4efb51f71e` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/positive-approximation-lower--87140e57cc22d47d37ef6ac3.md) | 31 | `result-track:87140e57cc22d47d37ef6ac387442da9459d83c6d9c38cd4f1c9d350afac7815` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/coercive-approximation-lower--6de55c6c3f38d8bd8ce5ff11.md) | 39 | `result-track:6de55c6c3f38d8bd8ce5ff116cf262e2a10b4560709536137a73332ded128004` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/positive-of-coercive-residual--7b628422af63a99e0e06dfb5.md) | 47 | `result-track:7b628422af63a99e0e06dfb578e03ebc9534a8fc7f267a0eec63213e06e74e48` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/positive-of-arbitrary-precision--6b12dc0402181f5c33899a9e.md) | 55 | `result-track:6b12dc0402181f5c33899a9e97bda53d9e2633373b6290edb1478e239280fac2` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/gram-residual-lower--fad5c149bc3b5e34e54bf8ba.md) | 77 | `result-track:fad5c149bc3b5e34e54bf8ba4044e0fe9a74918dbe4b5669244d9f6770e34b18` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/positive-of-arbitrary-gram-precision--db9ac4fb4de2dcad532e7417.md) | 86 | `result-track:db9ac4fb4de2dcad532e741769ad61f6f68576f7de3241538fb7a7add583ec49` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/positivedistance--395518f9c2ea4781110d158d.md) | 96 | `declaration-track:395518f9c2ea4781110d158deab1f31989192b5fe59ea7c752e414e19013db29` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/negative-rayleigh-le-norm--8513b8c700c35d348871f9c8.md) | 99 | `result-track:8513b8c700c35d348871f9c864c472dcbfc0c7a7a54a208dd1550e15dff5676b` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/negative-rayleigh-distance-lower--5208514aae1f58287238eca8.md) | 111 | `result-track:5208514aae1f58287238eca81bb2d13c67898f301dc5d0b750593cbc08631f6b` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/positivedistance-eq-zero-iff--f216f6d193112ca6931b9121.md) | 121 | `result-track:f216f6d193112ca6931b9121f66a8d94034c1916e54d2357a18348781a527ee9` |
| 12 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/matrixoperator--7086afec1bbb0a1a8b20a9e0.md) | 139 | `declaration-track:7086afec1bbb0a1a8b20a9e037314833016d662d9952c1135b828fc6bbe41e3c` |
| 13 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/matrixoperator-positive-iff--2ad7493e8254b8ec39a3295a.md) | 142 | `result-track:2ad7493e8254b8ec39a3295add14cebe2d4481d47adb3786ec0cfaea4d001f3b` |
| 14 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--4ea52595c8eaa15b89b6e23c.md) | 147 | `result-track:4ea52595c8eaa15b89b6e23cebdab2a3425c7aae019df547b9c572330ac29fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
