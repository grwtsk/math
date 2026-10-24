# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3c3a59de879409393c7d15eef40dbfb70ab977",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3c3a59de879409393c7d15eef40dbfb70ab977`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountableInter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Closure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg--403c7776811f0d5ed6804f99.md) | 57 | `declaration-track:403c7776811f0d5ed6804f99650d535cf6ed1cb57403784e5f3856802d1b19d6` |
| 2 | `theorem` | [IsOpen.isGδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isopen-isg--8a1c8914d5f33702b185a391.md) | 61 | `result-track:8a1c8914d5f33702b185a39135ef610f46a27a0aa84460e78d8b91640ed5e238` |
| 3 | `theorem` | [IsGδ.empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-empty--ab7b8e0c2815928440d09be5.md) | 65 | `result-track:ab7b8e0c2815928440d09be5190588c42d992a38b431f0048eee7c230f11ecad` |
| 4 | `theorem` | [IsGδ.univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-univ--a17a05ca3ea988d8a8d3c72b.md) | 70 | `result-track:a17a05ca3ea988d8a8d3c72b38de18fd104ec6eb9ad7b2731400c3bc9634e3e1` |
| 5 | `theorem` | [IsGδ.biInter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-biinter-of-isopen--975659de18cc8be63d7d316b.md) | 74 | `result-track:975659de18cc8be63d7d316b6e380c690086724f8d770f0e08453b9427eef5f0` |
| 6 | `theorem` | [IsGδ.iInter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-iinter-of-isopen--2d2feb56526feb30e1373f13.md) | 79 | `result-track:2d2feb56526feb30e1373f13e8da6c4011a983a897bd32b01013be05d7b033d5` |
| 7 | `lemma` | [isGδ_iff_eq_iInter_nat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-iff-eq-iinter-nat--ccd7f0657e0f24d0ca4851ce.md) | 84 | `result-track:ccd7f0657e0f24d0ca4851ce33bfd18f43f0585c6f43672d2111a715847b1f35` |
| 8 | `theorem` | [IsGδ.iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-iinter--59a63a72932f2ab65428d841.md) | 98 | `result-track:59a63a72932f2ab65428d84176be7930e997a98fd4e3ac1cf643930852dbe125` |
| 9 | `theorem` | [IsGδ.biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-biinter--f67b77f78e943369e1748673.md) | 107 | `result-track:f67b77f78e943369e1748673de41761bf57e6f0063e46550e884d7d390d24402` |
| 10 | `theorem` | [IsGδ.sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-sinter--4d2c128ae1e2453840c22c8e.md) | 115 | `result-track:4d2c128ae1e2453840c22c8eb72c575affbf248701d9bf2f5db879e482d7018d` |
| 11 | `theorem` | [IsGδ.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-inter--87c6d6e4cb1d4ccb4b635670.md) | 119 | `result-track:87c6d6e4cb1d4ccb4b635670a2619af63277cf3ed12fca4153d44d791a4f5c34` |
| 12 | `theorem` | [IsGδ.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-union--c2a20b8cc1036c079f098d66.md) | 124 | `result-track:c2a20b8cc1036c079f098d66441acd598c47bae460b6e2ecd74afc5f2e974ed2` |
| 13 | `theorem` | [IsGδ.sUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-sunion--40b2a9fd19812f479e40a03d.md) | 133 | `result-track:40b2a9fd19812f479e40a03d62c01b5012b681c35c5a341414a4086b145e343b` |
| 14 | `theorem` | [IsGδ.biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-biunion--20674e941e1446bcc90ced97.md) | 141 | `result-track:20674e941e1446bcc90ced978e252ac35d7f037177cdcb177bb12c4c5e3c1b5f` |
| 15 | `theorem` | [IsGδ.iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isg-iunion--42accf437f1b7cb957acbca2.md) | 147 | `result-track:42accf437f1b7cb957acbca2f363063a32f9a2ce0f0fa2ddba30c651a3ef4907` |
| 16 | `def` | [residual](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/residual--962a0c2a8d1a31fbf1a11ff1.md) | 157 | `declaration-track:962a0c2a8d1a31fbf1a11ff1b1abd7e19e66996f2da54d8bc3432fe949ac2205` |
| 17 | `instance` | [countableInterFilter_residual](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/countableinterfilter-residual--6f84ee5d8150f651d954435a.md) | 160 | `declaration-track:6f84ee5d8150f651d954435a6f7d0574873ddea3d5ecbbc8542bd9189226ceb4` |
| 18 | `theorem` | [residual_of_dense_open](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/residual-of-dense-open--c4a8278c81c3735cbf1c87e8.md) | 164 | `result-track:c4a8278c81c3735cbf1c87e8346408dd7be59ce43500583a793423fad29d4f8a` |
| 19 | `theorem` | [residual_of_dense_Gδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/residual-of-dense-g--cebff5e024ee5bd08ce1ce23.md) | 168 | `result-track:cebff5e024ee5bd08ce1ce2358115674a49131ef7087073d90e1219d08269c91` |
| 20 | `theorem` | [mem_residual_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/mem-residual-iff--da7cdcdc83167c1e0068fa65.md) | 175 | `result-track:da7cdcdc83167c1e0068fa658d159874f9ea43fd87398d026a106d7248f784af` |
| 21 | `def` | [IsNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isnowheredense--344abce9554a2041f4d4edd3.md) | 187 | `declaration-track:344abce9554a2041f4d4edd35cd15b82bf6ae9a8c219d7c96e980b88df4d8bec` |
| 22 | `lemma` | [isNowhereDense_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isnowheredense-empty--d28500b4fc786a1bdc7c71b8.md) | 191 | `result-track:d28500b4fc786a1bdc7c71b813a362d16b839ba5c1644fb607ce91498e369373` |
| 23 | `lemma` | [IsClosed.isNowhereDense_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isclosed-isnowheredense-iff--f6a4e20edb2cb15473d0e45d.md) | 195 | `result-track:f6a4e20edb2cb15473d0e45d44649eed1268d0d6563017bad53f61b6ce736835` |
| 24 | `lemma` | [IsNowhereDense.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isnowheredense-closure--576f3baae453e79f2c599eb8.md) | 200 | `result-track:576f3baae453e79f2c599eb8bc6aa1d51981f3d61d775da407a2f1e8756977e0` |
| 25 | `lemma` | [IsNowhereDense.subset_of_closed_isNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isnowheredense-subset-of-closed-isnowheredense--2c6462a6dae5db1413001e83.md) | 205 | `result-track:2c6462a6dae5db1413001e8342e9a4d113b46f440fb48e6b3f90650cf68e9125` |
| 26 | `lemma` | [isClosed_isNowhereDense_iff_compl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/isclosed-isnowheredense-iff-compl--588b8b24ed3d40133954b2d4.md) | 210 | `result-track:588b8b24ed3d40133954b2d4aece86f5f7480c8f2d47794fe0a9d1b3c1b87e17` |
| 27 | `def` | [IsMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/ismeagre--618bab8882a7056a6e583e32.md) | 216 | `declaration-track:618bab8882a7056a6e583e3241429706780a90ba1e15602eb2b2f970672d6def` |
| 28 | `lemma` | [meagre_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/meagre-empty--a37321287e5cfbc145be0bf3.md) | 219 | `result-track:a37321287e5cfbc145be0bf3e268e5e5bd4efdeff8eabefb483e4df67d4bd2cf` |
| 29 | `lemma` | [IsMeagre.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/ismeagre-mono--5c9e7d952d90568480f66272.md) | 224 | `result-track:5c9e7d952d90568480f662726c3e7a15ab956e60f0be6d7135b67f8d518aeb97` |
| 30 | `lemma` | [IsMeagre.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/ismeagre-inter--0e7f673f5b9b483d6cf65288.md) | 228 | `result-track:0e7f673f5b9b483d6cf65288ac57b346c8b23b86477bfadceab56cc1ad59dbd5` |
| 31 | `lemma` | [isMeagre_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/ismeagre-iunion--7ba7de68fa5bd14196f2c312.md) | 232 | `result-track:7ba7de68fa5bd14196f2c3124e610125fea6aa5ee851a1ca6ffaf5dfc6a68d63` |
| 32 | `lemma` | [isMeagre_iff_countable_union_isNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean/declarations/ismeagre-iff-countable-union-isnowheredense--16e369cd98a54dd010b82691.md) | 237 | `result-track:16e369cd98a54dd010b82691e119bef0d6b85b45c83827657f52696fe252c22d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
