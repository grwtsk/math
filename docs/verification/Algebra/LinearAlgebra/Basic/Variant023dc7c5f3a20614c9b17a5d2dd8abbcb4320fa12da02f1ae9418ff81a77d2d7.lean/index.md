# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b59e3434f11978cd74b6cabee0b3b5b837825764",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b59e3434f11978cd74b6cabee0b3b5b837825764`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Yoneda` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/tensorobj--bcbd47f30ff3b6f469923f37.md) | 62 | `declaration-track:bcbd47f30ff3b6f469923f379983f5bc3702b836853296c26f81df3d0e20086b` |
| 2 | `def` | [tensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/tensorhom--145326d320e9824669b8590a.md) | 67 | `declaration-track:145326d320e9824669b8590afa133493da7c396a4c7421245ea4dd4decd7831d` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/whiskerleft--5864f38e0bbbe50ade7fc2eb.md) | 73 | `declaration-track:5864f38e0bbbe50ade7fc2eb401c25546e9de54b5bbc3bdd394f8af693263755` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/whiskerright--c28041b0b7e04b14dce35073.md) | 78 | `declaration-track:c28041b0b7e04b14dce3507380ecd9d06e236a7f663523d6f875c805701d1cf5` |
| 5 | `theorem` | [tensor_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/tensor-id--0ff3a26a300ceff4976391e2.md) | 82 | `result-track:0ff3a26a300ceff4976391e2efb6c4658142568629419865d7ea67406933cddd` |
| 6 | `theorem` | [tensor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/tensor-comp--23753407c2ca06a6223c198f.md) | 88 | `result-track:23753407c2ca06a6223c198f99e2be2f3f18583226cc388b55361fb49e7f2026` |
| 7 | `def` | [associator](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/associator--a10fbac4cd334e0146904d93.md) | 96 | `declaration-track:a10fbac4cd334e0146904d93384189b784c1b7846c76bd8dec4bbf7acf8ecacf` |
| 8 | `theorem` | [associator_naturality_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/associator-naturality-aux--f6ffd713637076fec31137fa.md) | 111 | `result-track:f6ffd713637076fec31137fa786f8f46f7c42cde9770168a6a11b57b704709a4` |
| 9 | `theorem` | [pentagon_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/pentagon-aux--7302ffa865df83e0f768da91.md) | 124 | `result-track:7302ffa865df83e0f768da91464eb6365aec34c56d4950133d909ade2e2b3af1` |
| 10 | `theorem` | [associator_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/associator-naturality--3c40244b47dc786fa1207fea.md) | 138 | `result-track:3c40244b47dc786fa1207fead7d6e74f4a467e3b9bfe9fda075c76ec4f53d8cb` |
| 11 | `theorem` | [pentagon](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/pentagon--2e5e93ea5788a303963a1bd8.md) | 147 | `result-track:2e5e93ea5788a303963a1bd80a6c54706d820c716d9e90d128dee3e074472da9` |
| 12 | `def` | [leftUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/leftunitor--969f6a3747daf664e1f47057.md) | 155 | `declaration-track:969f6a3747daf664e1f47057610420ac79d6b9f7a617f11b44416c26bb54ccee` |
| 13 | `theorem` | [leftUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/leftunitor-naturality--5df912e32dace528e2e461af.md) | 159 | `result-track:5df912e32dace528e2e461af87eccbf3d4af9e93b1ef6c7ce2eb115d7171c3d3` |
| 14 | `def` | [rightUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/rightunitor--8d5ff8fdc9812ffa766d8507.md) | 174 | `declaration-track:8d5ff8fdc9812ffa766d85072f14b219d4a3c2ce80cb63932fd56c7a5fe92691` |
| 15 | `theorem` | [rightUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/rightunitor-naturality--ab706f09e845ff359264d5f3.md) | 178 | `result-track:ab706f09e845ff359264d5f329806388aaa420724c4c68b3a00788dc90d1b907` |
| 16 | `theorem` | [triangle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/triangle--b12bd2bc63944857ba70e766.md) | 192 | `result-track:b12bd2bc63944857ba70e7660948664e280032fb1dec868609bb4e7fb822335f` |
| 17 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/monoidalcategory--06a5e840796d6c276095891a.md) | 208 | `declaration-track:06a5e840796d6c276095891a8b2c9dd9a5c9f6e75041eeddefeb08c373a5c9a2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/instance--5437137a62254e3df9ada4f7.md) | 229 | `declaration-track:5437137a62254e3df9ada4f7160b94c3e88f7d14ef80606a735ddcc5b869aac9` |
| 19 | `theorem` | [hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/hom-apply--739cde102b6865ccc0e7365c.md) | 235 | `result-track:739cde102b6865ccc0e7365c0feee8e0f0a4ea3efe5aeffc0d5cc2be07809eb9` |
| 20 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/leftunitor-hom-apply--fc445f1769990b5ab758ca3b.md) | 241 | `result-track:fc445f1769990b5ab758ca3b2cd46a5438fedf2130b0b64ed6d938e54b3efd2e` |
| 21 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/leftunitor-inv-apply--28b064556ff530e7f1863c80.md) | 247 | `result-track:28b064556ff530e7f1863c80f65b0e52466f92b790035ad67c6870848c6b528b` |
| 22 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/rightunitor-hom-apply--695b230f5a748885737cbc11.md) | 253 | `result-track:695b230f5a748885737cbc11d62a0cf23fe7d8fad240a838bbd82bcfa62491aa` |
| 23 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/rightunitor-inv-apply--056b6dfe2fea91bf02b34c69.md) | 259 | `result-track:056b6dfe2fea91bf02b34c69e6c99f92d87c48362d7fea737aa3cf2a12d619b2` |
| 24 | `theorem` | [associator_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/associator-hom-apply--3f8b4ace819b973de7381bdc.md) | 265 | `result-track:3f8b4ace819b973de7381bdcec84b19a9abf797f6de93c0f2df445421ec2fa94` |
| 25 | `theorem` | [associator_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/associator-inv-apply--fca2d0aec8d5697182543451.md) | 271 | `result-track:fca2d0aec8d5697182543451a4d1b02e1b04b5be12582787c7ed6d6d8ddbe6a1` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/instance--6135d32dbc42e309006dae48.md) | 281 | `declaration-track:6135d32dbc42e309006dae48ca02f53f7958c7e17b95be3c7357056d6ca4a150` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant023dc7c5f3a20614c9b17a5d2dd8abbcb4320fa12da02f1ae9418ff81a77d2d7.lean/declarations/instance--6d8c6f2121d5643a00f281cb.md) | 307 | `declaration-track:6d8c6f2121d5643a00f281cb493c1cfadcb167feae6ca4ae2fd3777ebfbaaa46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
