# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MetricSeparated.Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2b510a9ef9d83186de2a4a3aaef9497fd22fcf",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2b510a9ef9d83186de2a4a3aaef9497fd22fcf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean.json)

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
| 1 | `def` | [IsSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated--6754b485772843617c42360f.md) | 52 | `declaration-track:6754b485772843617c42360f1c6f9296e00152f20aaac29e2e59d3671d2ad98c` |
| 2 | `lemma` | [isSeparated_iff_setRelIsSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-iff-setrelisseparated--4fa76fd8f24f07bd6501edb8.md) | 54 | `result-track:4fa76fd8f24f07bd6501edb88994d0d520d8aabbcc3995df6a2e0fc25002b2be` |
| 3 | `lemma` | [IsSeparated.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-empty--3916f4851eed5bc78393f0c0.md) | 59 | `result-track:3916f4851eed5bc78393f0c0496298469f54703fb5d13d97deb6c1eb07658482` |
| 4 | `lemma` | [IsSeparated.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-singleton--65d6f98816af44cc13972432.md) | 60 | `result-track:65d6f98816af44cc13972432a13e101cbdcf5d8888e12af341d36535f812b983` |
| 5 | `lemma` | [IsSeparated.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-of-subsingleton--26e8cf89d7f1352b71e4ad33.md) | 62 | `result-track:26e8cf89d7f1352b71e4ad3375d4388af0f6fdd222b8b5eb080f3f582de5dab4` |
| 6 | `lemma` | [IsSeparated.anti](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-anti--a84174fae9b1411fca3e391e.md) | 66 | `result-track:a84174fae9b1411fca3e391e7dbfb43e0f45077cc04db8d2ee2c9eba01d10270` |
| 7 | `lemma` | [IsSeparated.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-subset--dc71c6639ad7171fe419a196.md) | 69 | `result-track:dc71c6639ad7171fe419a196753cf926b97b1527d118a42e8650ea0c2acb0898` |
| 8 | `lemma` | [isSeparated_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-insert--97d292fcb98c79882f74a501.md) | 71 | `result-track:97d292fcb98c79882f74a5010c6710353bfd53c892ea72e738fd78d256fb27df` |
| 9 | `lemma` | [isSeparated_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-insert-of-notmem--4214538dbdbd5875d9ade206.md) | 76 | `result-track:4214538dbdbd5875d9ade2065e6b6dcea428052a0d8c1fc8808e813077f8bac2` |
| 10 | `lemma` | [IsSeparated.insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-insert--62e2b2477fb23b3eb6a058d7.md) | 81 | `result-track:62e2b2477fb23b3eb6a058d7cace87fea22061752e2b88d5919b4bd79fc106c4` |
| 11 | `lemma` | [isSeparated_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-zero--6c0f81b6d005577bb0b90b8e.md) | 85 | `result-track:6c0f81b6d005577bb0b90b8e135941065d4f2aa73c72053a6552a717dec281f5` |
| 12 | `lemma` | [IsSeparated.image_antilipschitz](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/isseparated-image-antilipschitz--85d20245ec11cfe0f35b3dbd.md) | 88 | `result-track:85d20245ec11cfe0f35b3dbd9df5241372452bf57115d0d8dfb8a9b006b67346` |
| 13 | `def` | [AreSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/areseparated--15474e7ab39a35d449032876.md) | 108 | `declaration-track:15474e7ab39a35d449032876b47d83debaeb11a9a991fb8482cf3a41ab28ca3b` |
| 14 | `theorem` | [symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/symm--b44ef6784f62c8001e26119a.md) | 113 | `result-track:b44ef6784f62c8001e26119a84571d03132bbb0b68918988b054b72f2d0c4029` |
| 15 | `theorem` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/comm--e3864ea720b99ee46044fdee.md) | 117 | `result-track:e3864ea720b99ee46044fdee1655bad105f483d3acf40ad1df5b34844159e8fa` |
| 16 | `theorem` | [empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/empty-left--295812089dcfbe70121d4177.md) | 120 | `result-track:295812089dcfbe70121d4177f29f115d161316d60c3fac2aee33b3a15cbb147d` |
| 17 | `theorem` | [empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/empty-right--f441f7cfbb4c49a04023971c.md) | 124 | `result-track:f441f7cfbb4c49a04023971c8a6224f8f7bc4724cb560a75256f2b262a0f58b7` |
| 18 | `theorem` | [disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/disjoint--e27b1f75eb843a9016a328f4.md) | 127 | `result-track:e27b1f75eb843a9016a328f4e9cea9a3d26bf5f54aab41be4100e9211808275f` |
| 19 | `theorem` | [subset_compl_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/subset-compl-right--430a425281b74cf9e29fd6e4.md) | 131 | `result-track:430a425281b74cf9e29fd6e4800411311334309d4219e213229776f8fd9486ea` |
| 20 | `theorem` | [mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/mono--4e9899fab4a4dbd7db6a244b.md) | 135 | `result-track:4e9899fab4a4dbd7db6a244bb187d3461db72ddd3182866bbb0c31e292e691b1` |
| 21 | `theorem` | [mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/mono-left--b2bb391f896a73ae74008890.md) | 139 | `result-track:b2bb391f896a73ae74008890574bed8ed07c4d48de1dec72bd3bf125e15e494c` |
| 22 | `theorem` | [mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/mono-right--2e529ffafc285c67f62efbb9.md) | 142 | `result-track:2e529ffafc285c67f62efbb98b21d8217390feb613b60171ff1a9f027b7dc8ed` |
| 23 | `theorem` | [union_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/union-left--a15d8ea20ca01b48e6a1cf85.md) | 145 | `result-track:a15d8ea20ca01b48e6a1cf851bc45d2be8eaf910a7a7a9059a62607436495fbc` |
| 24 | `theorem` | [union_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/union-left-iff--f4965e9e43146d1e14a2521a.md) | 155 | `result-track:f4965e9e43146d1e14a2521a137225afb5f65142dc27872698852a293ddf251d` |
| 25 | `theorem` | [union_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/union-right--5171f8c3ba57ff7434f8a447.md) | 160 | `result-track:5171f8c3ba57ff7434f8a4473b8bb93bba1c91be2cd4e4ca881b0bee11dd9728` |
| 26 | `theorem` | [union_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/union-right-iff--80c5a8cd043dc8e8aeebf171.md) | 165 | `result-track:80c5a8cd043dc8e8aeebf171a6b969b9187cf4e3b77475357f38b4a5498c0272` |
| 27 | `theorem` | [finite_iUnion_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/finite-iunion-left-iff--299ff8808a4d226fa7c7911a.md) | 169 | `result-track:299ff8808a4d226fa7c7911a71a660f45b674cc18396da2b964579ddbbba12f0` |
| 28 | `theorem` | [finite_iUnion_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/finite-iunion-right-iff--5667d605ee5f46c11951cb5e.md) | 177 | `result-track:5667d605ee5f46c11951cb5e27d10e2c3c25b5ae609eca465e0221533b132635` |
| 29 | `theorem` | [finset_iUnion_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/finset-iunion-left-iff--409fe6f87557a0705d18a5b5.md) | 182 | `result-track:409fe6f87557a0705d18a5b5e067af2976bdd97e6b72a7dfc214359d52ebe782` |
| 30 | `theorem` | [finset_iUnion_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/declarations/finset-iunion-right-iff--75c6d36ac4912fa6f095ba41.md) | 189 | `result-track:75c6d36ac4912fa6f095ba4190ca04b6c026a41373aa8f84fa46e43a874a1b52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
