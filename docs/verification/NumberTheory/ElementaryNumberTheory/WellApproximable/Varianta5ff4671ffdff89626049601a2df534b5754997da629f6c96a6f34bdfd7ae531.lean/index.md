# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.WellApproximable.Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465631648544a42e7720dcb9a9a4a9ac3b74ffcb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465631648544a42e7720dcb9a9a4a9ac3b74ffcb`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.AddCircle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.LiminfLimsup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [approxOrderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/approxorderof--0d6951241d2a88baf4cf67f2.md) | 77 | `declaration-track:0d6951241d2a88baf4cf67f22972edb09733a76f141a7c900b5813f2830d946f` |
| 2 | `theorem` | [mem_approxOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/mem-approxorderof-iff--dacff12744a68e5f8d49382c.md) | 81 | `result-track:dacff12744a68e5f8d49382cd27a12e3fa16d2c8895f72e17133e50d010f0680` |
| 3 | `def` | [wellApproximable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/wellapproximable--353d8dc4ac5288658155c09f.md) | 92 | `declaration-track:353d8dc4ac5288658155c09f9bfb199f0848932bbce78290b65413320294b536` |
| 4 | `theorem` | [mem_wellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/mem-wellapproximable-iff--aed3edfae886453acc4128f7.md) | 96 | `result-track:aed3edfae886453acc4128f7d8718e85def35159134787255a912462cc38bafa` |
| 5 | `theorem` | [image_pow_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/image-pow-subset-of-coprime--f312f3152e25cfc5cf0edf05.md) | 106 | `result-track:f312f3152e25cfc5cf0edf05c1fef296075307704c0704557659b5bf33220c52` |
| 6 | `theorem` | [image_pow_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/image-pow-subset--ea797f9db5983a7d26f8a62e.md) | 117 | `result-track:ea797f9db5983a7d26f8a62ee44fb154b490b4c5598dc7ee729da9cde344a4af` |
| 7 | `theorem` | [smul_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/smul-subset-of-coprime--ee69197beb55dce44e3ea094.md) | 128 | `result-track:ee69197beb55dce44e3ea094c09041d4ae4626ef354173b0d2b8ac15021a457d` |
| 8 | `theorem` | [smul_eq_of_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/smul-eq-of-mul-dvd--f354f0becc3c4be4e8d6ce3f.md) | 139 | `result-track:f354f0becc3c4be4e8d6ce3f1c81f22eb6df83f01094d7f88163151fe63bdab8` |
| 9 | `theorem` | [mem_approxAddOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/mem-approxaddorderof-iff--95fb5166b5efa2ce1dff7202.md) | 164 | `result-track:95fb5166b5efa2ce1dff720239bed41a34143026e31628005e88256d1bdace40` |
| 10 | `theorem` | [mem_addWellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/mem-addwellapproximable-iff--1d1446be59a392412aa08fc0.md) | 172 | `result-track:1d1446be59a392412aa08fc0f3bbe7ecb7cf57d8b7e7fb77e292fb6f4ca53f9c` |
| 11 | `theorem` | [addWellApproximable_ae_empty_or_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/addwellapproximable-ae-empty-or-univ--6aca75e47f4b85b0fcdf44a9.md) | 195 | `result-track:6aca75e47f4b85b0fcdf44a9a8306b3d803a36ec44024a6323b948af387c1a29` |
| 12 | `lemma` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ApproxOrderOf.Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.NormedAddCommGroup.exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-approxorderof-variant046--fa1bca95309e908763648eae.md) | 326 | `result-track:fa1bca95309e908763648eae7c78a3d92838ced5958be87009769f27ed8008ca` |
| 13 | `lemma` | [exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/declarations/exists-norm-nsmul-le--f73c67a2ab1c3a62ddedbdb4.md) | 363 | `result-track:f73c67a2ab1c3a62ddedbdb4cca42d5f42b13e8b5cd68f1077e2e5cb6d6774a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
