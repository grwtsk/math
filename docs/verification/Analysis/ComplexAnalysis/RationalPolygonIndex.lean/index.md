# Verification target: GRWTSK.Analysis.Complex.RationalPolygonIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24758d17af4e5bf83b68bd983ddc16f11a27fa9c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalPolygonIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24758d17af4e5bf83b68bd983ddc16f11a27fa9c`.

Source path: `GRWTSK/Analysis/Complex/RationalPolygonIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalPolygonIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.PolygonLogCharts`](../../../../mathematics/Analysis/ComplexAnalysis/PolygonLogCharts.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.PolygonFreeHomotopy`](../../../../mathematics/Analysis/ComplexAnalysis/PolygonFreeHomotopy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Data.List.GetD` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertex](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/vertex--a96ff84c594c751588a48ce5.md) | 31 | `declaration-track:a96ff84c594c751588a48ce55a74b821ea602f72ca058d915ac55f3a8d726853` |
| 2 | `def` | [leftChart](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/leftchart--46a1406eee62de8c33e8b900.md) | 33 | `declaration-track:46a1406eee62de8c33e8b9003fa2717ee78b53c36a267923e58cb3cf8ad9dcf9` |
| 3 | `def` | [below](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/below--28e18c23bc3b48fe0dd865e8.md) | 35 | `declaration-track:28e18c23bc3b48fe0dd865e81da6fc4c9747395beff4f2564ff39a9562524a2c` |
| 4 | `def` | [increment](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/increment--6d5e7fe3aa04a4f09183b112.md) | 38 | `declaration-track:6d5e7fe3aa04a4f09183b112a87ab60de36f620e31e0347f8fce167e73c8cfc7` |
| 5 | `def` | [EdgeValid](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/edgevalid--ddecd30443000748c840549e.md) | 41 | `declaration-track:ddecd30443000748c840549e4661f3ed11e4247b9976f1eb79b0eb16d0125baf` |
| 6 | `instance` | [edgeDecidable](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/edgedecidable--7e580d61bca5a05fabdff74c.md) | 45 | `declaration-track:7e580d61bca5a05fabdff74cc802f9793348d0ff6710edda877f555ea9be4119` |
| 7 | `def` | [prefix](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/prefix--fe1ace2d19eac862b5f8e3d3.md) | 49 | `declaration-track:fe1ace2d19eac862b5f8e3d314a85048985b85e90ae0074aab14aa82a20aeaa2` |
| 8 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/valid--56d8c79cfc72e662897a604d.md) | 52 | `declaration-track:56d8c79cfc72e662897a604d61fd5cb3be535c63fa760932f59fbca9c8aa8c53` |
| 9 | `instance` | [validDecidable](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/validdecidable--fa11b3fc0ddab84b754be881.md) | 56 | `declaration-track:fa11b3fc0ddab84b754be8817e8a588efa828f0cd360a308b30f7871f08aa8a7` |
| 10 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/check--5ae60586cb335fd9b4b316c5.md) | 60 | `declaration-track:5ae60586cb335fd9b4b316c59c36006b6ab6bfad37ef2b85d167bc67846da1bc` |
| 11 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/evaluate--5be454a2b86d3c40cec4fa54.md) | 63 | `declaration-track:5be454a2b86d3c40cec4fa541d45a7e40041fa76b5c5606abb7cdd1862c01973` |
| 12 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/check-iff-valid--f8c8add76651a00dcee28a11.md) | 66 | `result-track:f8c8add76651a00dcee28a11ed8671ca7153018a3ae1d1081423bc30a4304af6` |
| 13 | `theorem` | [evaluate_eq_some_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/evaluate-eq-some-iff--cba1a23ad167b19f03823c03.md) | 69 | `result-track:cba1a23ad167b19f03823c03080d1f2c01b28db686e62dbcbffbd694e189f51e` |
| 14 | `theorem` | [prefix_zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/prefix-zero--352db04bbeb16ce12031101e.md) | 73 | `result-track:352db04bbeb16ce12031101ed1ff5c93537ea6ef65b21a7181523b01b9b7a7bf` |
| 15 | `theorem` | [prefix_succ](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/prefix-succ--2b5d3c0d5333076802bc2916.md) | 75 | `result-track:2b5d3c0d5333076802bc2916aff0b5c67c0b8fe1f98d6634a037d3d2d7f26296` |
| 16 | `theorem` | [increment_reverse](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/increment-reverse--fe7af9e85ce6365f2b0565f4.md) | 80 | `result-track:fe7af9e85ce6365f2b0565f4780764d95244e125901250b55793dbadeafd5333` |
| 17 | `def` | [points](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/points--cb7f078938b7cb88cbe76e7e.md) | 87 | `declaration-track:cb7f078938b7cb88cbe76e7efd5cf1b87101590df290902ccc60d6a7e2f98e02` |
| 18 | `def` | [localLog](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/locallog--d6d338a8d07f16dc0b0e5b4b.md) | 89 | `declaration-track:d6d338a8d07f16dc0b0e5b4b1e56ade002a20595df356b4792e3bf1097269e24` |
| 19 | `def` | [branch](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/branch--3fff86f2fcb711bd6387efa4.md) | 92 | `declaration-track:3fff86f2fcb711bd6387efa468e77d454e77ea5424148242b6faad6d591ffc8e` |
| 20 | `theorem` | [leftChart_real](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/leftchart-real--3e9499ebf3768078c7c18cc8.md) | 94 | `result-track:3e9499ebf3768078c7c18cc860247530a880676418d179e7b75da0a51afa8afa` |
| 21 | `theorem` | [below_real](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/below-real--46dc29b43ded23abb0bcb91d.md) | 98 | `result-track:46dc29b43ded23abb0bcb91d625711f8726027d79f44f51d0f931f65e27f4c86` |
| 22 | `theorem` | [principal_of_not_left](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/principal-of-not-left--f782cc43ea6e00af0921cd1d.md) | 101 | `result-track:f782cc43ea6e00af0921cd1ddea73bcd4fcce420f9f692f90af428a549b9c2c3` |
| 23 | `theorem` | [localLog_continuous](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/locallog-continuous--9efe9ee5b1215da8c3b4d754.md) | 110 | `result-track:9efe9ee5b1215da8c3b4d754eb4ee3693a1ae91d04ca8a7cb9fab09db3019916` |
| 24 | `theorem` | [localLog_exp](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/locallog-exp--c5e9bfacdd7a696472dd8a11.md) | 119 | `result-track:c5e9bfacdd7a696472dd8a11939db26cd4a86f7d9655effc0bfc85988123d690` |
| 25 | `theorem` | [edge_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/edge-nonzero--4658cc17504ce4e8f3c80c3d.md) | 133 | `result-track:4658cc17504ce4e8f3c80c3df2c8c648853036d44fa8ea324c7ff10b9ed04790` |
| 26 | `theorem` | [localLog_endpoint](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/locallog-endpoint--2585c6c3d8320539d7500577.md) | 139 | `result-track:2585c6c3d8320539d750057710316a3bb1268442cb43004654ff23b70591dd4a` |
| 27 | `theorem` | [increment_eq_branches](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/increment-eq-branches--07e5182e605ffac9885a707f.md) | 147 | `result-track:07e5182e605ffac9885a707f2a153c513cd689ee0a1b8e11f3e3b7e37fa803f5` |
| 28 | `def` | [liftVertex](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/liftvertex--9d5cb0c4cfc66e316c76218d.md) | 151 | `declaration-track:9d5cb0c4cfc66e316c76218d78a90ed352c6d28629a3dc445da1dc4922e11187` |
| 29 | `def` | [logCell](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/logcell--d876865008b10e2bb18fa895.md) | 155 | `declaration-track:d876865008b10e2bb18fa89513eb9f7b6937367ecad03b1577b74359fd4ab774` |
| 30 | `theorem` | [logCell_exp](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/logcell-exp--2f795f8b335981d32482506c.md) | 171 | `result-track:2f795f8b335981d32482506c6223bf4728f831b4c91242b92ecf16607470e274` |
| 31 | `def` | [finiteLog](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/finitelog--46c90afb46ad85fcde992bec.md) | 183 | `declaration-track:46c90afb46ad85fcde992bec1d1a0b16aca3cf6c3b562ed898b46ef2957d0c06` |
| 32 | `theorem` | [finiteLog_exp](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/finitelog-exp--30abe8d0ce47fc058d7b5476.md) | 189 | `result-track:30abe8d0ce47fc058d7b5476e054e366597122db3b65813ddcd9e7b4dd6d043d` |
| 33 | `theorem` | [finiteLog_jump](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/finitelog-jump--170f7968c689f1b9f53c6f23.md) | 203 | `result-track:170f7968c689f1b9f53c6f23f28e5e6956c9d03d0d570a9340498d76cc3a9703` |
| 34 | `theorem` | [checked_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/checked-nonzero--c4b63f398cb902318d18a434.md) | 210 | `result-track:c4b63f398cb902318d18a4347a14a310b74456d983ce7e2b6540809f8bfaa8a1` |
| 35 | `def` | [checkedLoop](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/checkedloop--17ed7c52a5e131e458e1bf9b.md) | 218 | `declaration-track:17ed7c52a5e131e458e1bf9b44fdfce0be440b07aa2aa4600b1c6332b864f6b9` |
| 36 | `theorem` | [checkedLoop_closed](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/checkedloop-closed--70cd5263ce80ac845ff2d5f6.md) | 222 | `result-track:70cd5263ce80ac845ff2d5f681be9ad215c3143d2aef2e6aa719c64497c68b52` |
| 37 | `theorem` | [winding_eq_prefix](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/winding-eq-prefix--a422d98ed331a2321c3fcf5b.md) | 230 | `result-track:a422d98ed331a2321c3fcf5bcd3712a1dc2d58b4b5db70b1df687679bcf3265f` |
| 38 | `theorem` | [evaluate_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/evaluate-sound--686152a773d1be5fc8e519f9.md) | 241 | `result-track:686152a773d1be5fc8e519f9c8035d8bab7db466d1240ce771571642f91fab13` |
| 39 | `theorem` | [checkedLoop_winding](../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/declarations/checkedloop-winding--edabfbd837343e167d958235.md) | 248 | `result-track:edabfbd837343e167d958235dca7fb04cf0daefefddb350caa623d49e0ab705c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
