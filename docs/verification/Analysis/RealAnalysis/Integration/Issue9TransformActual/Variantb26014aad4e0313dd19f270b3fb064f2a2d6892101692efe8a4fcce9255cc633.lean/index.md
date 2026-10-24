# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Issue9TransformActual.Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/bumppolynomial--629d352703b6369c27a8c46d.md) | 13 | `declaration-track:629d352703b6369c27a8c46d8083b1b1a682bb51784a58157015d8b60696071d` |
| 2 | `def` | [primitivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/primitivepolynomial--6c61f114cfa4a39ed702a24b.md) | 15 | `declaration-track:6c61f114cfa4a39ed702a24b77f385f76bc30052acffedcf0ae097dc040ba192` |
| 3 | `theorem` | [primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/primitive-derivative--4d4e7ad08bddd915a91d1f4d.md) | 26 | `result-track:4d4e7ad08bddd915a91d1f4d0be8a7f7cdec542edbc83c486cb543ab71d9a51a` |
| 4 | `theorem` | [primitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/primitive-endpoint-pos--c39d50acd5c17756759d03e2.md) | 34 | `result-track:c39d50acd5c17756759d03e2c4a8f8bc35489aede3fdb140f46f9672bd7f4df0` |
| 5 | `theorem` | [primitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/primitive-endpoint-neg--a2dee7a64643a91e50a4f244.md) | 39 | `result-track:a2dee7a64643a91e50a4f244affa99944a86c7a017633a8ba06342c028a63c3d` |
| 6 | `def` | [fullPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/fullprimitive--8b3ad19070965b059aa4ed98.md) | 44 | `declaration-track:8b3ad19070965b059aa4ed98fbca3ff279972e9700d4fe5fdb86bbc71ae42462` |
| 7 | `theorem` | [fullPrimitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/fullprimitive-derivative--29c7b4c04a8918f4a36e8087.md) | 48 | `result-track:29c7b4c04a8918f4a36e808770aa894c95ddcd684ba8de91b0a35b4e1902f4bd` |
| 8 | `theorem` | [fullPrimitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/fullprimitive-endpoint-pos--a80b5cf9121127c798c257e2.md) | 57 | `result-track:a80b5cf9121127c798c257e297c8f814942867207cdfa1b4a79bcac179c1de7c` |
| 9 | `theorem` | [fullPrimitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/fullprimitive-endpoint-neg--6aefc45852341106500a98f2.md) | 63 | `result-track:6aefc45852341106500a98f26f4373bfa5be8b23efa5fd5cf53b6255d00bbaa0` |
| 10 | `def` | [interior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/interior--a9787560a07dd923d96af1c4.md) | 69 | `declaration-track:a9787560a07dd923d96af1c463198bcae1445c0ca28b8631d1c610059e1a3479` |
| 11 | `theorem` | [interior_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/interior-eq--40544b5dda6f503dd68eb6d8.md) | 73 | `result-track:40544b5dda6f503dd68eb6d864104badcbcaf183d49ddd4f7099bf3624b441b1` |
| 12 | `theorem` | [exponential_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/exponential-primitive--49302f4143255f8c24a790b0.md) | 87 | `result-track:49302f4143255f8c24a790b0cf9104f325a150e6f1441b4390c345a52d199bde` |
| 13 | `theorem` | [interior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/interior-continuous--d3fd3c1420f6b7d3a51fde95.md) | 99 | `result-track:d3fd3c1420f6b7d3a51fde955e91a2581dd0a17d0f2a46190c98e67d0eb0a02b` |
| 14 | `theorem` | [actual_integrand_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/actual-integrand-indicator--193d07d60a2438eb6f06d232.md) | 103 | `result-track:193d07d60a2438eb6f06d232ac43ba6b5afd0ac6763b5aeca84de29f9db12550` |
| 15 | `theorem` | [actual_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/actual-integrable--76173d20ae4b5c7f73a72cd9.md) | 111 | `result-track:76173d20ae4b5c7f73a72cd9560a7930862e3c94534ac281d54a15a4e9416cc6` |
| 16 | `theorem` | [actual_integral_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/actual-integral-interval--015059e02693590a47643247.md) | 118 | `result-track:015059e02693590a47643247ce19d321d9dc0fe530784d2f98f5629059cba368` |
| 17 | `theorem` | [normalized_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/normalized-primitive--0aebf2cc9b28dad0eee3035e.md) | 125 | `result-track:0aebf2cc9b28dad0eee3035e30bd314d2c180248da4483ff7af8a6990e856634` |
| 18 | `theorem` | [source_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/source-scale--e2acd1405efc52954da2af17.md) | 140 | `result-track:e2acd1405efc52954da2af17c953628553df302acb374c344251d3ecfcf29cd3` |
| 19 | `theorem` | [actual_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/actual-transform--113ba8cda030275e041742de.md) | 144 | `result-track:113ba8cda030275e041742de8ccf3a6778793af5c3c9f85937638f7bbbbd9168` |
| 20 | `theorem` | [bilateral_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/declarations/bilateral-transform--c4cc381c037c7aadcec020ca.md) | 158 | `result-track:c4cc381c037c7aadcec020ca1050b22f5d65b70fd5ac647e7f164b494f88a688` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
