# Verification target: GRWTSK.Algebra.Discriminant.Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1652ce7fd6d1bc1f1af34b22622d719e709a0a11",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1652ce7fd6d1bc1f1af34b22622d719e709a0a11`.

Source path: `GRWTSK/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/discr--c1867135fbd0c1c1b8410251.md) | 46 | `declaration-track:c1867135fbd0c1c1b84102513e7b3a63b5ba9f22502b80007f21a3d11897b164` |
| 2 | `theorem` | [discr_def](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/discr-def--445a708d7a29712371e562cd.md) | 48 | `result-track:445a708d7a29712371e562cdd5c1608224028e5c139f30d44535eadf0b8f8651` |
| 3 | `theorem` | [im_sq_mul_discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/im-sq-mul-discr--cff1701d2d57dd6f1dc7b5e8.md) | 51 | `result-track:cff1701d2d57dd6f1dc7b5e8b26a39d5f66893cfc10f815964a87c904a11a42c` |
| 4 | `theorem` | [discr_changeGenerator](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/discr-changegenerator--5d31a89afa7ef8824b2ee087.md) | 57 | `result-track:5d31a89afa7ef8824b2ee08752f24a2a198b20c8e6d9e1e547b8e0db606347c1` |
| 5 | `theorem` | [algebraMap_discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algebramap-discr--06eb2e04685ec34e9be82af2.md) | 64 | `result-track:06eb2e04685ec34e9be82af2e6bc8574c792c70c2d66130328fef39bd4b0fb93` |
| 6 | `theorem` | [exists_sq_eq_iff_isSquare_discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/exists-sq-eq-iff-issquare-discr--c1ae9ca8e860c526aef99b87.md) | 72 | `result-track:c1ae9ca8e860c526aef99b87f5484c53fa403a9899d4cc5ebe874f2b56b0363b` |
| 7 | `theorem` | [discr_eq_im_sq_mul_discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/discr-eq-im-sq-mul-discr--a13dde9973795231d872882f.md) | 86 | `result-track:a13dde9973795231d872882fb9f5b174cf37b07c3bca91da85eb75e1ff99af63` |
| 8 | `def` | [algEquivDiscrZero](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero--bd21529e2a2328086174d6bf.md) | 92 | `declaration-track:bd21529e2a2328086174d6bf90bef154f4d24658f8088a1569d088c7ff1ed39d` |
| 9 | `theorem` | [algEquivDiscrZero_re](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero-re--9b4e182c94370b1ce19c89e6.md) | 98 | `result-track:9b4e182c94370b1ce19c89e6f87aac2edcbe0c57e6e3b9d9ef59b39e6e490c2c` |
| 10 | `theorem` | [algEquivDiscrZero_im](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero-im--f1b13b2163669ba565370ecf.md) | 103 | `result-track:f1b13b2163669ba565370ecfe7ca778447f1cb73c3635882bdb8085c2602184d` |
| 11 | `theorem` | [algEquivDiscrZero_symm_re](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero-symm-re--443f09b7e6e4a99e6e6e4a25.md) | 108 | `result-track:443f09b7e6e4a99e6e6e4a256f46c6e45be41707a38cedc804cbbaecb17b6eb3` |
| 12 | `theorem` | [algEquivDiscrZero_symm_im](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero-symm-im--3b7524e3623454e526bbb770.md) | 114 | `result-track:3b7524e3623454e526bbb770db2ce116419757918f41eed76729aa1d26fc11ea` |
| 13 | `theorem` | [algEquivDiscrZero_add_smul](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero-add-smul--f1e963e6a8841f332c4827fb.md) | 120 | `result-track:f1e963e6a8841f332c4827fb1b65a86617404733a404e1cb11c4c16395fb8812` |
| 14 | `theorem` | [algEquivDiscrZero_symm_add_smul](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/algequivdiscrzero-symm-add-smul--2722e7fe7554c334f0dbb77a.md) | 125 | `result-track:2722e7fe7554c334f0dbb77a37555fac40b9fddb9251f72c901e16c2ef18ffc0` |
| 15 | `theorem` | [nonempty_algEquiv_iff](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/nonempty-algequiv-iff--6418d5bb12f68b18f8fd7ee6.md) | 131 | `result-track:6418d5bb12f68b18f8fd7ee6d099f5435c2623656ef97e704ec9236bd384a17c` |
| 16 | `theorem` | [nonempty_algEquiv_iff_of_invertible_two](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/nonempty-algequiv-iff-of-invertible-two--3b2e28a8cae852c2e82bbe27.md) | 145 | `result-track:3b2e28a8cae852c2e82bbe2725a217ab8e29273cb9de272e3cf961de5f606130` |
| 17 | `theorem` | [nonempty_algEquiv_int_iff](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/nonempty-algequiv-int-iff--9eac707d21574a2adc5428c7.md) | 153 | `result-track:9eac707d21574a2adc5428c748c18335948f9fd7ca354b43a9666e7a8e739cd2` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/instance--d6ac59b928e93298c95e5608.md) | 172 | `declaration-track:d6ac59b928e93298c95e5608ccdf555dbc378c4b8e477ba8f3f7da0214ebb6c4` |
| 19 | `theorem` | [not_isField_of_isSquare_discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/not-isfield-of-issquare-discr--d8e7450d6a5175104846de8c.md) | 180 | `result-track:d8e7450d6a5175104846de8c9e2746b50230656d23921e556408872213f7e324` |
| 20 | `theorem` | [isField_iff_not_isSquare_discr](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/isfield-iff-not-issquare-discr--eab1f2f6e90ba5b04115f030.md) | 193 | `result-track:eab1f2f6e90ba5b04115f03014f649df326dbc01cf410e0ac1df12cc45bf22a6` |
| 21 | `example` | [(anonymous)](../../../../mathematics/Algebra/Discriminant/Variantf9f8e75f74f82db737bc673d00f9134cd4fa6119350b3ee0fcd260b434d0f1d3.lean/declarations/example--3bba91bc384e118d6f4d8450.md) | 202 | `declaration-track:3bba91bc384e118d6f4d8450634cb8720eabffddfe79532652fcd676bf67a12c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
