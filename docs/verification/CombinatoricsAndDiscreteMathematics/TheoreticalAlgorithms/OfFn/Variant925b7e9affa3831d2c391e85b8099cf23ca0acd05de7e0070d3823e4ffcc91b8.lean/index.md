# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97f2789d7cef7b111cd43619a104e1ee7a689541",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97f2789d7cef7b111cd43619a104e1ee7a689541`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Monadic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/getelem-offn--745a555fe7e8a83e314c35ba.md) | 35 | `result-track:745a555fe7e8a83e314c35ba4b7eb23ae6ae262b2616647500f7e573f3165d10` |
| 2 | `theorem` | [getElem?_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/getelem-offn--ad1d2a6b468926a21d40eab2.md) | 39 | `result-track:ad1d2a6b468926a21d40eab240de8cabcabadf0327a48c322ba677a346f7e7f4` |
| 3 | `theorem` | [mem_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/mem-offn--394f79fc5ee3581079c489fa.md) | 44 | `result-track:394f79fc5ee3581079c489fa5d4793767db0238d78bb862fe228caeebe5928fb` |
| 4 | `theorem` | [map_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/map-offn--1f9ee28a0a862df343b43d6f.md) | 53 | `result-track:1f9ee28a0a862df343b43d6febcd39073d7a065a5095f34752ce80f435f08cf7` |
| 5 | `theorem` | [back_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/back-offn--287652f12bf462a7c24338af.md) | 57 | `result-track:287652f12bf462a7c24338afdfebab96602bf767a107c332a71ce966a49f5946` |
| 6 | `theorem` | [ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offn-succ--0355c1a507922c9bb13220b8.md) | 61 | `result-track:0355c1a507922c9bb13220b82d3a17a0fd4126ebd9e714ebdc2095829d23c74c` |
| 7 | `theorem` | [ofFn_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offn-add--6b5a43ed022ed16e45fd1e16.md) | 69 | `result-track:6b5a43ed022ed16e45fd1e1602551b14d2bfec4155b86f7adb7d2d8e54892a6c` |
| 8 | `theorem` | [ofFn_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offn-succ--ce8ce16c334345889bd4596a.md) | 74 | `result-track:ce8ce16c334345889bd4596ad9164f3a32981149e4049c1e2298ad475d3f179a` |
| 9 | `theorem` | [ofFn_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offn-getelem--45b7036ee3172a10e08ee34d.md) | 80 | `result-track:45b7036ee3172a10e08ee34d999b488bbffe1a3f06fec0158b410b900238fc50` |
| 10 | `def` | [ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm--fa6257dc432fd23a941047d4.md) | 87 | `declaration-track:fa6257dc432fd23a941047d484d05ddafed74e9549282f752d02a4889aa11ef1` |
| 11 | `theorem` | [ofFnM_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-zero--4565e81bc00250fb524ec9d8.md) | 97 | `result-track:4565e81bc00250fb524ec9d87a89d9a5d33e26c0192ec5e45efed0b6400d2ace` |
| 12 | `theorem` | [ofFnM_go_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-go-succ--9b5f567f7a708ddae07ad7d9.md) | 100 | `result-track:9b5f567f7a708ddae07ad7d98c2b57616439144a3eaba3b5ce494165bd6cd236` |
| 13 | `theorem` | [ofFnM_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-succ--ebdfc6ad7c8d410d097fcf4b.md) | 123 | `result-track:ebdfc6ad7c8d410d097fcf4bc90f14870669081a19411e226bcf164dad73460a` |
| 14 | `theorem` | [ofFnM_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-add--db64af6cd42e0b4ea2f1f5ab.md) | 130 | `result-track:db64af6cd42e0b4ea2f1f5abd3042de9505130c551442147e87468bc33c86316` |
| 15 | `theorem` | [toArray_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/toarray-offnm--5ee85b0067f12c0203de58e3.md) | 139 | `result-track:5ee85b0067f12c0203de58e386be5daeda3a7b1e61a016bf50d6f31a7384a4f5` |
| 16 | `theorem` | [toList_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/tolist-offnm--a97713cbb09b02813b633ed2.md) | 145 | `result-track:a97713cbb09b02813b633ed21381bc16560fb663dff9a86ef06ae78edd887006` |
| 17 | `theorem` | [ofFnM_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-succ--758cee5cde70f6a7faa3d2c7.md) | 152 | `result-track:758cee5cde70f6a7faa3d2c7f44356910f19b67bd5db1043b6fe19cee8266dd1` |
| 18 | `theorem` | [ofFnM_pure_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-pure-comp--d09641fe480fbcee24e7421f.md) | 166 | `result-track:d09641fe480fbcee24e7421f57829dc3980b4a2e863b2003fd369335e1c5feba` |
| 19 | `theorem` | [ofFnM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/offnm-pure--51df634c05655d2f9b897660.md) | 173 | `result-track:51df634c05655d2f9b897660a84fc0eddce243960ee7f50ba6087de77d4961da` |
| 20 | `theorem` | [idRun_ofFnM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/declarations/idrun-offnm--32b4c0e196edb36dc5a30dba.md) | 177 | `result-track:32b4c0e196edb36dc5a30dba93e7852a9981b3dc76e54a4151792abfd050fe05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
