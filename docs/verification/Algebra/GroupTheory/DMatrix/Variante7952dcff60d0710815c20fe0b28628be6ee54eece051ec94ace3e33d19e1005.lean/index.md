# Verification target: GRWTSK.Algebra.GroupTheory.DMatrix.Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "405bba0ceb7355f71ec7e8a6156cdf6b405f7d1a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `405bba0ceb7355f71ec7e8a6156cdf6b405f7d1a`.

Source path: `GRWTSK/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DMatrix](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/dmatrix--39d73c629c4072127248c33d.md) | 29 | `declaration-track:39d73c629c4072127248c33d38b28b7b6e93531648dddd0daf8e8a1003c55fa7` |
| 2 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/ext-iff--bcca105b74dc11656a09ee69.md) | 41 | `result-track:bcca105b74dc11656a09ee697eaf6434cbc6e69c666cc17b79388498c7291a8a` |
| 3 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/ext--8ad142f04e21029df33da5fb.md) | 45 | `result-track:8ad142f04e21029df33da5fbe8e0f3a59d5b5b5bbbf0775ac818e92957bd3f40` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/map--c631491bb8dba7763b8db084.md) | 51 | `declaration-track:c631491bb8dba7763b8db084dad3f9fb80db207acd7d0bd1489baa4d5348cc14` |
| 5 | `theorem` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/map-apply--1dcc562e19a66c9c10dedea3.md) | 55 | `result-track:1dcc562e19a66c9c10dedea31a1364ac3318390555729917b958d33ac3405588` |
| 6 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/map-map--ad271fb9dd1002fc5cc342e8.md) | 59 | `result-track:ad271fb9dd1002fc5cc342e8a04c87287da02f99d2b56313b426ab6e54abc30f` |
| 7 | `def` | [transpose](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/transpose--bb67286108d850905971186c.md) | 64 | `declaration-track:bb67286108d850905971186cfefae27f520fcd74450257a164ef5c2189e480fe` |
| 8 | `def` | [col](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/col--274dbed4308485a759ac1c5a.md) | 71 | `declaration-track:274dbed4308485a759ac1c5a6d60d342ae7d1c2f03b0df0f245092656e0d1d07` |
| 9 | `def` | [row](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/row--5490a61db06db64457606b9f.md) | 75 | `declaration-track:5490a61db06db64457606b9f52097cec727957224b48f5818f01ddcb5cd1711d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--d9ccf3985265a0def472aed7.md) | 78 | `declaration-track:d9ccf3985265a0def472aed72d7b96e223391f1368817b3d84564e543cc15f71` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--cdb4041ae7d4038abc809b2e.md) | 81 | `declaration-track:cdb4041ae7d4038abc809b2e819ed225747aa16bdb00a7c36768ec88b8a6bb78` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--309863517e1701f7af71204a.md) | 84 | `declaration-track:309863517e1701f7af71204a922e10cbbeb43fc091bf35d3578129198f48ffc3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--4f6293436971f7ffab5ff0c2.md) | 87 | `declaration-track:4f6293436971f7ffab5ff0c27e363348d068a9ec4b513ae16769d0a90ff5886a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--4fd4b13173afb46ad0106865.md) | 90 | `declaration-track:4fd4b13173afb46ad01068654259791162941e45de2c754cb5139506bca23f96` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--44459b895b9532af81effd21.md) | 93 | `declaration-track:44459b895b9532af81effd218db1fec99fa43595ac9a3b78eca14ad7d66d2a96` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--154d7386ef13c635b672da0a.md) | 96 | `declaration-track:154d7386ef13c635b672da0a57f24d84eb88eacfaa1e573450887cf6f9234932` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--8c92eb5076b416a44d13d275.md) | 99 | `declaration-track:8c92eb5076b416a44d13d2754b55d887dbe3c2a71f9c797e9773785bda3d0419` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--cd50f32ed1c29aa916afcf12.md) | 102 | `declaration-track:cd50f32ed1c29aa916afcf12f42e67d042a963121a2958f068894b6becb0fb61` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--0569574d4975deb77819174e.md) | 105 | `declaration-track:0569574d4975deb77819174e0f25b3c01707502e768d8d5c296f97079ff7fb9d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--dc140bc5866009989a148baa.md) | 108 | `declaration-track:dc140bc5866009989a148baa996475f5c709dca3b1fe313eb8aff2a24f60c1b6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--f94d46c1ec8431418ab86cf8.md) | 111 | `declaration-track:f94d46c1ec8431418ab86cf815c765bcf1dbfea974a41524960ffee378b7eefa` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/instance--859768d42472d158efd8b682.md) | 114 | `declaration-track:859768d42472d158efd8b682b9403d2eaf82948b481b18962afa7eaaa6d83acd` |
| 23 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/zero-apply--13f454097bb018e96d51afd0.md) | 118 | `result-track:13f454097bb018e96d51afd0561d935e255e13f61c593d29baa0ccf9eeaa16e9` |
| 24 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/neg-apply--835cd170deafd9221a88d44e.md) | 121 | `result-track:835cd170deafd9221a88d44e592f52ed4704cb85888b8c61f5f29b1f6b400bf7` |
| 25 | `theorem` | [add_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/add-apply--001d4e5265234d9fd5d1cf2c.md) | 124 | `result-track:001d4e5265234d9fd5d1cf2ce4413e51dd4a0250599d9b229f69097f714c576f` |
| 26 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/sub-apply--bdac0ef3694e13d424f64c87.md) | 128 | `result-track:bdac0ef3694e13d424f64c872ead92093a82de582e973ccab8bda571c5834070` |
| 27 | `theorem` | [map_zero](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/map-zero--1eb1b59853aa2b87d4ff3a6f.md) | 132 | `result-track:1eb1b59853aa2b87d4ff3a6f9661f32e8354692267026b85d267528d6c2f5c81` |
| 28 | `theorem` | [map_add](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/map-add--e9ff111972d6eaca5ee204db.md) | 136 | `result-track:e9ff111972d6eaca5ee204dbeac413e64e4bc159d5591c2e001ffe8a0c381213` |
| 29 | `theorem` | [map_sub](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/map-sub--9553549dad3f44ad9c10132e.md) | 141 | `result-track:9553549dad3f44ad9c10132ee4f276c4e67906037d563f44e6618f52aaa4b9d6` |
| 30 | `instance` | [subsingleton_of_empty_left](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/subsingleton-of-empty-left--ae5e65fe1ea413f7cb3ccee7.md) | 146 | `declaration-track:ae5e65fe1ea413f7cb3ccee70d2634e36378afbdc4b23ee9a87bdb8361aa2828` |
| 31 | `instance` | [subsingleton_of_empty_right](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/subsingleton-of-empty-right--bd49dad7ba5b4ba838ae3cf3.md) | 151 | `declaration-track:bd49dad7ba5b4ba838ae3cf3c416942fe58154da02e4ceedb9da3b0636db7418` |
| 32 | `def` | [AddMonoidHom.mapDMatrix](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/addmonoidhom-mapdmatrix--eb837ed320013134ad020994.md) | 158 | `declaration-track:eb837ed320013134ad02099424b171a61c6184bf83276b8bdccfc2890eea17dd` |
| 33 | `theorem` | [AddMonoidHom.mapDMatrix_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variante7952dcff60d0710815c20fe0b28628be6ee54eece051ec94ace3e33d19e1005.lean/declarations/addmonoidhom-mapdmatrix-apply--721e83858ddaba1154106057.md) | 165 | `result-track:721e83858ddaba1154106057153501022c867b239470479f7cf5534176cd66c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
