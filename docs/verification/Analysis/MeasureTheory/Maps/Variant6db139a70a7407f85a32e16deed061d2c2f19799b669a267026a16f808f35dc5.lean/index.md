# Verification target: GRWTSK.Analysis.MeasureTheory.Maps.Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a40e8112e60f7ba99271101b0a559343e64a9544",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a40e8112e60f7ba99271101b0a559343e64a9544`.

Source path: `GRWTSK/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Restriction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IocProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iocprodioc--a229b227d3432f9179465112.md) | 23 | `declaration-track:a229b227d3432f9179465112a9e7d8006207383da52afea3506381c68a5cd865` |
| 2 | `lemma` | [measurable_IocProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/measurable-iocprodioc--a8bfabefff5137f5593a46da.md) | 29 | `result-track:a8bfabefff5137f5593a46da3d0c12c18746c78c8da1d275cc24a817efc82440` |
| 3 | `def` | [IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioc--bdc7a6a152167a3aaa8adfcb.md) | 40 | `declaration-track:bdc7a6a152167a3aaa8adfcb32511f769035d77edd88a23dda2960c5ebaf4e1c` |
| 4 | `lemma` | [IicProdIoc_def](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioc-def--9c22401ca3c5dda967975bb1.md) | 48 | `result-track:9c22401ca3c5dda967975bb1a53326e1999dd7532daf5d7bb70b726c9b26ac9a` |
| 5 | `lemma` | [frestrictLe₂_comp_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/frestrictle-comp-iicprodioc--55494cab3985f1b36d591a7c.md) | 52 | `result-track:55494cab3985f1b36d591a7c5873cdc8c682377f63b84df576c0533b43064a5b` |
| 6 | `lemma` | [restrict₂_comp_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/restrict-comp-iicprodioc--6a5d75a1742809c5af5e58b3.md) | 57 | `result-track:6a5d75a1742809c5af5e58b3d05d2c44d3b1a454cd633c1c9b86b53d75dd78dc` |
| 7 | `lemma` | [IicProdIoc_self](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioc-self--215b0d4bf13539d1c44fa7cf.md) | 63 | `result-track:215b0d4bf13539d1c44fa7cf09343f7fb0c509993f1a30d39ad2acde9367850e` |
| 8 | `lemma` | [IicProdIoc_le](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioc-le--4806e97b87d46b3feff1c191.md) | 67 | `result-track:4806e97b87d46b3feff1c1912cf4ef122b2fee7a64bf4456d0b269d37b191679` |
| 9 | `lemma` | [IicProdIoc_comp_restrict₂](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioc-comp-restrict--6d268c768ed59987a10bd4d1.md) | 72 | `result-track:6d268c768ed59987a10bd4d1286b2e36218b47040562eb1380736d1f25147d88` |
| 10 | `lemma` | [measurable_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/measurable-iicprodioc--9992ef9fa9444321f207aa2f.md) | 80 | `result-track:9992ef9fa9444321f207aa2fc1a436cfcef63e3600099316e660e690104044da` |
| 11 | `def` | [IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioc--48c367b35584d8f8408e11d5.md) | 90 | `declaration-track:48c367b35584d8f8408e11d5da32647b81c8d26acdc0ae7f999701bb2bd0691f` |
| 12 | `lemma` | [coe_IicProdIoc](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/coe-iicprodioc--11d650475e4c643657cf91c3.md) | 108 | `result-track:11d650475e4c643657cf91c33208abf119fec6c7214fc16c0ef259b5a7f835b3` |
| 13 | `lemma` | [coe_IicProdIoc_symm](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/coe-iicprodioc-symm--3a65f60dc5b2121f780a087e.md) | 111 | `result-track:3a65f60dc5b2121f780a087e81ee9bb788aa9dce8a2204e01a92f033c2f4b26c` |
| 14 | `def` | [IicProdIoi](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/iicprodioi--b2049f3712023cb65f863131.md) | 117 | `declaration-track:b2049f3712023cb65f8631310c744464b87316db977332db338d3a6e89a10e3b` |
| 15 | `def` | [MeasurableEquiv.piSingleton](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/measurableequiv-pisingleton--699b17d172d2dbb479ae58ff.md) | 144 | `declaration-track:699b17d172d2dbb479ae58ff5871131eaf3141a44d6d2cd15c044c7e12e684b7` |
| 16 | `lemma` | [_root_.IocProdIoc_preimage](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/root-iocprodioc-preimage--092fb28146cd92e8b1d3b22c.md) | 163 | `result-track:092fb28146cd92e8b1d3b22c20295ef4a1ea2bae5ae7ff7d95b1fc4c76f615bc` |
| 17 | `lemma` | [_root_.IicProdIoc_preimage](../../../../../mathematics/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/declarations/root-iicprodioc-preimage--6210343704b905054452fcff.md) | 182 | `result-track:6210343704b905054452fcffeb128a4ae6c496a917ae6ff11e38489226613732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
