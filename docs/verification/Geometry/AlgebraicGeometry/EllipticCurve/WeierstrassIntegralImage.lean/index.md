# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassIntegralImage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c1279803b705e13d4da51c9981f8ab3f149677",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c1279803b705e13d4da51c9981f8ab3f149677`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/term--9c9997f8ef72d2dafd5970e3.md) | 22 | `declaration-track:9c9997f8ef72d2dafd5970e32eda8322c44acd0dbb2c3f251d54c449f48d4762` |
| 2 | `theorem` | [term_even](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/term-even--3c7acbedfe366631320cc11b.md) | 24 | `result-track:3c7acbedfe366631320cc11ba4a4ae19ee65e7fd5d16947eb7a7b6cf35a01596` |
| 3 | `theorem` | [term_odd](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/term-odd--3f13dcf77a8bb9ad4cd3dafb.md) | 27 | `result-track:3f13dcf77a8bb9ad4cd3dafb31e8368ddd45b9758b552972a8a6d588ffb93fd2` |
| 4 | `def` | [lattice](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/lattice--35ca768e600e62922885c541.md) | 31 | `declaration-track:35ca768e600e62922885c5413ef118f8bcc33c303bbbf1e6c6928c75569fda6a` |
| 5 | `theorem` | [monomial_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/monomial-zero--8e0c6cc0e47195db06842aba.md) | 35 | `result-track:8e0c6cc0e47195db06842aba1aeb6ea82c28d45ab9511536968683119385a0ac` |
| 6 | `theorem` | [term_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/term-zero--e0ef0e173ae7ed99321929bd.md) | 45 | `result-track:e0ef0e173ae7ed99321929bded96e62a0093c4ea0de1a20406fde596a790de84` |
| 7 | `theorem` | [term_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/term-mem--4729bb0f301185fe3b2d165f.md) | 52 | `result-track:4729bb0f301185fe3b2d165f9943e945425ad97461713ec0f8b9db18251ce49b` |
| 8 | `theorem` | [even_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/even-mem--dc4eedcebcb5dfbe3e179c3c.md) | 59 | `result-track:dc4eedcebcb5dfbe3e179c3c39ac0f317e96ff77790a2129f9a760e98d9fc5db` |
| 9 | `theorem` | [odd_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/odd-mem--46db3890388dbc796e95a8f3.md) | 63 | `result-track:46db3890388dbc796e95a8f3691d0e0232788821ae3a170c46a53e55b7b9e3fd` |
| 10 | `def` | [Relation](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/relation--28df42666b29be7e2ba66040.md) | 68 | `declaration-track:28df42666b29be7e2ba660406069ea960082cce0cb01051d61a2f4e3edeb573a` |
| 11 | `theorem` | [y_mul_odd](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/y-mul-odd--28b908bda1969181ce590495.md) | 72 | `result-track:28b908bda1969181ce590495e685f581606626c9d8d323ef22f5cddb773986b4` |
| 12 | `theorem` | [x_mul_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/x-mul-mem--039140ad3d33f1012f83baa0.md) | 79 | `result-track:039140ad3d33f1012f83baa0699b21d9f14bd27fad6d313efe7807dfd55a12b6` |
| 13 | `theorem` | [y_mul_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/y-mul-mem--9dcf66deee4ecdc881a8e1f7.md) | 93 | `result-track:9dcf66deee4ecdc881a8e1f788d30b899a5fd660b5aa8582ded68b91e82a1dce` |
| 14 | `def` | [evaluate](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/evaluate--9cd0ecea5a4fc22b1b9ed260.md) | 118 | `declaration-track:9cd0ecea5a4fc22b1b9ed260690ed12675e93ed71ca65088d6547aaec0a042c8` |
| 15 | `theorem` | [mem_lattice_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/mem-lattice-iff--bca0acb186bc299fcf3d5eaa.md) | 122 | `result-track:bca0acb186bc299fcf3d5eaa5e7151140e5fd80c074dc20a37a3242352846287` |
| 16 | `theorem` | [parameter_pow_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/parameter-pow-mem--25b78629e452fc67f1de641f.md) | 155 | `result-track:25b78629e452fc67f1de641f8a8074b86f95db5f88badf687349e5600234c39c` |
| 17 | `theorem` | [relations_le_kernel](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/relations-le-kernel--8d8bd909235dfb28e4503fb2.md) | 162 | `result-track:8d8bd909235dfb28e4503fb2cbb6042954f5f4a939ee1e78e2ba0acae2ca3046` |
| 18 | `def` | [fromIntegralJet](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/fromintegraljet--6dc3a5a8185aef78310a3072.md) | 192 | `declaration-track:6dc3a5a8185aef78310a3072a77948242fdf2634ce2bf364ef708e859be3a6ea` |
| 19 | `theorem` | [integral_jet_image](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/declarations/integral-jet-image--83c82ac6a7669bfba5caa4c5.md) | 197 | `result-track:83c82ac6a7669bfba5caa4c5d6c05f115b3a141d30acba3d39f85fa16d9caae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
