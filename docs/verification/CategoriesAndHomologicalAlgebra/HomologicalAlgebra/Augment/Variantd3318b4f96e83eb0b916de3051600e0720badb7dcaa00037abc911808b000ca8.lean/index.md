# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Augment.Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fb8e7c63414374b16daf601668400a3fd1ec808",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fb8e7c63414374b16daf601668400a3fd1ec808`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncate--8ae3fd97fb1dbe36e7d70f76.md) | 35 | `declaration-track:8ae3fd97fb1dbe36e7d70f763e98da41e3a194ed6ea16e7d5856bd048b299bfa` |
| 2 | `def` | [truncateTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateto--76741a05e1bfb765e3933d83.md) | 46 | `declaration-track:76741a05e1bfb765e3933d83e1d6b2fc31c01ed7412b1e4e5922d1b200904542` |
| 3 | `def` | [augment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment--83f634d8fb13b9cdb4503da8.md) | 57 | `declaration-track:83f634d8fb13b9cdb4503da890dbdcbc0b14381e574eb19e0997903336a32abb` |
| 4 | `theorem` | [augment_X_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-x-zero--0f663f445e24bb41bf21993d.md) | 75 | `result-track:0f663f445e24bb41bf21993d91152f93da081aada27eb41faa83452d791446a2` |
| 5 | `theorem` | [augment_X_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-x-succ--1dac8089ec01749efd700e4a.md) | 80 | `result-track:1dac8089ec01749efd700e4af117d40536441abedda24757ea6428adc0ff2674` |
| 6 | `theorem` | [augment_d_one_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-d-one-zero--87f7d808cc6c4b8731eb60bd.md) | 85 | `result-track:87f7d808cc6c4b8731eb60bd5a4b537c57b87170f849c9903d200ffc7084922b` |
| 7 | `theorem` | [augment_d_succ_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-d-succ-succ--4a74e3596f12283b5363b246.md) | 90 | `result-track:4a74e3596f12283b5363b24628bc930e8122949e76ce7726e93ba2aa81117b60` |
| 8 | `def` | [truncateAugment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateaugment--345f4be4d19a5d2d509fc95e.md) | 97 | `declaration-track:345f4be4d19a5d2d509fc95e1cbd334cca0a63db2f867d7bff2987915203c4d3` |
| 9 | `theorem` | [truncateAugment_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateaugment-hom-f--ce047523b9105bcf1ae239d5.md) | 116 | `result-track:ce047523b9105bcf1ae239d51949ca39097b34b1ebbd3aa9fb69896f5c024040` |
| 10 | `theorem` | [truncateAugment_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateaugment-inv-f--590d33eb077fd66e6ab571c5.md) | 121 | `result-track:590d33eb077fd66e6ab571c5c7b4b6a3c149a3708bbde1e5e37b9c4ef27878d1` |
| 11 | `theorem` | [chainComplex_d_succ_succ_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/chaincomplex-d-succ-succ-zero--62107b8111d1eee6b196ae44.md) | 126 | `result-track:62107b8111d1eee6b196ae442fd6dd0aea51a62f51bb9b3e9aef7670f2b50abf` |
| 12 | `def` | [augmentTruncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate--549ead081a74817bdaa4b8ac.md) | 133 | `declaration-track:549ead081a74817bdaa4b8ac32d0a6ce4fb2248aff8dc1588eb7060cf345cad5` |
| 13 | `theorem` | [augmentTruncate_hom_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-hom-f-zero--ea6c78b27758b8826dbc5d54.md) | 163 | `result-track:ea6c78b27758b8826dbc5d544a60ac3312e068ce21b6fbe2cb188d6ce6492915` |
| 14 | `theorem` | [augmentTruncate_hom_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-hom-f-succ--7fd823bcbdb779a0f91e02b1.md) | 168 | `result-track:7fd823bcbdb779a0f91e02b1cd3c232b56089678bf6b7ec0cab67aea5e40df12` |
| 15 | `theorem` | [augmentTruncate_inv_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-inv-f-zero--98487a509b09dafdc65c0a6a.md) | 173 | `result-track:98487a509b09dafdc65c0a6a76916748d95aac49cb8503f9ea8a47aa8eb29872` |
| 16 | `theorem` | [augmentTruncate_inv_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-inv-f-succ--523c8745f75a1f6239c958d3.md) | 178 | `result-track:523c8745f75a1f6239c958d3e62861d7d6172e3ffcab6612aaa1f7e880f24e1e` |
| 17 | `def` | [toSingle₀AsComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/tosingle-ascomplex--433f4cde17a4cf869436491d.md) | 187 | `declaration-track:433f4cde17a4cf869436491d93e0ed34b594fc76f53f675b46c1508108d66269` |
| 18 | `def` | [truncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncate--129bf91f264628b56a355346.md) | 200 | `declaration-track:129bf91f264628b56a355346b9eb2a4b4be600fb52de4982d0cf29ef92024427` |
| 19 | `def` | [toTruncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/totruncate--36bff8900081ba0462dfed52.md) | 213 | `declaration-track:36bff8900081ba0462dfed52e4846fe25ca023635a0024ae86f8fe2f0d5e0da4` |
| 20 | `def` | [augment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment--59624d62ea250e041c9ab52f.md) | 222 | `declaration-track:59624d62ea250e041c9ab52f78a6cd0827532ba9cc5cd266f2d9ee8898c8c72e` |
| 21 | `theorem` | [augment_X_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-x-zero--aa881772b89bd3aba6d44cb9.md) | 246 | `result-track:aa881772b89bd3aba6d44cb9e499d3c5b7469a453ffa39ee7d0c85cd8da3c805` |
| 22 | `theorem` | [augment_X_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-x-succ--cb1e404655b189ac10819ac4.md) | 251 | `result-track:cb1e404655b189ac10819ac47ffd50d80dd7b43db8833ac760b29ca7ab45fc02` |
| 23 | `theorem` | [augment_d_zero_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-d-zero-one--444690b9d602c3ff23a20494.md) | 256 | `result-track:444690b9d602c3ff23a204945afcc062f2c294db6789a9d14e5e3db47ef695b8` |
| 24 | `theorem` | [augment_d_succ_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augment-d-succ-succ--be8b5d04a6f392ac4ac2e235.md) | 261 | `result-track:be8b5d04a6f392ac4ac2e235e57e04c0d47899207045ffa08bce41e9c0f0d092` |
| 25 | `def` | [truncateAugment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateaugment--6df1b8170476449bee8c421f.md) | 268 | `declaration-track:6df1b8170476449bee8c421f03e3438d713408b1fdcb174a655a0bfa64525cb0` |
| 26 | `theorem` | [truncateAugment_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateaugment-hom-f--b5a96180afe884d2ff793865.md) | 289 | `result-track:b5a96180afe884d2ff7938655a06c891feb07abcc74b1d4837bb51c08ef44e46` |
| 27 | `theorem` | [truncateAugment_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/truncateaugment-inv-f--863cb42ebe1ddccfa74bb2e2.md) | 294 | `result-track:863cb42ebe1ddccfa74bb2e2d5e5a7cab1b7664b897667c2e4cb76cdf80b87fb` |
| 28 | `theorem` | [cochainComplex_d_succ_succ_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/cochaincomplex-d-succ-succ-zero--f4584402c612621d1ab45ecd.md) | 300 | `result-track:f4584402c612621d1ab45ecd99583a3cd557d4627bccf4d99412e9d5fb1ef1eb` |
| 29 | `def` | [augmentTruncate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate--48a9d83d7d7e3222643fad49.md) | 308 | `declaration-track:48a9d83d7d7e3222643fad499bea64bc110c366bd4c8c9fd2e00beb2c58e031d` |
| 30 | `theorem` | [augmentTruncate_hom_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-hom-f-zero--e8ae63bd12703073982e609b.md) | 338 | `result-track:e8ae63bd12703073982e609b82148e05a0e2fc634ee6ca8e8599b6fe5371f1a1` |
| 31 | `theorem` | [augmentTruncate_hom_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-hom-f-succ--4141770f9110f3faa1003121.md) | 343 | `result-track:4141770f9110f3faa1003121a3418dc1ab5c48844d7e6d4460ea15df00031616` |
| 32 | `theorem` | [augmentTruncate_inv_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-inv-f-zero--9604e73f2900b0cad81be22c.md) | 348 | `result-track:9604e73f2900b0cad81be22c873de6d677c46b934b770be8469b0ef861a54faf` |
| 33 | `theorem` | [augmentTruncate_inv_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/augmenttruncate-inv-f-succ--73756d34db0a202c66d317ca.md) | 353 | `result-track:73756d34db0a202c66d317cab2cfa277c1430154bb14e88fa33b270aae250839` |
| 34 | `def` | [fromSingle₀AsComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantd3318b4f96e83eb0b916de3051600e0720badb7dcaa00037abc911808b000ca8.lean/declarations/fromsingle-ascomplex--829993b9addedae254081318.md) | 362 | `declaration-track:829993b9addedae254081318ba094668a62153acef9b45530a489573525e97ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
