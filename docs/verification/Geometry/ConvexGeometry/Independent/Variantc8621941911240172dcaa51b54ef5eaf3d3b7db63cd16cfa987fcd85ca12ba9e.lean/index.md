# Verification target: GRWTSK.Geometry.ConvexGeometry.Independent.Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "987a227caa15f706e23c8adbda7c78a0a824acb5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `987a227caa15f706e23c8adbda7c78a0a824acb5`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Extreme` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent--29ec0bc5535c8014759a692f.md) | 53 | `declaration-track:29ec0bc5535c8014759a692fd47387fe1e58ca8b57c6189a8c4d3e63a5d443bc` |
| 2 | `theorem` | [Subsingleton.convexIndependent](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/subsingleton-convexindependent--9158844ccec8237557d4a6d5.md) | 59 | `result-track:9158844ccec8237557d4a6d5699e8acd9016bc40d5835fe2cbacbd9a3c9da91e` |
| 3 | `theorem` | [ConvexIndependent.injective](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-injective--db006c42904092abd844d8c9.md) | 66 | `result-track:db006c42904092abd844d8c94f461869457dc06d92674452cfe0f3a2b53e1d42` |
| 4 | `theorem` | [ConvexIndependent.comp_embedding](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-comp-embedding--4b8b4d870c437e3369c7b1ad.md) | 74 | `result-track:4b8b4d870c437e3369c7b1ade162f305e272458d9e62811a30510b74f4a17f65` |
| 5 | `theorem` | [ConvexIndependent.subtype](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-subtype--a35fce001324261aaaeb7861.md) | 82 | `result-track:a35fce001324261aaaeb78612486c8ee4ff83f1bc5a9a41fd2e1afca2945317b` |
| 6 | `theorem` | [ConvexIndependent.range](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-range--10576a1809d79531db258dd6.md) | 87 | `result-track:10576a1809d79531db258dd6dfc3acc54d1ed7ab314a09a2339f16743b647633` |
| 7 | `theorem` | [ConvexIndependent.mono](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-mono--2e18e1d1f67c6f46a6eb2b2c.md) | 97 | `result-track:2e18e1d1f67c6f46a6eb2b2c6abd27fde8ba78a09e2dec7e110f2e818dbbce8c` |
| 8 | `theorem` | [Function.Injective.convexIndependent_iff_set](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/function-injective-convexindependent-iff-set--618d140e4d5dd4f3d20e8218.md) | 102 | `result-track:618d140e4d5dd4f3d20e82186d426be9ade07b5ee90f2dc6d59c83fee0cec107` |
| 9 | `theorem` | [ConvexIndependent.mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-mem-convexhull-iff--055045696e805519b40a0ad4.md) | 113 | `result-track:055045696e805519b40a0ad440d0e67c3716d73dd01feedd2b18dc0360e3b6fc` |
| 10 | `theorem` | [convexIndependent_iff_notMem_convexHull_diff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-iff-notmem-convexhull-diff--edb0709c3beb04f1fb3349b8.md) | 119 | `result-track:edb0709c3beb04f1fb3349b8ac17ca00b25b27a574acc94ce5869e41a48b69be` |
| 11 | `theorem` | [convexIndependent_set_iff_inter_convexHull_subset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-set-iff-inter-convexhull-subset--1b1333b9c6798be16273c1ed.md) | 132 | `result-track:1b1333b9c6798be16273c1edd8bf4d51bc6fc7fc7b20c182e73dbc789d31c734` |
| 12 | `theorem` | [convexIndependent_set_iff_notMem_convexHull_diff](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-set-iff-notmem-convexhull-diff--94fb0a5a9f696e3ba1a84097.md) | 145 | `result-track:94fb0a5a9f696e3ba1a84097af21761d90c0f96f1dc890726426e5d358d37b7b` |
| 13 | `theorem` | [convexIndependent_iff_finset](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convexindependent-iff-finset--546c15a7b207161a79e2506c.md) | 167 | `result-track:546c15a7b207161a79e2506c10907ce8384d9ee1773baa8652fef96d543b83be` |
| 14 | `theorem` | [Convex.convexIndependent_extremePoints](../../../../../mathematics/Geometry/ConvexGeometry/Independent/Variantc8621941911240172dcaa51b54ef5eaf3d3b7db63cd16cfa987fcd85ca12ba9e.lean/declarations/convex-convexindependent-extremepoints--52e751dd32d75657eb2af10e.md) | 191 | `result-track:52e751dd32d75657eb2af10ea573a7a1d3428c6e3e5b9613be1cb75dffff4a43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
