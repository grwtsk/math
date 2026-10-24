# Verification target: GRWTSK.Topology.GeneralTopology.BoundedOperation.Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "189f35228e7419dce7cf6875a0c89054769d7d51",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `189f35228e7419dce7cf6875a0c89054769d7d51`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean.json)

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
| 1 | `class` | [BoundedSub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/boundedsub--66a172ff7ee9f1f1f8d7e172.md) | 50 | `declaration-track:66a172ff7ee9f1f1f8d7e172d8a3cfddd7145125f61d0c80b47604e34c933163` |
| 2 | `lemma` | [isBounded_sub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/isbounded-sub--4325965e81465003f4a51181.md) | 56 | `result-track:4325965e81465003f4a51181c2f8f0eb5c3c5474886bdbbfa9c35ed4d86399ff` |
| 3 | `lemma` | [sub_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/sub-bounded-of-bounded-of-bounded--a2d08d00895e665912bc2c8c.md) | 60 | `result-track:a2d08d00895e665912bc2c8cdb0792749e6a3d0115b4b4a95c0539bd2194f602` |
| 4 | `lemma` | [boundedSub_of_lipschitzWith_sub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/boundedsub-of-lipschitzwith-sub--93a101b34a34b3e94beb2c62.md) | 71 | `result-track:93a101b34a34b3e94beb2c6240ca3a59d20f192593b1308920f5b0e672bb55c3` |
| 5 | `class` | [BoundedAdd](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/boundedadd--d44cfa22f354a9b2a42a6ade.md) | 92 | `declaration-track:d44cfa22f354a9b2a42a6ade0940bc786e8ace664c56c1d896b572fb6bb89c73` |
| 6 | `class` | [BoundedMul](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/boundedmul--a8da270de6af3286d46e5801.md) | 100 | `declaration-track:a8da270de6af3286d46e5801e407487c272cdeebf10a10eb31cb4c2ab6fa0b58` |
| 7 | `lemma` | [isBounded_mul](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/isbounded-mul--db92af574db4bb57237ef070.md) | 107 | `result-track:db92af574db4bb57237ef070d85df02044450403d28aa5fd792de168ea485d4d` |
| 8 | `lemma` | [isBounded_pow](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/isbounded-pow--091ba92e424a350346ca71fe.md) | 112 | `result-track:091ba92e424a350346ca71fe1f90929048103d83518bb99b1a12ba6508f02f80` |
| 9 | `lemma` | [mul_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/mul-bounded-of-bounded-of-bounded--8ee6d7ee7cc92c2c5c71d67f.md) | 132 | `result-track:8ee6d7ee7cc92c2c5c71d67f10ac229cdd5cba71ecbb6c52815df0295dc5aed6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/instance--316eaffc07cbc2d439819438.md) | 144 | `declaration-track:316eaffc07cbc2d4398194385813f908a1d77a44e5f8dd5110d12f9797aac79f` |
| 11 | `lemma` | [SeminormedAddCommGroup.lipschitzWith_sub](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/seminormedaddcommgroup-lipschitzwith-sub--0574e6b4bdf245061f8e2a59.md) | 166 | `result-track:0574e6b4bdf245061f8e2a597487f6b968730254b075c84cf6792181d84831e4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/instance--65bcb742a701c5297408b443.md) | 171 | `declaration-track:65bcb742a701c5297408b443bda9c8eccd7d86b9b14548b0be51c05a1a41c67e` |
| 13 | `lemma` | [tendsto_add_const_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/tendsto-add-const-cobounded--98b5da39e7bb2cbfaf5f9be9.md) | 182 | `result-track:98b5da39e7bb2cbfaf5f9be9b4e0cd5c8ef39830ba61fd43c286c0b67fa3d375` |
| 14 | `lemma` | [tendsto_const_add_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/tendsto-const-add-cobounded--cc65195bd9831bbe6b775570.md) | 193 | `result-track:cc65195bd9831bbe6b7755704d2b28a1fa2c49c862bcc3a7730e51de76081bc0` |
| 15 | `theorem` | [tendsto_sub_const_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/tendsto-sub-const-cobounded--610d6870ebac60748cec78b2.md) | 204 | `result-track:610d6870ebac60748cec78b2cf9c43ac0583e75538e434b5bffaee4b64a926a2` |
| 16 | `theorem` | [tendsto_const_sub_cobounded](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/tendsto-const-sub-cobounded--02b9a530069363eb5f870af9.md) | 209 | `result-track:02b9a530069363eb5f870af9a15f6695e819cfb04bb61ee88dd30c39f26a4629` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/instance--75e5eae7eb12201d98b0b301.md) | 223 | `declaration-track:75e5eae7eb12201d98b0b301ef1137e4fa9414d4f4c8ff190e0423c6cd9bb5e5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/instance--f3a74b377ab29221bc82a03a.md) | 251 | `declaration-track:f3a74b377ab29221bc82a03aa3df326b3a0731e17eab6953f8f7d060a0d00d4e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/declarations/instance--b8541031c1985ede07febb98.md) | 254 | `declaration-track:b8541031c1985ede07febb982f3aa63bc000d5a9e675dbef25173254adafe488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
