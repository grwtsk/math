# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b91f8c2f8c62d744e80416460cae61bc0b67bec",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b91f8c2f8c62d744e80416460cae61bc0b67bec`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean.json)

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
| 1 | `lemma` | [MulAction.bijective₀](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/mulaction-bijective--0614fe0f5838acca37e7db4f.md) | 68 | `result-track:0614fe0f5838acca37e7db4f32e4ea14638699227eb5e8d18e6293c71f92fd3f` |
| 2 | `lemma` | [MulAction.injective₀](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/mulaction-injective--137ea06238e145d39170d78e.md) | 71 | `result-track:137ea06238e145d39170d78e2a42f420d93f98620aa1eb97c54da9f54c387c83` |
| 3 | `lemma` | [MulAction.surjective₀](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/mulaction-surjective--c7749ac2af226e0d771c3e60.md) | 74 | `result-track:c7749ac2af226e0d771c3e60b391a2b1983172ecb7029989f14551ca8804f85d` |
| 4 | `def` | [DistribMulAction.toAddEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/distribmulaction-toaddequiv--b4b2c04d9fb069f95b7f11e0.md) | 87 | `declaration-track:b4b2c04d9fb069f95b7f11e010376f3eba2382420dd1090858de5e7db7205655` |
| 5 | `def` | [DistribMulAction.toAddAut](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/distribmulaction-toaddaut--a447791a2f306b26b52d7c8d.md) | 97 | `declaration-track:a447791a2f306b26b52d7c8d6ae0f186d8e465938f0919d9ddd9bab3c4b780a7` |
| 6 | `def` | [smulMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/smulmonoidwithzerohom--a8cd7cbb67577dd958d0aef5.md) | 106 | `declaration-track:a8cd7cbb67577dd958d0aef5268e3dee8f74bfe74396c937394a75b09f254025` |
| 7 | `lemma` | [IsUnit.smul_sub_iff_sub_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/isunit-smul-sub-iff-sub-inv-smul--7a94e3105ec1fc18532010f6.md) | 110 | `result-track:7a94e3105ec1fc18532010f600725f15efea1562773299b1fad2ef709b75d342` |
| 8 | `theorem` | [div_smul_div_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/div-smul-div-comm--b188b7940ec18a157d50c63d.md) | 115 | `result-track:b188b7940ec18a157d50c63d4675d4e77f34da3c3037331ed277153456b5baec` |
| 9 | `theorem` | [smul_zpow₀'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5955e44f7481005abf8ab96b720ade554e2329fc71ad62779f675cb40bbb6007.lean/declarations/smul-zpow--bcf8c3512d4546fd90509342.md) | 127 | `result-track:bcf8c3512d4546fd905093422b3f1cc7ca4c478be27ad44bdbbad88f452d0868` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
