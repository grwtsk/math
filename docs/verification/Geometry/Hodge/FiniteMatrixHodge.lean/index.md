# Verification target: GRWTSK.Geometry.Hodge.FiniteMatrixHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1299a222b0e8bd5f6ac25d8508fab8ac3d548b7b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/FiniteMatrixHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1299a222b0e8bd5f6ac25d8508fab8ac3d548b7b`.

Source path: `GRWTSK/Geometry/Hodge/FiniteMatrixHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/FiniteMatrixHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.Hodge.FiniteGraphCellular`](../../../../mathematics/Geometry/Hodge/FiniteGraphCellular.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incidenceMatrix](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/incidencematrix--aae1848bca048402290c7971.md) | 18 | `declaration-track:aae1848bca048402290c797139826cd5ec28bb59c83f44843226924e22964d42` |
| 2 | `def` | [delta](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/delta--7f94ccf8ccc712a3a97486d6.md) | 25 | `declaration-track:7f94ccf8ccc712a3a97486d68e63384e25b71102bd5e03be54586450b2feda36` |
| 3 | `def` | [deltaStar](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/deltastar--df54631ae7179cee2320769a.md) | 30 | `declaration-track:df54631ae7179cee2320769ab791a2d791ed5d3c883544beebe8621f45786906` |
| 4 | `def` | [hodgeData](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/hodgedata--5645838911ad94ad0bbac2e7.md) | 35 | `declaration-track:5645838911ad94ad0bbac2e7c2bc7d95d0c9980ca35ffc121e44a6bd4613d25a` |
| 5 | `theorem` | [delta_apply](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/delta-apply--33f2b8f490a8148209a9aaf0.md) | 42 | `result-track:33f2b8f490a8148209a9aaf081899b47e450cca2ad212b283c6b57f95a972ab8` |
| 6 | `theorem` | [deltaStar_apply](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/deltastar-apply--5ca561a0fd01174cacee8363.md) | 48 | `result-track:5ca561a0fd01174cacee8363ee2b714311bef2502a35c63c5fd6ffa5d12215b0` |
| 7 | `theorem` | [delta_eq_coboundary](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/delta-eq-coboundary--1b8520c39fbac591c3deb089.md) | 54 | `result-track:1b8520c39fbac591c3deb08956edd39b782d5ce8f40f5d435f4be4b5e595a96d` |
| 8 | `theorem` | [adjoint_identity](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/adjoint-identity--e054ac038d764ee00ae5b50a.md) | 66 | `result-track:e054ac038d764ee00ae5b50a9f703a1f460bcb74c6c08aa15996c7a3758f394d` |
| 9 | `def` | [laplacian](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/laplacian--b1e3ef307779946c2851fbf0.md) | 78 | `declaration-track:b1e3ef307779946c2851fbf0dbe51be02fdee97b08cc379a1b302f3da668c10d` |
| 10 | `theorem` | [hodgeData_laplacian0](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/hodgedata-laplacian0--414dad2861e71828ba0c848d.md) | 83 | `result-track:414dad2861e71828ba0c848d7d55f0435638443873f6e134c0d266db76cecc6e` |
| 11 | `theorem` | [laplacian_quadratic](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/laplacian-quadratic--a0175e296309aa7997a6c5ce.md) | 88 | `result-track:a0175e296309aa7997a6c5ce7edec1ae2b4d5aeeb746f911dfc13643bec9cf65` |
| 12 | `theorem` | [laplacian_nonneg](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/laplacian-nonneg--739f7a3d4e6aafd24c112dc7.md) | 94 | `result-track:739f7a3d4e6aafd24c112dc79a0ef3233f95e28dea32f92f213d0550671299e1` |
| 13 | `theorem` | [laplacian_selfAdjoint](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/laplacian-selfadjoint--0a1a1bfd0db6b5856109d225.md) | 102 | `result-track:0a1a1bfd0db6b5856109d2256a4c9ee1e89299414eb0128302c02fd45d431a41` |
| 14 | `theorem` | [laplacian_eq_zero_iff_delta_eq_zero](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/laplacian-eq-zero-iff-delta-eq-zero--04aafc61cbae5df9f503d9b8.md) | 117 | `result-track:04aafc61cbae5df9f503d9b8ba90b0d9f2fae7f511358bfd0227959098d396e6` |
| 15 | `theorem` | [laplacian_ker_eq_delta_ker](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/laplacian-ker-eq-delta-ker--621718f3ae88a9ed8a54d958.md) | 134 | `result-track:621718f3ae88a9ed8a54d958d5e5131e031c714a588836da00b745b30d181ed4` |
| 16 | `theorem` | [harmonic_of_coboundary_zero](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/declarations/harmonic-of-coboundary-zero--4d7f015dc0e6fa5bfeed1772.md) | 141 | `result-track:4d7f015dc0e6fa5bfeed1772eaab89d1d28eb66e0056a2bf3a8f9c2d4675ca3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
