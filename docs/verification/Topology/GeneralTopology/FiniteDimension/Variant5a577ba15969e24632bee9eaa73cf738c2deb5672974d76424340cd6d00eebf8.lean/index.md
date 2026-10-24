# Verification target: GRWTSK.Topology.GeneralTopology.FiniteDimension.Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0fa5769890846ab75be134d74e8f4cee8dbf8f9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0fa5769890846ab75be134d74e8f4cee8dbf8f9`.

Source path: `GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Support` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smooth_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/exists-smooth-tsupport-subset--6b2f2fffd9deac15dad48357.md) | 41 | `result-track:6b2f2fffd9deac15dad48357f15fbbdea49c943ce36754b99546f15b8427d20e` |
| 2 | `theorem` | [IsOpen.exists_smooth_support_eq](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/isopen-exists-smooth-support-eq--a901ca4e85b7d7027dfd2509.md) | 75 | `result-track:a901ca4e85b7d7027dfd25097c1ef60ec1946f1186bad90c8c185ed2969d6784` |
| 3 | `def` | [φ](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/anonymous--4eccf76237a6444959a67a5f.md) | 199 | `declaration-track:4eccf76237a6444959a67a5f60f4c580aa9c0af71c841608361d4b152ed01dad` |
| 4 | `theorem` | [u_exists](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-exists--9f6ce0c109a775b7fd342822.md) | 208 | `result-track:9f6ce0c109a775b7fd3428222fcef51fc81de30b8b59fada7533e5510900b751` |
| 5 | `def` | [u](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u--92bfcb24382306eee6759591.md) | 240 | `declaration-track:92bfcb24382306eee675959188d8a9ad8ec8af7cbb52db16b2146bf836d582ba` |
| 6 | `theorem` | [u_smooth](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-smooth--5bcd64ebe8e0ce8f749c35ef.md) | 243 | `result-track:5bcd64ebe8e0ce8f749c35ef8f63eaea0099aebbd3d7a4bd13c32638fc7d639f` |
| 7 | `theorem` | [u_continuous](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-continuous--e41131ac1fe463c8c4078f0b.md) | 246 | `result-track:e41131ac1fe463c8c4078f0b543b6747350605e134f1ef394cdedf18a15a7af4` |
| 8 | `theorem` | [u_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-support--c4c8d7000a88f3c745b0f615.md) | 249 | `result-track:c4c8d7000a88f3c745b0f615710562cd36d33e98fde8514440d986e710401a97` |
| 9 | `theorem` | [u_compact_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-compact-support--178a9e26b4f92eae5f84f478.md) | 252 | `result-track:178a9e26b4f92eae5f84f47823d6c01fe6b6646b0e237cc5534e3358346acec4` |
| 10 | `theorem` | [u_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-nonneg--0203cc7252531e589c195f87.md) | 258 | `result-track:0203cc7252531e589c195f87a1abdf8d22207da719c952c64fec73eb0272ead8` |
| 11 | `theorem` | [u_le_one](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-le-one--68ff54a97e41c591f959ab07.md) | 261 | `result-track:68ff54a97e41c591f959ab07ce36e7b1af36a1a5d80e7d22ea31732fe49dc12d` |
| 12 | `theorem` | [u_neg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-neg--6719aeb391023220dd8f2186.md) | 264 | `result-track:6719aeb391023220dd8f218639a7de1a52ad4288ae1898f7591037ecbc4cd20f` |
| 13 | `theorem` | [u_int_pos](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/u-int-pos--ed8f9a3dc908fea3a10ee970.md) | 272 | `result-track:ed8f9a3dc908fea3a10ee97031640e4b1d143ed1313fb72e45b0048c65db2306` |
| 14 | `def` | [w](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w--99406304667c844128f5bbc6.md) | 279 | `declaration-track:99406304667c844128f5bbc645287effa04c401ca47c91368bb31bbe71b5921c` |
| 15 | `theorem` | [w_def](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w-def--0c4cd85a4efa53e4110d2f30.md) | 282 | `result-track:0c4cd85a4efa53e4110d2f30b0e8d9e63a0c160cb8009162bc3704fcf3c5626d` |
| 16 | `theorem` | [w_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w-nonneg--576afc75e04eb61116bfc472.md) | 286 | `result-track:576afc75e04eb61116bfc4727c774d0ca0f50566a73b91a5488400fe2faf8868` |
| 17 | `theorem` | [w_mul_φ_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w-mul-nonneg--07177a3b66843a3273310074.md) | 293 | `result-track:07177a3b66843a32733100744475a803bf473f30674d677b0517242ebd55ca9a` |
| 18 | `theorem` | [w_integral](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w-integral--2c178d3da8d3c6d679aee30f.md) | 298 | `result-track:2c178d3da8d3c6d679aee30fbe3b543c662ec0f5dbd7de08ff0aada62fd38aa1` |
| 19 | `theorem` | [w_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w-support--ca737f2b42566432e622c516.md) | 303 | `result-track:ca737f2b42566432e622c516e248859e0ef727dadee38fc51ff05130d9ea8f16` |
| 20 | `theorem` | [w_compact_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/w-compact-support--441587984d7f5e34fa7a4e73.md) | 313 | `result-track:441587984d7f5e34fa7a4e730012b0471706a0929c8d62e8b4565da5ac72a64c` |
| 21 | `def` | [y](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y--0eb2c32a4770f893292faab1.md) | 323 | `declaration-track:0eb2c32a4770f893292faab167c2d4be142eb70da3ef61c7be19af69e679666f` |
| 22 | `theorem` | [y_neg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-neg--53fbe4e62c78a51ff7034d68.md) | 326 | `result-track:53fbe4e62c78a51ff7034d680f39a8a00da79b809a77acef55176aa025523409` |
| 23 | `theorem` | [y_eq_one_of_mem_closedBall](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-eq-one-of-mem-closedball--e182cbc38a5d9c6b7b5b2a93.md) | 333 | `result-track:e182cbc38a5d9c6b7b5b2a93f9bdf0b124e6a79ccc7e9b216747307706daa4b6` |
| 24 | `theorem` | [y_eq_zero_of_notMem_ball](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-eq-zero-of-notmem-ball--1e084d9bbc0d0c1a7a505239.md) | 351 | `result-track:1e084d9bbc0d0c1a7a505239eaab5017e73fbe0a6fb3c1a05f3a7721b3df7507` |
| 25 | `theorem` | [y_nonneg](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-nonneg--8e620e3569f66f61e9f0eb43.md) | 370 | `result-track:8e620e3569f66f61e9f0eb4357cf2d14f92c00cd0e747259b7675524e79aeb9c` |
| 26 | `theorem` | [y_le_one](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-le-one--1a73c7c452c4dd6b6a79df74.md) | 373 | `result-track:1a73c7c452c4dd6b6a79df742d4c0484104ab40acd2a61b0a02051401c54ccc8` |
| 27 | `theorem` | [y_pos_of_mem_ball](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-pos-of-mem-ball--20e15236e1913e5853664d18.md) | 386 | `result-track:20e15236e1913e5853664d188a3bb4ea3849c1805074c69d3417fcd988b08166` |
| 28 | `theorem` | [y_smooth](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-smooth--f9b557b077615e0ff842d139.md) | 428 | `result-track:f9b557b077615e0ff842d139dbfadc1e7aca9b4b3619bada6fa9d84806232ff1` |
| 29 | `theorem` | [y_support](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/y-support--55436daf39a06da0e24a6464.md) | 455 | `result-track:55436daf39a06da0e24a64640b50154965d432676124eb355ae6a9df2bba74d8` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/declarations/instance--2c9cd3fbfa86c44ed76aea8a.md) | 465 | `declaration-track:2c9cd3fbfa86c44ed76aea8af9202dba1e355a01cc7dbce996dc50734622ae9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
