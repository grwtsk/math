# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationPatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ac747272516cb6b30f360a0d5fd837945e2a91f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ac747272516cb6b30f360a0d5fd837945e2a91f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinLogCancellation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Data](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/data--6ac20431a9e18103938ec255.md) | 27 | `declaration-track:6ac20431a9e18103938ec2554297f6e73b6d4285477dabb6d8b43645def7d360` |
| 2 | `def` | [sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/sample--7e9461e57868d7c5fce35c54.md) | 40 | `declaration-track:7e9461e57868d7c5fce35c541ec7fda4b26e3b94344e686dbb9f9e7544096d7c` |
| 3 | `def` | [sampleError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/sampleerror--47104f6ed3f72a38dd0ae3f5.md) | 42 | `declaration-track:47104f6ed3f72a38dd0ae3f5e1e5e10b9b76e0a10c0b5330fe13af57e3c498a0` |
| 4 | `def` | [derivativeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/derivativebound--e3fd0f959af29feac70b1de0.md) | 46 | `declaration-track:e3fd0f959af29feac70b1de09da8a869be958c1820d7fb1248aa1ba8a50e4ad0` |
| 5 | `def` | [margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/margin--2987a27c34089d9573338da7.md) | 50 | `declaration-track:2987a27c34089d9573338da72ca8678acc6f5aaa646323d0efc879c38bad17c7` |
| 6 | `def` | [disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/disk--73b1c2dea4100fb9421d540e.md) | 52 | `declaration-track:73b1c2dea4100fb9421d540e054bb7d1f943463ff5bbdd31e135ffa539fce855` |
| 7 | `def` | [Guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/guard--0c6fcc19eaea8f180ab3e774.md) | 55 | `declaration-track:0c6fcc19eaea8f180ab3e77442d61a02a4930f51eaa4a6e004c4522b2d825a88` |
| 8 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/check--fdf911ad7e9bad15b01b1f02.md) | 62 | `declaration-track:fdf911ad7e9bad15b01b1f022c79637dd097e610933b36ec3d80b571f30b694b` |
| 9 | `lemma` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/check-iff--a3a4779483870ace2015feb4.md) | 65 | `result-track:a3a4779483870ace2015feb48a05c1813c853f0190afb4d19b222f4bd7a5fd5f` |
| 10 | `lemma` | [margin_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/margin-pos--023ac73adcc0daac76fd1e42.md) | 69 | `result-track:023ac73adcc0daac76fd1e42e696b57c30ea7ee2260d8d86ef474ca67e254883` |
| 11 | `lemma` | [derivativeBound_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/derivativebound-nonneg--89a701a6cc1e9cfa14c33f75.md) | 74 | `result-track:89a701a6cc1e9cfa14c33f7593fee359e0c87f9403eefb161349abe4c8335359` |
| 12 | `lemma` | [sampleError_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/sampleerror-nonneg--599bc6d654e2c076a614b242.md) | 81 | `result-track:599bc6d654e2c076a614b2422e388061b40748e44c636bf70a90328cb1fc2e0f` |
| 13 | `lemma` | [disk_center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/disk-center--56d4d2ad8fb0c710d697ff78.md) | 89 | `result-track:56d4d2ad8fb0c710d697ff7841ca1775354ce9ba7cb8e3c6f8ee3431f3bc136a` |
| 14 | `lemma` | [disk_radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/disk-radius--86c2335395c5d09380aa5e3d.md) | 90 | `result-track:86c2335395c5d09380aa5e3d5579561402f21cb085958f75a959912e02568b0e` |
| 15 | `lemma` | [mem_disk_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/mem-disk-iff--4f032108b6fcb0fc3a6bc714.md) | 92 | `result-track:4f032108b6fcb0fc3a6bc714dc520da278498c7868ddf7b81ecb17b85399c145` |
| 16 | `theorem` | [source_sample_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/source-sample-enclosed--ba9dc89e85d1cc41b7018b98.md) | 98 | `result-track:ba9dc89e85d1cc41b7018b98c3b0ab536cfae59a732a12a2cc4cdd4c29f008ae` |
| 17 | `lemma` | [sample_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/sample-norm-lower--d9edf766141ad881a4db3f7d.md) | 119 | `result-track:d9edf766141ad881a4db3f7da9f05147a378de689a278285c18a9c8d9b6b82e5` |
| 18 | `lemma` | [disk_domain](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/disk-domain--a4f95e67d5968df9d7b88c77.md) | 128 | `result-track:a4f95e67d5968df9d7b88c77af378c92d06a1102097ce7597833c3a3a373fb19` |
| 19 | `theorem` | [source_derivative_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/source-derivative-bound--96219e992b27bef734920403.md) | 145 | `result-track:96219e992b27bef734920403f82b8e8ee9b8a98c5e312f08a2ebfbc978faa8ae` |
| 20 | `def` | [patch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/patch--f615769c3610a31923b90a66.md) | 156 | `declaration-track:f615769c3610a31923b90a669f125135d4f596cf6dda1721894cc7ae4087c200` |
| 21 | `theorem` | [source_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/source-norm-lower--f950204ff9e3305efda4b797.md) | 173 | `result-track:f950204ff9e3305efda4b797197147cfe2313c22f4bbd02b807936b1a27654a9` |
| 22 | `theorem` | [noTargetZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/notargetzero--40e7c8ee9eae33d37a894fd6.md) | 180 | `result-track:40e7c8ee9eae33d37a894fd667dc83b3f795515e659ce8c92ee7317a9afbdc86` |
| 23 | `theorem` | [center_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/declarations/center-mem--0e10e147087268b897ec2b8c.md) | 188 | `result-track:0e10e147087268b897ec2b8c80c49e7ecfd34bcbfa4754255bb61b22e7c26237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
