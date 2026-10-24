# Verification target: GRWTSK.Algebra.LinearAlgebra.Transitivity.Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ff3a6a77a1384851eeca39fc7cf498ff921a22",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ff3a6a77a1384851eeca39fc7cf498ff921a22`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Block` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxMat](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/auxmat--8cdaeda6cee5b73ef2478c83.md) | 32 | `declaration-track:8cdaeda6cee5b73ef2478c8337003e2c2dc3c5e85517c2ef3f3ee047bec7ca57` |
| 2 | `lemma` | [auxMat_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/auxmat-blocktriangular--ec094db9f5166961b7022d84.md) | 41 | `result-track:ec094db9f5166961b7022d84b5dab3aa16b626bae61745ea9e18d01dfef32d61` |
| 3 | `lemma` | [auxMat_toSquareBlock_ne](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/auxmat-tosquareblock-ne--518cb3e02d4512da9c76d2b8.md) | 46 | `result-track:518cb3e02d4512da9c76d2b887a08eadc9625638eac884bce273ccb2cd6597ae` |
| 4 | `lemma` | [auxMat_toSquareBlock_eq](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/auxmat-tosquareblock-eq--34cfc773b1246cd05d2f755a.md) | 51 | `result-track:34cfc773b1246cd05d2f755a4be3e23e69d500841589f6772af7b1b4caf6676d` |
| 5 | `lemma` | [mul_auxMat_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/mul-auxmat-blocktriangular--69a03e334c90709c20a750b9.md) | 59 | `result-track:69a03e334c90709c20a750b959e4598f0b6408447723100372af57ea661532a1` |
| 6 | `lemma` | [mul_auxMat_corner](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/mul-auxmat-corner--a73d4e3488bf9b9b073d26ff.md) | 68 | `result-track:a73d4e3488bf9b9b073d26ffb3aff089398763b79f4e69d14849f18ffdc7855c` |
| 7 | `lemma` | [mul_auxMat_toSquareBlock_eq](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/mul-auxmat-tosquareblock-eq--2c95ce8944592e17460ff45d.md) | 70 | `result-track:2c95ce8944592e17460ff45d64fd75b559cb5cccca7e8abdb6a9cde0ff4f1a2e` |
| 8 | `lemma` | [det_mul_corner_pow](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/det-mul-corner-pow--39073e884504372b31f4fcfe.md) | 80 | `result-track:39073e884504372b31f4fcfe827a7ffa5189bea95c6658891e564398422d9f02` |
| 9 | `def` | [cornerAddX](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/corneraddx--b32e3a2ea4065bf9dc0d9ff9.md) | 93 | `declaration-track:b32e3a2ea4065bf9dc0d9ff9795cf8603ea339bae5de049bce831ceb9af83d2c` |
| 10 | `lemma` | [polyToMatrix_cornerAddX](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/polytomatrix-corneraddx--1792fccd1ecfd189ddc9555d.md) | 99 | `result-track:1792fccd1ecfd189ddc9555d03f5a8cd8553845d2507eb62494163a9c7bc5f6e` |
| 11 | `lemma` | [eval_zero_det_det](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/eval-zero-det-det--8b598cb21413b113abb48c6d.md) | 104 | `result-track:8b598cb21413b113abb48c6d307a3e91a39529be931a8814e0d3a2d962278a8c` |
| 12 | `lemma` | [eval_zero_comp_det](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/eval-zero-comp-det--68deecbd2892e1c1aa29915c.md) | 109 | `result-track:68deecbd2892e1c1aa29915c446f03dee1c8ee6b6d0326d1b3781166c08ae23b` |
| 13 | `theorem` | [comp_det_mul_pow](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/comp-det-mul-pow--bdb5a9de7c3c7db3d1997303.md) | 119 | `result-track:bdb5a9de7c3c7db3d1997303b6453cb05c5148901fcb463a13c9cc65fd6df59b` |
| 14 | `lemma` | [det_det_aux](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/det-det-aux--71e9d5c8a9af5ded8b115d52.md) | 136 | `result-track:71e9d5c8a9af5ded8b115d52a4467a8d7637f597167f1661d162173f30a9b196` |
| 15 | `theorem` | [Matrix.det_det](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/matrix-det-det--ddbdbb38a4950444c635eaf4.md) | 151 | `result-track:ddbdbb38a4950444c635eaf41af3626a5bd32d4706de83b1beecf5f47392f87c` |
| 16 | `theorem` | [LinearMap.det_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/linearmap-det-restrictscalars--ba1171ceec9decf5697cd54c.md) | 170 | `result-track:ba1171ceec9decf5697cd54c2344733f61ac43c5f7ab82711653154bd2227d87` |
| 17 | `theorem` | [Algebra.norm_norm](../../../../../mathematics/Algebra/LinearAlgebra/Transitivity/Variantd680936de1691581cdc259db9502d10435c62647bdefdd6b2656b97406e301d1.lean/declarations/algebra-norm-norm--7d14178bcc83fbe8c045c989.md) | 192 | `result-track:7d14178bcc83fbe8c045c9896e43e5b3962177a2f4d4b883d4debec36b9c2630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
