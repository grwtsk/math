# Verification target: GRWTSK.Algebra.LinearAlgebra.Reindex.Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9755574fcfda012630edc48260cfecbc14f232",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9755574fcfda012630edc48260cfecbc14f232`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean.json)

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
| 1 | `def` | [reindexAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexaddequiv--acd53aaf145714ee5dd33984.md) | 53 | `declaration-track:acd53aaf145714ee5dd33984588b71bb272b1af776afa54a627b51031e1fd8e0` |
| 2 | `theorem` | [coe_reindexAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/coe-reindexaddequiv--4f4aa71ac781bdeb9388fc99.md) | 58 | `result-track:4f4aa71ac781bdeb9388fc998d08016f548cceb5d0d97be2e48df0cbde564540` |
| 3 | `theorem` | [toEquiv_reindexAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toequiv-reindexaddequiv--71629ceb8e902670753d9a9e.md) | 63 | `result-track:71629ceb8e902670753d9a9e5b56911870aec69f421cdb8707869f01441a9d02` |
| 4 | `theorem` | [symm_reindexAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/symm-reindexaddequiv--f5ee629931ac7a4c7a780ed0.md) | 68 | `result-track:f5ee629931ac7a4c7a780ed054421cde99fd7eb396c7a18342020a6c4a3684e1` |
| 5 | `theorem` | [reindexAddEquiv_refl_refl](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexaddequiv-refl-refl--c54cbd64e5b17c997278cffe.md) | 73 | `result-track:c54cbd64e5b17c997278cffe1bf6994a8a4abac73e4811e88e93a0d2c35ce8c9` |
| 6 | `theorem` | [reindexAddEquiv_trans_reindexAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexaddequiv-trans-reindexaddequiv--7e720a69a3c3cf8a6dfd2675.md) | 77 | `result-track:7e720a69a3c3cf8a6dfd267570e379e916b4f90f417c58ab97216267653c08e5` |
| 7 | `def` | [reindexRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexringequiv--6ba44e86067fd881516e8693.md) | 90 | `declaration-track:6ba44e86067fd881516e86935543501fde527e7d381b3dd8b7390971315eaeb1` |
| 8 | `theorem` | [coe_reindexRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/coe-reindexringequiv--356188b04ca73cff506abd55.md) | 95 | `result-track:356188b04ca73cff506abd5554a56c0066ac36bc58a99cf54c2a1a4d616362c1` |
| 9 | `theorem` | [toEquiv_reindexRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toequiv-reindexringequiv--396bd32968fe2f2bb66cbf54.md) | 99 | `result-track:396bd32968fe2f2bb66cbf544876a214590bc73d5f6ce2c233dcc46659bd5d33` |
| 10 | `theorem` | [toAddEquiv_reindexRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toaddequiv-reindexringequiv--de33fa038560c4d1d8970b5c.md) | 104 | `result-track:de33fa038560c4d1d8970b5ce1c17797bd8c5943736c2bd1acb427507ef2f27a` |
| 11 | `theorem` | [symm_reindexRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/symm-reindexringequiv--7d0370147c747076cd0752df.md) | 108 | `result-track:7d0370147c747076cd0752df2221fbb9893cb5563dd0f6b494dedfe49971fca4` |
| 12 | `theorem` | [reindexRingEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexringequiv-refl--438ef9bfd0324e20ebe6ae04.md) | 113 | `result-track:438ef9bfd0324e20ebe6ae04ca951350b983753365846f0ac42eea2d847a2b80` |
| 13 | `theorem` | [reindexRingEquiv_trans_reindexRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexringequiv-trans-reindexringequiv--2a61516ea64f66dee928738a.md) | 117 | `result-track:2a61516ea64f66dee928738abc07e75e4cc33b5355bbe8aacfee49c0f7891ec3` |
| 14 | `def` | [reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv--2c4bf8e08511e4e99cb82340.md) | 129 | `declaration-track:2c4bf8e08511e4e99cb82340bd59d5bd3dd30abadfc333909fb743911c7ba69b` |
| 15 | `theorem` | [coe_reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/coe-reindexlinearequiv--f0795151c963e08728925b6b.md) | 134 | `result-track:f0795151c963e08728925b6b9124ff36bcf0db9b89d9084291ce867a71aba2ba` |
| 16 | `theorem` | [toEquiv_reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toequiv-reindexlinearequiv--98984ad50f6e9ad0349136e1.md) | 139 | `result-track:98984ad50f6e9ad0349136e1f6c9f2644381fbf53729ad62da24fef41afa1068` |
| 17 | `theorem` | [toAddEquiv_reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toaddequiv-reindexlinearequiv--653a2f25997ad965b124cdfa.md) | 144 | `result-track:653a2f25997ad965b124cdfafd1c384e70551d6b8a8556a6f576ca0cc7a8c9af` |
| 18 | `theorem` | [reindexLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-apply--0fdbb01dd2f182e8d05a5979.md) | 149 | `result-track:0fdbb01dd2f182e8d05a5979df7004b98d091dfe79e913d5e4afe6761ff10128` |
| 19 | `theorem` | [symm_reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/symm-reindexlinearequiv--ebacd584c364302d39fe925e.md) | 154 | `result-track:ebacd584c364302d39fe925eb023c8ca137ffb702e53fe7d87738351630b6fbf` |
| 20 | `theorem` | [reindexLinearEquiv_refl_refl](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-refl-refl--22ca1606ba82e1e47a2e8476.md) | 161 | `result-track:22ca1606ba82e1e47a2e84762e6b209af3a15fbf5f20487fbe872c115d11131d` |
| 21 | `theorem` | [reindexLinearEquiv_trans_reindexLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-trans-reindexlinearequiv--1d61940034f48a385ff5791e.md) | 166 | `result-track:1d61940034f48a385ff5791e7c54173956b72f2c5f8dc36494f4ee0cb7f6da98` |
| 22 | `theorem` | [reindexLinearEquiv_comp](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-comp--ba56194a050683a971d5eb94.md) | 175 | `result-track:ba56194a050683a971d5eb9427883e9b68a6063e77591343861a248aebf0d8b0` |
| 23 | `theorem` | [reindexLinearEquiv_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-comp-apply--ea1b6f4ee5545b1e9aa656ef.md) | 180 | `result-track:ea1b6f4ee5545b1e9aa656eff4ff91298d9c3310f7bfe841d76a5099941049f6` |
| 24 | `theorem` | [reindexLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-one--803023126f5df6c0be6487bc.md) | 186 | `result-track:803023126f5df6c0be6487bc4ea2d69f6d94e538f129115e699100d8823bd07a` |
| 25 | `theorem` | [reindexLinearEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexlinearequiv-mul--24735a8d2959c411115e4979.md) | 196 | `result-track:24735a8d2959c411115e4979b01f22d106a026af6aa039dbbfd155ee3b9b9804` |
| 26 | `theorem` | [mul_reindexLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/mul-reindexlinearequiv-one--453b13e2d305c77081e0732e.md) | 202 | `result-track:453b13e2d305c77081e0732e77cbfcfbc265f17a3ea521e9fa51f4f38e05b80c` |
| 27 | `def` | [reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexalgequiv--4a82bb43611985e36e74a15f.md) | 219 | `declaration-track:4a82bb43611985e36e74a15ff7f8b1c6532bbe9e03be6a3178343b038bcd0fde` |
| 28 | `theorem` | [coe_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/coe-reindexalgequiv--9d617bf7353cecb2db331d40.md) | 224 | `result-track:9d617bf7353cecb2db331d405d9e36f6cc6e05f927bb14e24898728606580664` |
| 29 | `theorem` | [toEquiv_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toequiv-reindexalgequiv--9f4cf33bec5495de027d7e15.md) | 228 | `result-track:9f4cf33bec5495de027d7e1536d354333f9c7ff5ae3baaaf68f43315043ef9ca` |
| 30 | `theorem` | [toAddEquiv_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toaddequiv-reindexalgequiv--e56abf8a978bb0b461446253.md) | 233 | `result-track:e56abf8a978bb0b46144625382807843cd5eb60299f2ec1ebce831b45c39182f` |
| 31 | `theorem` | [toRingEquiv_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/toringequiv-reindexalgequiv--b3b69c07b72e6e720ed82241.md) | 237 | `result-track:b3b69c07b72e6e720ed8224136dad1bd08129ac656bdd745a233ca777d20920b` |
| 32 | `theorem` | [toLinearEquiv_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/tolinearequiv-reindexalgequiv--e5cf1e1c2521e1933ef5b8c2.md) | 241 | `result-track:e5cf1e1c2521e1933ef5b8c283178a2466a56fbbc55c8f6822e5ca7bc2bf1332` |
| 33 | `theorem` | [reindexAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexalgequiv-apply--8b505148c018d20aa99f30eb.md) | 246 | `result-track:8b505148c018d20aa99f30ebce3b34d6b433f9356013076d40f1368883033419` |
| 34 | `theorem` | [symm_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/symm-reindexalgequiv--3c6faf599eb77fc3f0948a96.md) | 251 | `result-track:3c6faf599eb77fc3f0948a96916dbeb5a1c7a3ae036e4f7690a63b565a6f320a` |
| 35 | `theorem` | [reindexAlgEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexalgequiv-refl--32e415b89acb91c9e57bc8a3.md) | 258 | `result-track:32e415b89acb91c9e57bc8a3d0acad0f92cd25e3abdef2b5e06a5d199f722778` |
| 36 | `theorem` | [reindexAlgEquiv_trans_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexalgequiv-trans-reindexalgequiv--ae4a6401623c1bc57e106849.md) | 262 | `result-track:ae4a6401623c1bc57e106849b2a2cec3041053c747033be912db0f5c44ee54ab` |
| 37 | `theorem` | [reindexAlgEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/reindexalgequiv-mul--f03c87dacc9d0b3a9d6b720c.md) | 267 | `result-track:f03c87dacc9d0b3a9d6b720cc3fcf0b43cf0394c967ba5d4ff5fbc8359354338` |
| 38 | `theorem` | [det_reindexLinearEquiv_self](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/det-reindexlinearequiv-self--b37af1e133b75319852ec3d0.md) | 277 | `result-track:b37af1e133b75319852ec3d076a47077f0d38e432fea0712a2db37bfa75db1fd` |
| 39 | `theorem` | [det_reindexAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Reindex/Variant4af68f36ce297fb9bac204bd2abe2185998f1536ac6895395ed4c5e78d22a361.lean/declarations/det-reindexalgequiv--9d87e4cde5acdc4e0503566c.md) | 285 | `result-track:9d87e4cde5acdc4e0503566cc7c8128d790de9351d30a108273fd601d09c529f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
