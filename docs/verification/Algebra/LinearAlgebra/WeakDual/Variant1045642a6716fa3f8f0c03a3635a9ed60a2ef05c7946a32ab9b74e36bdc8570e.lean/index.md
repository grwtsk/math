# Verification target: GRWTSK.Algebra.LinearAlgebra.WeakDual.Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05c4a6695e330a41315afd9a34ad076cf60c5070",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05c4a6695e330a41315afd9a34ad076cf60c5070`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/toseminorm--8d36751e58b2c197e59778e5.md) | 64 | `declaration-track:8d36751e58b2c197e59778e57248e15bd4fa5276170332892a7d5fb2ae2cc75b` |
| 2 | `theorem` | [coe_toSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/coe-toseminorm--9f5e775ab0226767e7a3a128.md) | 67 | `result-track:9f5e775ab0226767e7a3a128c9e98d8edccc08ed236547c0362d5f1b3b333517` |
| 3 | `theorem` | [toSeminorm_apply](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/toseminorm-apply--316392bfb2712be4c59bc958.md) | 71 | `result-track:316392bfb2712be4c59bc9580e91fe2ca45137a010968b9cb1fecf24ba2f4e8e` |
| 4 | `theorem` | [toSeminorm_ball_zero](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/toseminorm-ball-zero--faf908bbeb1d5a9c938a20ac.md) | 74 | `result-track:faf908bbeb1d5a9c938a20ac4328dcde9ef4e8124e91922591f894c1dd96cc28` |
| 5 | `theorem` | [toSeminorm_comp](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/toseminorm-comp--e0932b321b56c829e9548c81.md) | 78 | `result-track:e0932b321b56c829e9548c81432c10016620d6b99a045b478fab5959481388d2` |
| 6 | `def` | [toSeminormFamily](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/toseminormfamily--95b251f95cfb98c2cd5e52b9.md) | 84 | `declaration-track:95b251f95cfb98c2cd5e52b92c570fa809f303fff478e6e9ce6a4737da217e92` |
| 7 | `theorem` | [toSeminormFamily_apply](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/toseminormfamily-apply--a3fb1de691691648b673249a.md) | 88 | `result-track:a3fb1de691691648b673249a6aac751301cd76798b30f8dc949e2052102b678f` |
| 8 | `lemma` | [dualEmbedding_injective_of_separatingRight](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/dualembedding-injective-of-separatingright--84cfff7cc50f7db04c5b9f0a.md) | 91 | `result-track:84cfff7cc50f7db04c5b9f0afef7ec7de3668968244337ac09890ac550cda06c` |
| 9 | `theorem` | [mem_span_iff_continuous_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/mem-span-iff-continuous-of-finite--bce24c6897c3d2626b835eb4.md) | 113 | `result-track:bce24c6897c3d2626b835eb4cd941981079f92c6ea6e601d94238c1caa99e6f8` |
| 10 | `theorem` | [mem_span_iff_continuous](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/mem-span-iff-continuous--fa3e9fd466a4a4549c100e23.md) | 138 | `result-track:fa3e9fd466a4a4549c100e2397f1053cc6ee27877cf091f3ec1cc3e963d54608` |
| 11 | `theorem` | [mem_span_iff_bound](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/mem-span-iff-bound--d14c1883ff1781ba934880a0.md) | 163 | `result-track:d14c1883ff1781ba934880a01c31091545a23c2db48b3eed77eb2442dde1795d` |
| 12 | `theorem` | [dualEmbedding_surjective](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/dualembedding-surjective--28953f04e9e4fffaa27e3911.md) | 186 | `result-track:28953f04e9e4fffaa27e39115e912e5bf67ee6df39a030a3069417d161af155d` |
| 13 | `def` | [rightDualEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/rightdualequiv--58f9f85137bc8d45bd9d0f9f.md) | 195 | `declaration-track:58f9f85137bc8d45bd9d0f9feba11ffdf4d4b76eac2f9ffb4b5ebec4a5a72679` |
| 14 | `def` | [leftDualEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/leftdualequiv--fbf3c8ec2b87c29a7c025d8f.md) | 201 | `declaration-track:fbf3c8ec2b87c29a7c025d8f3d4ebe43ede4759b74994b737031bd2b5753ab0a` |
| 15 | `theorem` | [LinearMap.weakBilin_withSeminorms](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/linearmap-weakbilin-withseminorms--d83bb54771b5aeaa7866a5f3.md) | 216 | `result-track:d83bb54771b5aeaa7866a5f3915814d830942ddf0a5614f2f9a905febb76c466` |
| 16 | `theorem` | [LinearMap.hasBasis_weakBilin](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/linearmap-hasbasis-weakbilin--3c88c55eafc9640f95b76235.md) | 222 | `result-track:3c88c55eafc9640f95b762354947f757dba911aafddcf4b1ecf5b1244895f119` |
| 17 | `instance` | [WeakBilin.locallyConvexSpace](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1045642a6716fa3f8f0c03a3635a9ed60a2ef05c7946a32ab9b74e36bdc8570e.lean/declarations/weakbilin-locallyconvexspace--88d4b37a6f6086c0bae89549.md) | 233 | `declaration-track:88d4b37a6f6086c0bae89549ade7411fcab024d0476f5d738e2c8cb45cead8e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
