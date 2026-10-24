# Verification target: GRWTSK.Analysis.ZetaHalfPlaneScaffold.Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e49821d8530cce2c31fb5f4caf754674b9e34d5e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/index.md) · [Full source](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e49821d8530cce2c31fb5f4caf754674b9e34d5e`.

Source path: `GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.FiniteEulerProduct` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.ClassicalAnchor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZetaSeriesConvergesOnRealHalfPlane](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/declarations/zetaseriesconvergesonrealhalfplane--94277ee8bf5167d63d4c310d.md) | 17 | `declaration-track:94277ee8bf5167d63d4c310d3ff95b905478dd824ad6a0280acfbd380ecc46c5` |
| 2 | `def` | [EulerProductForZetaHalfPlaneTarget](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/declarations/eulerproductforzetahalfplanetarget--5622a92b8078c82dc755a5d7.md) | 22 | `declaration-track:5622a92b8078c82dc755a5d7808f2a011df86446c9c99b844a9baa16f535a04e` |
| 3 | `def` | [ZetaNonzeroOnRealGreaterThanOneTarget](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/declarations/zetanonzeroonrealgreaterthanonetarget--7a1781b8183f35584c9ed97c.md) | 27 | `declaration-track:7a1781b8183f35584c9ed97c3d3a575a8d555539365df593797e1a9f3644175d` |
| 4 | `def` | [PrimeNumberTheoremTarget](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/declarations/primenumbertheoremtarget--e1952af27d7db2394132af69.md) | 32 | `declaration-track:e1952af27d7db2394132af6990ba1e60b278027f271b699ae411fe00b1aad16b` |
| 5 | `theorem` | [finite_partial_zeta_sum_nonnegative](../../../../mathematics/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean/declarations/finite-partial-zeta-sum-nonnegative--e68cde3a08fc90c344c5a536.md) | 37 | `result-track:e68cde3a08fc90c344c5a536b2c92c645c88459b4f8e926fdf1ed295314e88b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
