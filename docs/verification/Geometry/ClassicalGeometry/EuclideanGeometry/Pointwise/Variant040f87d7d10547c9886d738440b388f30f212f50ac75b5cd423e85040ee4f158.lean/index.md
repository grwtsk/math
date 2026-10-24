# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pointwise.Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3b429b1f5d6b76124b08e21e2ce2dc07afdf11",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3b429b1f5d6b76124b08e21e2ce2dc07afdf11`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseVAdd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwisevadd--a403e0b27ea8e4990f44b4ba.md) | 32 | `declaration-track:a403e0b27ea8e4990f44b4ba2979a183c72eee6788dcfc08a42ba7341d59dc94` |
| 2 | `lemma` | [coe_pointwise_vadd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/coe-pointwise-vadd--0f3bd3e7d47a15bda458ac75.md) | 37 | `result-track:0f3bd3e7d47a15bda458ac758b5374101f3bd5e4a679fd8912e0c8f9f755f273` |
| 3 | `def` | [pointwiseAddAction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwiseaddaction--1edf72a267440df6e645cca7.md) | 43 | `declaration-track:1edf72a267440df6e645cca71152cfe10e8aa9a7741049085d8db9385170c971` |
| 4 | `theorem` | [pointwise_vadd_eq_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwise-vadd-eq-map--f1d373dcb916d60059cba87f.md) | 48 | `result-track:f1d373dcb916d60059cba87f5fef68624aed24340e38904cd3a5c52c0265dec8` |
| 5 | `theorem` | [vadd_mem_pointwise_vadd_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/vadd-mem-pointwise-vadd-iff--9750d19181f2a081709f8d0f.md) | 52 | `result-track:9750d19181f2a081709f8d0fbbbe7853978711a475c203e03cc8275a23fd4e81` |
| 6 | `theorem` | [pointwise_vadd_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwise-vadd-bot--1b4cc016bd7f4b5b580d056b.md) | 56 | `result-track:1b4cc016bd7f4b5b580d056b560c820b980a1c4a6eb539f87bc01cbabe91c3ad` |
| 7 | `lemma` | [pointwise_vadd_top](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwise-vadd-top--6e53c55d4fc5491636f60251.md) | 59 | `result-track:6e53c55d4fc5491636f60251be93c1b47c2b964589f05779256add93bd22d069` |
| 8 | `theorem` | [pointwise_vadd_direction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwise-vadd-direction--c141356f9bf1c0f444af0270.md) | 62 | `result-track:c141356f9bf1c0f444af0270629b4d3fd50d9e93701848706d04a22f5d9ea7b5` |
| 9 | `theorem` | [pointwise_vadd_span](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwise-vadd-span--d6922a250eba7bb094a45e09.md) | 67 | `result-track:d6922a250eba7bb094a45e09548db532b91cba4107c76a9ab173826476bfe0fd` |
| 10 | `theorem` | [map_pointwise_vadd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/map-pointwise-vadd--59a332d46af76fc458ec9d12.md) | 70 | `result-track:59a332d46af76fc458ec9d12ba7129da57922523c731b7d0c7eb070a6e5174ef` |
| 11 | `def` | [pointwiseSMul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/pointwisesmul--6a1d56020588828322f11462.md) | 88 | `declaration-track:6a1d56020588828322f114628703d83b87a83b8bd2635196cf44ccb3c974b8d2` |
| 12 | `lemma` | [coe_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/coe-smul--ce6dd998a882ccaad4fe2843.md) | 94 | `result-track:ce6dd998a882ccaad4fe28431b1af308fc788c5df716b80a85fd8409d2e37b19` |
| 13 | `def` | [mulAction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/mulaction--427e79632e5c8bdf2350f4c7.md) | 103 | `declaration-track:427e79632e5c8bdf2350f4c734bef7847be0f5f0ecffbb7325be7e163ca8f094` |
| 14 | `lemma` | [smul_eq_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-eq-map--6b7d7ae7eb7e634280bf0696.md) | 108 | `result-track:6b7d7ae7eb7e634280bf06963a645d595ddc91a7c600f58884404a191daaf3fd` |
| 15 | `lemma` | [smul_mem_smul_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-mem-smul-iff--6d86763016aca9bf56ae6e41.md) | 111 | `result-track:6d86763016aca9bf56ae6e41ff747c932362088071985efeabec9a0143a2585e` |
| 16 | `lemma` | [smul_mem_smul_iff_of_isUnit](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-mem-smul-iff-of-isunit--d68ce09becfc201cf79fc626.md) | 114 | `result-track:d68ce09becfc201cf79fc626be48e2bdfdfce6dd4119ada5c7ce6c32d26cecf0` |
| 17 | `lemma` | [smul_mem_smul_iff₀](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-mem-smul-iff--583aead29964f35b21ed78c3.md) | 117 | `result-track:583aead29964f35b21ed78c315ee3060619e2880971bfa039dad11af75e2ac74` |
| 18 | `lemma` | [smul_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-bot--eb3e0b64227454dd64140630.md) | 121 | `result-track:eb3e0b64227454dd6414063051d7adbaf3c0b5ae11096f7b23d61b6651fa5890` |
| 19 | `lemma` | [smul_top](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-top--de2139acd54bf5edb0b50462.md) | 124 | `result-track:de2139acd54bf5edb0b504629b89cca0c8602adfccb9e1ee235e6eb04a26fe43` |
| 20 | `lemma` | [smul_span](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/smul-span--e73f3c1c8db82a8bc61b4ff6.md) | 127 | `result-track:e73f3c1c8db82a8bc61b4ff63faf498e55dc1c73fd730aef0c840abf1636d931` |
| 21 | `lemma` | [direction_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant040f87d7d10547c9886d738440b388f30f212f50ac75b5cd423e85040ee4f158.lean/declarations/direction-smul--d93150aaf4c7fa8b37677398.md) | 136 | `result-track:d93150aaf4c7fa8b376773984f74166bc69b2f75d55e0ee5c5e925106d624b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
