# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "840c732f872924036685c0803353fa0470b06271",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `840c732f872924036685c0803353fa0470b06271`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness`](../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Flatten` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SignedSide](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/signedside--3b21a2bf6ebe081d65690649.md) | 50 | `declaration-track:3b21a2bf6ebe081d65690649325f54167d63ce9b9e5110e65911d0203c6847f3` |
| 2 | `def` | [signedSideValue](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/signedsidevalue--93ce9252375cf6426978c23b.md) | 53 | `declaration-track:93ce9252375cf6426978c23b827559b726eb1153354962ff85aee46650783cca` |
| 3 | `def` | [polygonBoundaryEval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/polygonboundaryeval--19e4cd4123d22b7ffb7f9d76.md) | 58 | `declaration-track:19e4cd4123d22b7ffb7f9d768849923d456ee0713e7fc962f8d9d9315fc89a5d` |
| 4 | `def` | [handleBlock](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/handleblock--2608a6bcdc7c0dddec22fcaf.md) | 63 | `declaration-track:2608a6bcdc7c0dddec22fcafcf76dd759c373f3c49f46ac9004ae95b50b92cce` |
| 5 | `theorem` | [handleBlock_length](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/handleblock-length--8eff8c6e39f010863a78be81.md) | 67 | `result-track:8eff8c6e39f010863a78be8100bc446fbd2f8cb4b4d862fe5ac8b3d52799ac38` |
| 6 | `theorem` | [handleBlock_eval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/handleblock-eval--2683f4d98867ca8c11d2a909.md) | 71 | `result-track:2683f4d98867ca8c11d2a90926962e05299d5cdf097af40ba20a94848a9e9467` |
| 7 | `theorem` | [polygonBoundaryEval_append](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/polygonboundaryeval-append--a606fc6445fb92f67ea5d901.md) | 78 | `result-track:a606fc6445fb92f67ea5d9010529ba9232a9582814e2f8bb603aac8deeec31f1` |
| 8 | `theorem` | [polygonBoundaryEval_flatten](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/polygonboundaryeval-flatten--244fd3b0f6fbe239063a9f78.md) | 86 | `result-track:244fd3b0f6fbe239063a9f782faf379d631bfd4ba9c45a506f73e52784f517b1` |
| 9 | `def` | [firstTwoBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/firsttwoboundary--5496755e0a46c794addfe4f0.md) | 98 | `declaration-track:5496755e0a46c794addfe4f05f51e2858b51bd6b9019226f3b1a791ddde8efdc` |
| 10 | `def` | [extraHandleBlocks](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/extrahandleblocks--bd555b54e834d53831688497.md) | 103 | `declaration-track:bd555b54e834d5383168849708f70865425f6c8234435369420c4f9335e38ca8` |
| 11 | `def` | [extraBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/extraboundary--52814a44b81ad67148ba145c.md) | 108 | `declaration-track:52814a44b81ad67148ba145c912e6aba2ed42e83abb2560a53ecfe461ce8d5cb` |
| 12 | `def` | [polygonBoundaryWord](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/polygonboundaryword--5b1ff5da87d5aab428b9b7dd.md) | 112 | `declaration-track:5b1ff5da87d5aab428b9b7dd216605fd0a25c6344e1ef7650d9e6f8d09312b4c` |
| 13 | `theorem` | [firstTwoBoundary_eval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/firsttwoboundary-eval--7220882f6e416ef12808dbed.md) | 117 | `result-track:7220882f6e416ef12808dbed6fd48c9c14834c388a462d5f52aff7babae01312` |
| 14 | `theorem` | [extraHandleBlocks_eval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/extrahandleblocks-eval--6e0c8cebf308a863f6b3c137.md) | 126 | `result-track:6e0c8cebf308a863f6b3c137a91a79363e5114812196ca625c509b14dad5a359` |
| 15 | `theorem` | [extraBoundary_eval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/extraboundary-eval--78f579c6efd87145c8c0a544.md) | 134 | `result-track:78f579c6efd87145c8c0a544866320a9865e1b0ff343f725b1275c5bb03f1fc7` |
| 16 | `theorem` | [polygonBoundaryWord_eval_eq_relator](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/polygonboundaryword-eval-eq-relator--16fde65bb0c8aa7814e8804b.md) | 146 | `result-track:16fde65bb0c8aa7814e8804bf23027a1c360a4b7f758325238693a1ae6ce8b98` |
| 17 | `theorem` | [extraHandleBlocks_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/extrahandleblocks-zero--5bb7f53396a6674097349dd8.md) | 155 | `result-track:5bb7f53396a6674097349dd8ee9ef8b72bd8a912374a2c46045fab10afb34e4a` |
| 18 | `theorem` | [firstTwoBoundary_length](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/firsttwoboundary-length--dd7e8999e5e8b2ddf57cf9f9.md) | 160 | `result-track:dd7e8999e5e8b2ddf57cf9f9271a3d8b1eaa98bf32bac35469dac29b05a77ef3` |
| 19 | `theorem` | [genus_two_boundary_eval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/genus-two-boundary-eval--584b7fa1a5d182fc7a7a2ead.md) | 166 | `result-track:584b7fa1a5d182fc7a7a2eadb48f9099971884ed5ad5420f64a0709018ba8c0f` |
| 20 | `theorem` | [genus_three_boundary_eval](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/genus-three-boundary-eval--8e1025fa6ca47cd37fd7e56e.md) | 172 | `result-track:8e1025fa6ca47cd37fd7e56eab30dac2a7f5cb0afd9545155c7191e1ef1028ac` |
| 21 | `structure` | [MarkedFundamentalGroupAdapter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter--b54d40406ff57d630ee274e6.md) | 183 | `declaration-track:b54d40406ff57d630ee274e6d3e6681e0fabd9ae5051e348f83fcf3f89fdd763` |
| 22 | `theorem` | [MarkedFundamentalGroupAdapter.loop_eq_commutator](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter-loop-eq-commutator--08d8e6cb99f3edaef718c8f8.md) | 196 | `result-track:08d8e6cb99f3edaef718c8f86682f1bc0552ae164d3900ca139498ed40690811` |
| 23 | `theorem` | [MarkedFundamentalGroupAdapter.loop_primitive](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter-loop-primitive--a8cfa6c1b27ec6cde8fb4f67.md) | 220 | `result-track:a8cfa6c1b27ec6cde8fb4f67d6b49c7bc8d5dff0dd8bea6c7d4e10dd53696b07` |
| 24 | `theorem` | [MarkedFundamentalGroupAdapter.loop_abelianization_eq_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter-loop-abelianization-eq-one--eff274fb53243a2e7c4bccec.md) | 234 | `result-track:eff274fb53243a2e7c4bccec3034512f4084391b0f3995e21ea194b422b6c9ed` |
| 25 | `def` | [MarkedFundamentalGroupAdapter.toHomologyInvisibleWitness](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter-tohomologyinvisiblewitness--528d48619604be055cce5cf1.md) | 244 | `declaration-track:528d48619604be055cce5cf136018846df57ebb34102023691f1bf56320bfc79` |
| 26 | `theorem` | [MarkedFundamentalGroupAdapter.loop_integerCharacter_eq_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter-loop-integercharacter-eq-zero--cfda7bec99ff61c18e94f584.md) | 256 | `result-track:cfda7bec99ff61c18e94f584d833dd6b74a04ff7f8812df66e7dfce816190e2f` |
| 27 | `theorem` | [MarkedFundamentalGroupAdapter.loop_primitive_and_invisible](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/declarations/markedfundamentalgroupadapter-loop-primitive-and-invisible--971faee66e0864484421dc33.md) | 273 | `result-track:971faee66e0864484421dc33b7f2d19e2547fcdc61f59bff6a2e9d956bc8c077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
