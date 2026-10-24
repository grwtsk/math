# Verification target: GRWTSK.Topology.GeneralTopology.CompactConvergence.Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8683126735ebafcd4497cb58bee1f000b20b3916`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergenceTopology` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_iff_forall_isCompact_tendstoUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/tendsto-iff-forall-iscompact-tendstouniformlyon--417677947e2ba1f51d89a8cf.md) | 99 | `result-track:417677947e2ba1f51d89a8cf7fa976f8b92dc49c39ac8a29a9e58137ecd99a0c` |
| 2 | `def` | [toUniformOnFunIsCompact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/touniformonfuniscompact--851a8ee2407f0cd4c430be62.md) | 148 | `declaration-track:851a8ee2407f0cd4c430be626cac649f6fd66c3a1d570d8e73ae816ad3efa095` |
| 3 | `theorem` | [toUniformOnFun_toFun](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/touniformonfun-tofun--fe18e1122601916deeb212cb.md) | 152 | `result-track:fe18e1122601916deeb212cb01efd0129533c8da1edf5526a35dfa074785f8a0` |
| 4 | `theorem` | [range_toUniformOnFunIsCompact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/range-touniformonfuniscompact--74e584637901771e7dc161b5.md) | 155 | `result-track:74e584637901771e7dc161b598f84b683b1e935c819bc05044808ccee06c7d57` |
| 5 | `instance` | [compactConvergenceUniformSpace](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/compactconvergenceuniformspace--e534c5acd4ada264fe506b60.md) | 168 | `declaration-track:e534c5acd4ada264fe506b60f6b6930a3e2b81091df5ea5cdd44151095244468` |
| 6 | `theorem` | [isUniformEmbedding_toUniformOnFunIsCompact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/isuniformembedding-touniformonfuniscompact--53c24fa38c4ac120e5b96917.md) | 175 | `result-track:53c24fa38c4ac120e5b969177a311f022fae0610056f03c9178e0b7d91c6ad28` |
| 7 | `theorem` | [_root_.Filter.HasBasis.compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/root-filter-hasbasis-compactconvergenceuniformity--fdad96500b94a3dbca05c67c.md) | 184 | `result-track:fdad96500b94a3dbca05c67cdd3f41014de0e36a55dddbc25cba91ec13aa6f96` |
| 8 | `theorem` | [hasBasis_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/hasbasis-compactconvergenceuniformity--e513204d3107fd1df4c3dad2.md) | 192 | `result-track:e513204d3107fd1df4c3dad2b751c004db5d0beffcac506b0d43f4daea249349` |
| 9 | `theorem` | [mem_compactConvergence_entourage_iff](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/mem-compactconvergence-entourage-iff--e4a1e9685c5b5755c1ce4c8a.md) | 197 | `result-track:e4a1e9685c5b5755c1ce4c8aef21200aa0d66a2a1b9eeaa2d5693bf284c8a7d5` |
| 10 | `theorem` | [_root_.CompactExhaustion.hasBasis_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/root-compactexhaustion-hasbasis-compactconvergenceuniformity--11013505ee1908a82af82d3f.md) | 207 | `result-track:11013505ee1908a82af82d3f8c1db6ec88c5eeb54dcfe12ede500478fcc939e6` |
| 11 | `theorem` | [_root_.CompactExhaustion.hasAntitoneBasis_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/root-compactexhaustion-hasantitonebasis-compactconvergenceuniformity--fd976aca50377a9a9d12a0da.md) | 214 | `result-track:fd976aca50377a9a9d12a0da2aebb1a90648f78c4f60967b5f582639e8f74bbc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/instance--8d224eaeb996dc1298bcf27a.md) | 225 | `declaration-track:8d224eaeb996dc1298bcf27acb9f917931a1553da91a7e25bbca2a440aea40ef` |
| 13 | `theorem` | [tendsto_of_tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/tendsto-of-tendstolocallyuniformly--70bfa1e38f3d7ab37c8a60b6.md) | 234 | `result-track:70bfa1e38f3d7ab37c8a60b63307c4b45a5c6c24e095f3e9a52ed649440ae4ad` |
| 14 | `theorem` | [tendsto_iff_tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/tendsto-iff-tendstolocallyuniformly--e16be18edd4ce0d731c6756c.md) | 246 | `result-track:e16be18edd4ce0d731c6756c13643a672342a69e4877678415a160caea876c19` |
| 15 | `theorem` | [uniformContinuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/uniformcontinuous-comp--25a0b377db1258905daf6826.md) | 257 | `result-track:25a0b377db1258905daf6826f0ca46b0daf7b7562bbaecad79839c355512d616` |
| 16 | `theorem` | [isUniformInducing_comp](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/isuniforminducing-comp--8073c61177192a2bb649e7f4.md) | 263 | `result-track:8073c61177192a2bb649e7f4de10ecf10aea173acec3526165969e7cc249adc3` |
| 17 | `theorem` | [isUniformEmbedding_comp](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/isuniformembedding-comp--391a9cc40344b2c59ca8bf5b.md) | 269 | `result-track:391a9cc40344b2c59ca8bf5ba094054d802cc4c38745f62075789cd6ed80e85e` |
| 18 | `theorem` | [uniformContinuous_comp_left](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/uniformcontinuous-comp-left--c53bd215f516a5e4f5274f3e.md) | 275 | `result-track:c53bd215f516a5e4f5274f3e4d8bea0e66cb5c87b8dd8bd8f0792d17ca06e915` |
| 19 | `def` | [_root_.UniformEquiv.arrowCongr](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/root-uniformequiv-arrowcongr--de7238eda3b178a9ecda6516.md) | 283 | `declaration-track:de7238eda3b178a9ecda65168a7070c7897e114db48a9c5c796784e7a3c9b1a9` |
| 20 | `theorem` | [hasBasis_compactConvergenceUniformity_of_compact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/hasbasis-compactconvergenceuniformity-of-compact--5ca40c4f9776188b81876c3c.md) | 300 | `result-track:5ca40c4f9776188b81876c3cc8c1f41b2902fd6234fa29cf1a354bcacacdb674` |
| 21 | `theorem` | [_root_.Filter.HasBasis.compactConvergenceUniformity_of_compact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/root-filter-hasbasis-compactconvergenceuniformity-of-compact--5bd589e8b9a949f167c29e23.md) | 307 | `result-track:5bd589e8b9a949f167c29e236918bb61fb6ae5f217085dbe12803d441cfe2dee` |
| 22 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/tendsto-iff-tendstouniformly--0279bbe1eb290a46df86ce4e.md) | 316 | `result-track:0279bbe1eb290a46df86ce4e8e496ea39af5ac38da918a70e061c048725a68c9` |
| 23 | `theorem` | [uniformSpace_eq_inf_precomp_of_cover](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/uniformspace-eq-inf-precomp-of-cover--6312625f0443ae4c856232fb.md) | 323 | `result-track:6312625f0443ae4c856232fbb2bab2efef6e63e6ce8427a0fa64618da0dc38ca` |
| 24 | `theorem` | [uniformSpace_eq_iInf_precomp_of_cover](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/uniformspace-eq-iinf-precomp-of-cover--9d028205da4697d3e0d2f898.md) | 346 | `result-track:9d028205da4697d3e0d2f898008d1647296de20895a941da586dd43df1d2d232` |
| 25 | `lemma` | [completeSpace_of_isCoherentWith](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/completespace-of-iscoherentwith--7a1e8f32c1d08174f0371db7.md) | 376 | `result-track:7a1e8f32c1d08174f0371db7a036b22d45c0197632b223668b9c515b671f4dc8` |
| 26 | `instance` | [instCompleteSpaceOfWeaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/instcompletespaceofweaklylocallycompactspace--4b695037d17e9fe6d40435cf.md) | 386 | `declaration-track:4b695037d17e9fe6d40435cf616c79744c3f96a6e4cca15131ad9e134e438dc1` |
| 27 | `instance` | [instCompleteSpaceOfSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/declarations/instcompletespaceofsequentialspace--8118316ea4e7b392286abd9c.md) | 389 | `declaration-track:8118316ea4e7b392286abd9cb18bf7dc0a29ed1b067056bdc3d23e43f80b5a9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
