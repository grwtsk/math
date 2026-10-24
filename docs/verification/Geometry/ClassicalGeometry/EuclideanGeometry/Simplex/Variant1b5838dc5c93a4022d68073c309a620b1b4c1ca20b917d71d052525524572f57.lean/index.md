# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Simplex.Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4f5101e2411c1707d83171147707e807efb22d9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4f5101e2411c1707d83171147707e807efb22d9`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.Simplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Equilateral.angle_eq_pi_div_three](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/declarations/equilateral-angle-eq-pi-div-three--9ef86365ad2e7fe1b3d1677a.md) | 41 | `result-track:9ef86365ad2e7fe1b3d1677a18ae4ad080122ad806bcee2509293d96568c149a` |
| 2 | `def` | [AcuteAngled](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/declarations/acuteangled--a722360c7ea7950333d8f138.md) | 58 | `declaration-track:a722360c7ea7950333d8f13824de9b303dcd40b8a596156a2bddf580718419d4` |
| 3 | `lemma` | [acuteAngled_reindex_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/declarations/acuteangled-reindex-iff--b70f3c025c408f916676e10e.md) | 62 | `result-track:b70f3c025c408f916676e10e538d2ef37025e9ae0607e8844eaf65b992e830d0` |
| 4 | `lemma` | [Equilateral.acuteAngled](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/declarations/equilateral-acuteangled--cd4412b6cad165d56909e838.md) | 68 | `result-track:cd4412b6cad165d56909e838e971e1ffe5e967f6544b44ea33fbc95a80996785` |
| 5 | `lemma` | [acuteAngled_iff_angle_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Simplex/Variant1b5838dc5c93a4022d68073c309a620b1b4c1ca20b917d71d052525524572f57.lean/declarations/acuteangled-iff-angle-lt--9fc50af2e8d31a137ec252d6.md) | 77 | `result-track:9fc50af2e8d31a137ec252d6379888dfdb37e8e6faef3c2fdd5fbf9239f47bb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
