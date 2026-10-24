# Verification target: GRWTSK.Algebra.GroupTheory.Invariants.Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb774905132b86e2f4146c7da38a6bf2f6a044a2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb774905132b86e2f4146c7da38a6bf2f6a044a2`.

Source path: `GRWTSK/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean.json)

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
| 1 | `def` | [average](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/average--16d99602e944973afcf84b1b.md) | 47 | `declaration-track:16d99602e944973afcf84b1bb3928512030c40c36c224b049ec469ea2239e64e` |
| 2 | `theorem` | [mul_average_left](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/mul-average-left--f49377b97259bb8b3af5f6dd.md) | 51 | `result-track:f49377b97259bb8b3af5f6ddafd15c3ea203664abcbdb71354bb14db7cf075de` |
| 3 | `theorem` | [mul_average_right](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/mul-average-right--8d568cbe09124da737dd878b.md) | 61 | `result-track:8d568cbe09124da737dd878b970dcd984d0c0f28a80538bfaefe86e6f6d52903` |
| 4 | `def` | [invariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariants--142040e99da6472fc92d3a3a.md) | 82 | `declaration-track:142040e99da6472fc92d3a3a7cae1c34755d39b70b777062b5bda91360d612a5` |
| 5 | `theorem` | [mem_invariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/mem-invariants--94d2dd1961bab166bfcd9446.md) | 89 | `result-track:94d2dd1961bab166bfcd9446f150f1324996f3f6c6117fa9ca4e7e3fa835cb9c` |
| 6 | `theorem` | [invariants_eq_inter](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariants-eq-inter--52638a83738a5abdf75b2bd4.md) | 91 | `result-track:52638a83738a5abdf75b2bd426a06f1f3e3a234e55001bc200ee84e77e27f6cb` |
| 7 | `theorem` | [invariants_eq_top](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariants-eq-top--4a2ff544cccfaf2ac97468b1.md) | 94 | `result-track:4a2ff544cccfaf2ac97468b13fdea77475dff0c77a334038d8732c956b205789` |
| 8 | `lemma` | [mem_invariants_iff_of_forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/mem-invariants-iff-of-forall-mem-zpowers--d69eca9f4e50a3ddfb1a7116.md) | 98 | `result-track:d69eca9f4e50a3ddfb1a7116110ef239b1a1dc6de6b5d9da489c05cc2b37738b` |
| 9 | `lemma` | [mem_linHom_invariants_iff_isIntertwining](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/mem-linhom-invariants-iff-isintertwining--7ca05c30cdce8ac4e5bf0647.md) | 107 | `result-track:7ca05c30cdce8ac4e5bf0647566f0429d62aa6f82bbf6f6d2d2acea42ff60955` |
| 10 | `def` | [invariantsEquivIntertwiningMap](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsequivintertwiningmap--24a1bbd01e853dfc370b0388.md) | 118 | `declaration-track:24a1bbd01e853dfc370b03888a0633dcdf49b87cbee6c9a0df9e49bb4ba579c1` |
| 11 | `def` | [averageMap](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/averagemap--2f219d907d5da50943bdff61.md) | 135 | `declaration-track:2f219d907d5da50943bdff6106bf11b7fe40278feeb2abe32bc4f6bfb40b92ca` |
| 12 | `theorem` | [averageMap_invariant](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/averagemap-invariant--54448bd482800780a5752465.md) | 140 | `result-track:54448bd482800780a5752465b3305df335a8c8f841e397a91e8ac59a10368118` |
| 13 | `theorem` | [averageMap_id](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/averagemap-id--319124f641255a89bd385988.md) | 146 | `result-track:319124f641255a89bd385988b80436d7b6d62439840ca959f7d43fecbb7a70ba` |
| 14 | `theorem` | [isProj_averageMap](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/isproj-averagemap--c0d6c7d080bf045394564fb9.md) | 150 | `result-track:c0d6c7d080bf045394564fb979edbd4afa1b2ffa4fd11d702f2f3b0361ab73fe` |
| 15 | `lemma` | [le_comap_invariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/le-comap-invariants--85af442b3529d0f70be8901c.md) | 159 | `result-track:85af442b3529d0f70be8901cf5ad5ef1519ad6f8a09b97a4adad9d28a0737e35` |
| 16 | `abbrev` | [toInvariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/toinvariants--d7c281a8184a1177ba53b710.md) | 167 | `declaration-track:d7c281a8184a1177ba53b710c5672eb1a4ee0191ac694c815f8a7ccd01fe8e41` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/instance--ab0fd374975764d4d71843d9.md) | 171 | `declaration-track:ab0fd374975764d4d71843d915ecdd052907ba31d1bbb119fb1047aaeeaafa45` |
| 18 | `abbrev` | [quotientToInvariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/quotienttoinvariants--847eb488570925c04c156bde.md) | 176 | `declaration-track:847eb488570925c04c156bde00a38354aa6f0e859d559f5e105bde23ff16be3b` |
| 19 | `abbrev` | [quotientToInvariants_lift](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/quotienttoinvariants-lift--a5bc20cbfb8c7ec0bc86745e.md) | 181 | `declaration-track:a5bc20cbfb8c7ec0bc86745e1d23077a428c92d3466765ba574e4ad84ddb77ad` |
| 20 | `theorem` | [mem_invariants_iff_comm](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/mem-invariants-iff-comm--8ee845b9561dc1a21e165a4d.md) | 196 | `result-track:8ee845b9561dc1a21e165a4d41f1710369dc075e08de52ff56a0287f6d59ce3f` |
| 21 | `def` | [invariantsEquivRepHom](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsequivrephom--258a96183d600f8b14a29995.md) | 212 | `declaration-track:258a96183d600f8b14a299952ae2f14c47828466ec8dce338b578a839a14b92e` |
| 22 | `def` | [invariantsEquivFDRepHom](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsequivfdrephom--a555f650da7de5cdad779b1e.md) | 226 | `declaration-track:a555f650da7de5cdad779b1edf4e96de6306defa26cc67d26ebbf902013d1cd6` |
| 23 | `abbrev` | [toInvariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/toinvariants--246629868de56362c8c4cc47.md) | 248 | `declaration-track:246629868de56362c8c4cc47133be9ea9bafa591ecb9600abea3f57068e5749c` |
| 24 | `abbrev` | [quotientToInvariants](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/quotienttoinvariants--723fd48b24170d091a58c123.md) | 252 | `declaration-track:723fd48b24170d091a58c1232863442a920ddb7bfdb3159cbd6edfacf272dac1` |
| 25 | `def` | [invariantsFunctor](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsfunctor--f1a509ad9943e99514d47cee.md) | 258 | `declaration-track:f1a509ad9943e99514d47cee096c91724f0c0e7a7d990f8e7c30664115de97da` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/instance--957f0b566a88529d8bc239c3.md) | 265 | `declaration-track:957f0b566a88529d8bc239c37746f74cd06a5aa6bc7f5c2f0f48b82eeb161fbc` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/instance--3dfcd6e6e057d6ce0ee51ab8.md) | 266 | `declaration-track:3dfcd6e6e057d6ce0ee51ab82db0a9a6c3e00b067e8880378355ac1b409cc8d0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/instance--4698eee45cc89b7199dd63e5.md) | 267 | `declaration-track:4698eee45cc89b7199dd63e558c3763abab45594fa8c7c117f071b68f1f8ce90` |
| 29 | `def` | [quotientToInvariantsFunctor](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/quotienttoinvariantsfunctor--a9e87fa181622d2268b4e899.md) | 272 | `declaration-track:a9e87fa181622d2268b4e899d2262db411097b7ed84e7492fc6a42a9c97dfba8` |
| 30 | `def` | [invariantsAdjunction](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsadjunction--945ea378ee1c2b02ce7ae640.md) | 281 | `declaration-track:945ea378ee1c2b02ce7ae6405a97d76bc5dc0a88fa9478f20709a28b26ecf830` |
| 31 | `lemma` | [invariantsAdjunction_homEquiv_apply_hom](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsadjunction-homequiv-apply-hom--65a09386f1aacf1e8703c7fc.md) | 286 | `result-track:65a09386f1aacf1e8703c7fc49b066378b153beb72418c0a8df081bc627636a5` |
| 32 | `lemma` | [invariantsAdjunction_homEquiv_symm_apply_hom](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/invariantsadjunction-homequiv-symm-apply-hom--d60fedde9af990c2c08d7c36.md) | 292 | `result-track:d60fedde9af990c2c08d7c365b6058b74a8739220862b3135307e30edda3cef8` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Invariants/Variant3286950f08f3af254157d3e5eb506fe30b0b668aad79c0223e7ea3589b52eb81.lean/declarations/instance--1f0d3eaa1e63f2b7b8b4ba34.md) | 297 | `declaration-track:1f0d3eaa1e63f2b7b8b4ba3475ed486558d86576fb71e1b1b79ac714da57857a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
