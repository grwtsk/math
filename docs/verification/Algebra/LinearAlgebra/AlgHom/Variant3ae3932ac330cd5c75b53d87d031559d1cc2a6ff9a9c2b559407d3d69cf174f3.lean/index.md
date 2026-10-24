# Verification target: GRWTSK.Algebra.LinearAlgebra.AlgHom.Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f0daeace1d93c8d49c92205036658d5b1d8736",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f0daeace1d93c8d49c92205036658d5b1d8736`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean.json)

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
| 1 | `theorem` | [smul_omega_sub_eq](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/smul-omega-sub-eq--3107e059f90d1a1d282ec458.md) | 46 | `result-track:3107e059f90d1a1d282ec458674c92a2ffd698cdfaf9b61797b241daf3b671ac` |
| 2 | `theorem` | [toMatrix_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/tomatrix-alghom--3d452c876cdfe4ac1ac5a403.md) | 54 | `result-track:3d452c876cdfe4ac1ac5a403b90b2e5b07469b5d3ad0c6e314d7fe2d7962716c` |
| 3 | `theorem` | [det_toMatrix_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/det-tomatrix-alghom--4c5cbe5a0895aa04c1dde9fc.md) | 61 | `result-track:4c5cbe5a0895aa04c1dde9fc19f503b7f266f47824f6d0ff69b16459345edafb` |
| 4 | `theorem` | [mulVec_toMatrix_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/mulvec-tomatrix-comp-eq--db01d01bd0a39ed7eaee8048.md) | 65 | `result-track:db01d01bd0a39ed7eaee8048a2f594bd799f71ec7712571d39869fc2ffea9115` |
| 5 | `theorem` | [isRegular_im_omega_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/isregular-im-omega-iff-injective--916b648385335a61025a9eb1.md) | 72 | `result-track:916b648385335a61025a9eb1de457a89717879cafcd3048cf326ab8bb666d8e2` |
| 6 | `theorem` | [isUnit_im_omega_iff_bijective](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/isunit-im-omega-iff-bijective--f3ddf51abb8106ab0a389132.md) | 82 | `result-track:f3ddf51abb8106ab0a38913208ef35436d88589ba283a5f6f3a6c5ef3ac2b25c` |
| 7 | `theorem` | [isUnit_im_omega_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/isunit-im-omega-of-algequiv--7f00a57bd812ebfc898e0a39.md) | 93 | `result-track:7f00a57bd812ebfc898e0a391c05cb8126cee3ff67f758f7270a137c90579a22` |
| 8 | `theorem` | [trace_algHom_omega](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/trace-alghom-omega--2a40c769b0e35ef8eccf5741.md) | 98 | `result-track:2a40c769b0e35ef8eccf57410f9996702c41c2df169f98053a86bf0523181733` |
| 9 | `theorem` | [norm_algHom_omega](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/norm-alghom-omega--7b8eafc9882f0852db914cfd.md) | 104 | `result-track:7b8eafc9882f0852db914cfd307f5db4144cbd617b864a06085544d2874f3324` |
| 10 | `theorem` | [trace_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/trace-alghom--b658f956fb2211c9fbe4dbd3.md) | 110 | `result-track:b658f956fb2211c9fbe4dbd3ae2f2ab8653c5016f47f857578921c22ce35c035` |
| 11 | `theorem` | [algHom_star](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/alghom-star--7f2d78781950707e54258ad0.md) | 116 | `result-track:7f2d78781950707e54258ad09764be8a6b4c1cecd41116873728218088fd51b0` |
| 12 | `theorem` | [norm_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variant3ae3932ac330cd5c75b53d87d031559d1cc2a6ff9a9c2b559407d3d69cf174f3.lean/declarations/norm-alghom--9e89b394e2cd9c5c1ae1c7ba.md) | 121 | `result-track:9e89b394e2cd9c5c1ae1c7ba3fca6bc4eb6b9edfddab2ae93aadf96f7ed30d13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
