# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad444d30364f5cf7c5971b091bba59da9d447191",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad444d30364f5cf7c5971b091bba59da9d447191`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean.json)

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
| 1 | `def` | [bracket'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/bracket--a263670cbcb26fcd1e84115b.md) | 43 | `declaration-track:a263670cbcb26fcd1e84115bf9cb43248ce2dceff02cc5c60ab9d47850ef9873` |
| 2 | `theorem` | [bracket'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/bracket-tmul--cf51562882062f436bfaa090.md) | 50 | `result-track:cf51562882062f436bfaa090b1b6ac2a43b0966773c94b368ed2968b91879e3f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instance--6c9becbc898d269d799d34ba.md) | 55 | `declaration-track:6c9becbc898d269d799d34bac736a3ed13cbbf70caf850e3c17ccfe59e4dc37a` |
| 4 | `theorem` | [bracket_def](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/bracket-def--11f36d82cc2da2c512f91fcd.md) | 57 | `result-track:11f36d82cc2da2c512f91fcd2e1160c769cbfa1d484a321cf60190311cbda94a` |
| 5 | `theorem` | [bracket_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/bracket-tmul--4503ee50f0c2995686368c76.md) | 61 | `result-track:4503ee50f0c2995686368c76714d58b9bd290ced02ccf2033b5969d0e80c0277` |
| 6 | `theorem` | [bracket_lie_self](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/bracket-lie-self--1068903645cebb72a714961b.md) | 64 | `result-track:1068903645cebb72a714961be0efcab167c8581170e95a290ed08df865e74524` |
| 7 | `theorem` | [bracket_leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/bracket-leibniz-lie--0ffa5dc8c2b3d84b2d969f1d.md) | 84 | `result-track:0ffa5dc8c2b3d84b2d969f1d83652e29dd111c249b181565b1310d3b12f81a1a` |
| 8 | `instance` | [instLieRing](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instliering--92d8ac45de57f8b5a5ae26ad.md) | 100 | `declaration-track:92d8ac45de57f8b5a5ae26ad6492c4d2fb763ed3390e0311ab2f815de0d71bf2` |
| 9 | `instance` | [instBaseLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instbaseliealgebra--7c14a9b1983c023a703f8838.md) | 106 | `declaration-track:7c14a9b1983c023a703f8838ee8dea6a42ec01787a7f418804b9b131b31b161f` |
| 10 | `instance` | [instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instliealgebra--7f8f64022003f7649e8183c8.md) | 108 | `declaration-track:7f8f64022003f7649e8183c8234eef23fc212026a5368abe1043766bc91b9e0f` |
| 11 | `instance` | [instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instlieringmodule--9cb1932f71657d401ab1c475.md) | 112 | `declaration-track:9cb1932f71657d401ab1c475da3101029be2683da718d0147d18263ec947c35d` |
| 12 | `instance` | [instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instliemodule--4fae169150ae6bc5deeb3cbc.md) | 117 | `declaration-track:4fae169150ae6bc5deeb3cbc4dc8064264cb14fe143c0065aafc6d5ad6481683` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/map--82e0fe67c363dfb865e0e9eb.md) | 122 | `declaration-track:82e0fe67c363dfb865e0e9ebabea43534a36e554034cbad97bd26155056139e3` |
| 14 | `lemma` | [map_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/map-apply-tmul--f189fc2434406284d6125792.md) | 135 | `result-track:f189fc2434406284d6125792d3f8c8e8a9523393bcca5e102a1a2a9a00bf294f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/instance--26b18898bfc5f94c794ac20b.md) | 148 | `declaration-track:26b18898bfc5f94c794ac20b04198632cefd4c6be65fe542278315a95bd2b5ff` |
| 16 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/liealgebra--9337cf2b3cd53829d9d1cb74.md) | 154 | `declaration-track:9337cf2b3cd53829d9d1cb74c48f05711cf8deccf39d50716a53654882301008` |
| 17 | `lemma` | [LieModule.toEnd_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/liemodule-toend-basechange--fbe626be846c43870419f93a.md) | 169 | `result-track:fbe626be846c43870419f93a02046aa8175f47e5935999317668f9dc7685ff99` |
| 18 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/basechange--654cce054ca723be742e36ed.md) | 185 | `declaration-track:654cce054ca723be742e36edc7f34cf6dfe1d9f8e1962443e02345f1791450ed` |
| 19 | `lemma` | [coe_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/coe-basechange--7b06f9d45be68f4de55aabe4.md) | 202 | `result-track:7b06f9d45be68f4de55aabe48164838c85f73d2186462f4860761b4fa7e327d3` |
| 20 | `lemma` | [tmul_mem_baseChange_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/tmul-mem-basechange-of-mem--020b88af11c78a462c498a3d.md) | 209 | `result-track:020b88af11c78a462c498a3d27de12b5c826d418a8fc208b19872e5fd80c2cf1` |
| 21 | `lemma` | [mem_baseChange_iff](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/mem-basechange-iff--bfddba95a83d3b6988b9f400.md) | 213 | `result-track:bfddba95a83d3b6988b9f400f383fc473ffc56722f3f20db0533e0ce5efc0294` |
| 22 | `lemma` | [baseChange_bot](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/basechange-bot--1fa42526ab3e9ae28947843a.md) | 219 | `result-track:1fa42526ab3e9ae28947843ad0c4113969dee3a389a7790ad3e823d27f1f863d` |
| 23 | `lemma` | [baseChange_top](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/basechange-top--8e32fb22ec3ba57ba0469d68.md) | 224 | `result-track:8e32fb22ec3ba57ba0469d6855fabc3b1c97bf0e1c99bde7848fb374c794a8d1` |
| 24 | `lemma` | [lie_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant7404712f253ed74ba5cc5a53cea17e15baddd73af764f5f8409251dab87bd421.lean/declarations/lie-basechange--7a76ad690d4fbb0119709dfe.md) | 228 | `result-track:7a76ad690d4fbb0119709dfe3cd4a2a6544fe00e222f622a80a4591398563374` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
