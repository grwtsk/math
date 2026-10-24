# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c0512536defb656eafe7219f494431c9a8c485b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c0512536defb656eafe7219f494431c9a8c485b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousSMul.of_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/continuoussmul-of-nhds-zero--f19982ae07f03c6e888c66cf.md) | 33 | `result-track:f19982ae07f03c6e888c66cf5e02122b9387e6a34efe9214bcaaa546ec1e963b` |
| 2 | `theorem` | [ContinuousNeg.of_continuousConstSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/continuousneg-of-continuousconstsmul--796385a0b14297cd0a5412e1.md) | 47 | `result-track:796385a0b14297cd0a5412e1dcc77f1da4df6a700bdfaf37e8c20302c5b69311` |
| 3 | `theorem` | [Submodule.eq_top_of_nonempty_interior'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-eq-top-of-nonempty-interior--fed292262c6d946dde757f04.md) | 60 | `result-track:fed292262c6d946dde757f0408d069964b003bb5d5796461f2c543b3cb7442df` |
| 4 | `theorem` | [Module.punctured_nhds_neBot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/module-punctured-nhds-nebot--986d10d26e7a3b35abacbcbf.md) | 84 | `result-track:986d10d26e7a3b35abacbcbfa3b662938542b102290716b46d99724c9c706ceb` |
| 5 | `theorem` | [continuousSMul_induced](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/continuoussmul-induced--51220098c37ab508fb39188b.md) | 102 | `result-track:51220098c37ab508fb39188ba5930ba096f5335cd99673e3e38c3b8e87102c20` |
| 6 | `lemma` | [TopologicalSpace.IsSeparable.span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/topologicalspace-isseparable-span--1ac238cc04f1d4e296b01600.md) | 109 | `result-track:1ac238cc04f1d4e296b01600a8819fcf639eb8bc8e9c526d08aed53661fe3ae2` |
| 7 | `instance` | [topologicalAddGroup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/topologicaladdgroup--16fa4a7bb12b9e670e8b3fbc.md) | 123 | `declaration-track:16fa4a7bb12b9e670e8b3fbc9a51136d2f75d9974c10556c9269dc4a473e2429` |
| 8 | `theorem` | [Submodule.mapsTo_smul_closure](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-mapsto-smul-closure--0e013e881758bc692a7c0ae3.md) | 134 | `result-track:0e013e881758bc692a7c0ae3809c30c73a45a072d1f1588d6f696bd636363689` |
| 9 | `theorem` | [Submodule.smul_closure_subset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-smul-closure-subset--f70e282ebabe775d20ee9d81.md) | 139 | `result-track:f70e282ebabe775d20ee9d817bf331cb67fbfbabaa19a6c15446e0c7a5d8a500` |
| 10 | `def` | [Submodule.topologicalClosure](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-topologicalclosure--d99d8dabc20dc8533d920ba4.md) | 147 | `declaration-track:d99d8dabc20dc8533d920ba47ff7bf3288dc25fe1ae551ae60934f9b7bf72540` |
| 11 | `theorem` | [Submodule.topologicalClosure_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-topologicalclosure-coe--b09ca3d6ab55f758a02e693f.md) | 152 | `result-track:b09ca3d6ab55f758a02e693f6e0889edffa8e72f78cb48e0ad16e60179fa652c` |
| 12 | `theorem` | [Submodule.le_topologicalClosure](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-le-topologicalclosure--c6400eed86ae3da60b5a4ab7.md) | 156 | `result-track:c6400eed86ae3da60b5a4ab78b04de8f369ff1706d04dafba9037909b4c630c3` |
| 13 | `theorem` | [Submodule.closure_subset_topologicalClosure_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-closure-subset-topologicalclosure-span--1ca3a5c2baa3791e843c00d8.md) | 159 | `result-track:1ca3a5c2baa3791e843c00d89733d92f43e19eca36a8db47cc7823b1c705ba30` |
| 14 | `theorem` | [Submodule.isClosed_topologicalClosure](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-isclosed-topologicalclosure--f48dd67031f0ff90a61e96a8.md) | 164 | `result-track:f48dd67031f0ff90a61e96a8e5b19138aba17cc7ead459cc450eef818d9462db` |
| 15 | `theorem` | [Submodule.topologicalClosure_minimal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-topologicalclosure-minimal--4689e831f97caf1e8bf83729.md) | 167 | `result-track:4689e831f97caf1e8bf837290152870168140c3925e591ae15404afadae4daea` |
| 16 | `theorem` | [Submodule.topologicalClosure_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-topologicalclosure-mono--bf8d010f9163067ceec348de.md) | 171 | `result-track:bf8d010f9163067ceec348de51008e5a38fe208e25dcdb47fd8b08526750a37e` |
| 17 | `theorem` | [IsClosed.submodule_topologicalClosure_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/isclosed-submodule-topologicalclosure-eq--8cb840729807baf88f320c75.md) | 176 | `result-track:8cb840729807baf88f320c7539c6f116e45da68ee11eb55a16147803fba5c25c` |
| 18 | `theorem` | [Submodule.dense_iff_topologicalClosure_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-dense-iff-topologicalclosure-eq-top--313b6397f82f312a16500bce.md) | 181 | `result-track:313b6397f82f312a16500bce5e722e2ebaf392993e94c5ff561939c71f9f7a65` |
| 19 | `instance` | [Submodule.topologicalClosure.completeSpace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-topologicalclosure-completespace--febebd1480f391a436156f2d.md) | 186 | `declaration-track:febebd1480f391a436156f2d7b1c87340aca03f1ab926a9793f835c25dfb32cb` |
| 20 | `theorem` | [Submodule.isClosed_or_dense_of_isCoatom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/submodule-isclosed-or-dense-of-iscoatom--7dd778fe7a0d9d80157e74c0.md) | 193 | `result-track:7dd778fe7a0d9d80157e74c0d124ed6d64c24cb5553ef07e95f04b458b488e79` |
| 21 | `theorem` | [closure_coe_iSup_map_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/closure-coe-isup-map-single--07ed04cd914ae2fad693a945.md) | 211 | `result-track:07ed04cd914ae2fad693a9451f9da4ee70fbfc82eb001a51f38115fd1abc51d9` |
| 22 | `theorem` | [topologicalClosure_iSup_map_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/topologicalclosure-isup-map-single--b3a9e6cd38447cbfb355c848.md) | 235 | `result-track:b3a9e6cd38447cbfb355c848801b80a882152c3104bd1382fbe7928ccb3cdfff` |
| 23 | `theorem` | [LinearMap.continuous_on_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/linearmap-continuous-on-pi--67c610958baa6ba02aaf62e5.md) | 245 | `result-track:67c610958baa6ba02aaf62e58d249922fe65c5d573805948c7d50730a273069c` |
| 24 | `def` | [linearMapOfMemClosureRangeCoe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/linearmapofmemclosurerangecoe--d4acd2a7637138e19eed9273.md) | 271 | `declaration-track:d4acd2a7637138e19eed92730b5f4e675ed8956358f777cc2a848bc7ba6ef04d` |
| 25 | `def` | [linearMapOfTendsto](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/linearmapoftendsto--eac20aaff84f7cccb9056e26.md) | 279 | `declaration-track:eac20aaff84f7cccb9056e26e7468d4b8ac13bfea766136dd839b50d9d1c97b4` |
| 26 | `theorem` | [LinearMap.isClosed_range_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/linearmap-isclosed-range-coe--6b0f908e5dcba141da9d5735.md) | 286 | `result-track:6b0f908e5dcba141da9d573512a5a7f56116f5d6e96189930ebc84c0c014dbc4` |
| 27 | `instance` | [_root_.QuotientModule.Quotient.topologicalSpace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/root-quotientmodule-quotient-topologicalspace--aacc1d3f8e2f5640c6cc77f1.md) | 298 | `declaration-track:aacc1d3f8e2f5640c6cc77f15acfe699cc7b2a4e66cf9cd34b29ac1bfd05e45f` |
| 28 | `theorem` | [isOpenMap_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/isopenmap-mkq--71dd2e83ef7e33aa42e0d038.md) | 301 | `result-track:71dd2e83ef7e33aa42e0d0381840c8501735a8a9909a2edbb8f432c192ac110a` |
| 29 | `theorem` | [isOpenQuotientMap_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/isopenquotientmap-mkq--e70507435d213506597c5736.md) | 304 | `result-track:e70507435d213506597c57361ff3c7fbaabf4cf79ddfbaf37b141f510918b292` |
| 30 | `instance` | [topologicalAddGroup_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/topologicaladdgroup-quotient--db71f732c501ea4be1df1ff3.md) | 307 | `declaration-track:db71f732c501ea4be1df1ff375526af7154a78b3279e69cf03d884357ab31815` |
| 31 | `instance` | [continuousSMul_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/continuoussmul-quotient--8a5ad840d0fb26a7e7e548e8.md) | 310 | `declaration-track:8a5ad840d0fb26a7e7e548e8eab61ed7e3ba0652ad2bcf59ee2374fba4417068` |
| 32 | `instance` | [t3_quotient_of_isClosed](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb44e803fe2373affc9b5d499cfc3da1b91b04f458791e7b363b30d921d08e9bc.lean/declarations/t3-quotient-of-isclosed--5931e9bc94c81d7e401c3592.md) | 316 | `declaration-track:5931e9bc94c81d7e401c35920c57ae6b4bea5dce7eee816c676eb647e6813a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
