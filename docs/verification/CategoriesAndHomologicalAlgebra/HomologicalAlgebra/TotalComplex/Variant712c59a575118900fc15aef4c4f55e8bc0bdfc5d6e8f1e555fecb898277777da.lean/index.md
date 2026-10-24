# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TotalComplex.Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b544cd987c7b0f89088ba4f2c38c71c841488297",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b544cd987c7b0f89088ba4f2c38c71c841488297`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ComplexShapeSigns` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalBicomplex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/hastotal--a8b4df917f92f467a4b4ec72.md) | 41 | `declaration-track:a8b4df917f92f467a4b4ec72762b64ccfea99e7a2ecc8c6ce98b3289456acdd5` |
| 2 | `lemma` | [hasTotal_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/hastotal-of-iso--baccb406f01fb7f68aade20b.md) | 45 | `result-track:baccb406f01fb7f68aade20b050fd307f504b29ca6011cb9c2a7d3a3ef20f75f` |
| 3 | `def` | [d₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d--29702ac5ec44dfac0119f470.md) | 57 | `declaration-track:29702ac5ec44dfac0119f470db42abe3bf904685ce201fde01fbd5167cf63b41` |
| 4 | `def` | [d₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d--2e63de52be2b470540fb0dfc.md) | 63 | `declaration-track:2e63de52be2b470540fb0dfc71ef291e62e8dfea041b6580b8056b5372235aa6` |
| 5 | `lemma` | [d₁_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq-zero--16149c1f847cbd581213c80c.md) | 68 | `result-track:16149c1f847cbd581213c80cbb00b1edbdb339e916fe7fc40122765a6558cb2b` |
| 6 | `lemma` | [d₂_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq-zero--51c10c90fa7917cf1a7cdecc.md) | 73 | `result-track:51c10c90fa7917cf1a7cdecc5fa5bd6bee3bf1bb16619b4bda5c50dafeb4937b` |
| 7 | `lemma` | [d₁_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--86096f24947b36101e4d73f1.md) | 87 | `result-track:86096f24947b36101e4d73f1d2269f8405669c045b7305c2e20ca8a70bc84bf8` |
| 8 | `lemma` | [d₁_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--1b8dd462d3652905136321b1.md) | 93 | `result-track:1b8dd462d3652905136321b1245e4535923180e3bd89c18cbeebfdf3aed028d2` |
| 9 | `lemma` | [d₂_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--ef7bcb951200d4941d7430e9.md) | 99 | `result-track:ef7bcb951200d4941d7430e90f6e533b222dac8c78ec34183b0b9ea2749a82c4` |
| 10 | `lemma` | [d₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--2e3045dc3eaaaa6b205ce53e.md) | 105 | `result-track:2e3045dc3eaaaa6b205ce53e2318d26512f1e534308442fa34ecfd601bcf1b7d` |
| 11 | `lemma` | [d₁_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq-zero--e1e477fb36a2c06e19a6f0f1.md) | 113 | `result-track:e1e477fb36a2c06e19a6f0f10d3636c7de3120a94f3a5cdff717c6b0230dafae` |
| 12 | `lemma` | [d₂_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq-zero--d299a59e7ca5c4925ca9eadb.md) | 119 | `result-track:d299a59e7ca5c4925ca9eadb1d737e88108d8e3d00831a959ff2267b7fc599c7` |
| 13 | `def` | [D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d--91496bdbb21e71772ff3d038.md) | 126 | `declaration-track:91496bdbb21e71772ff3d038afc099253671f5d24e9525d5698129f8bc1e89da` |
| 14 | `def` | [D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d--f7679040056cca870437a294.md) | 133 | `declaration-track:f7679040056cca870437a294725a2fce90a724b0ebf6b6bb281933a3ecf54218` |
| 15 | `lemma` | [ιMapObj_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/mapobj-d--3f381bd963391b78a44f664e.md) | 142 | `result-track:3f381bd963391b78a44f664e01c9bbd1a52234dc247c8812d1257b8be1a37435` |
| 16 | `lemma` | [ιMapObj_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/mapobj-d--539ef206cc2e375142cab67c.md) | 148 | `result-track:539ef206cc2e375142cab67c704631315b2964319c9d6a59f9567310e39a0aad` |
| 17 | `lemma` | [D₁_shape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-shape--bc808cc71aa7dafd284897ea.md) | 155 | `result-track:bc808cc71aa7dafd284897ea559f19a4c356028aef6775996bcc74632c60c852` |
| 18 | `lemma` | [D₂_shape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-shape--58f85f31e0a1986e88660f67.md) | 164 | `result-track:58f85f31e0a1986e88660f67ba253e55f036811b7aefc4dda402e768a817aaa7` |
| 19 | `lemma` | [D₁_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-d--3da90a90fda287c5056e3566.md) | 174 | `result-track:3da90a90fda287c5056e3566d97db2bcb4d311e86b74f8371b4a8464412633de` |
| 20 | `lemma` | [D₂_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-d--8c3ecdd5b1968e889d62568c.md) | 194 | `result-track:8c3ecdd5b1968e889d62568c2fd3c4849906f7bfc73287fd4138d3723d5940e3` |
| 21 | `lemma` | [D₂_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-d--4db0aa3c39d0f7aa1f99248a.md) | 214 | `result-track:4db0aa3c39d0f7aa1f99248a91af1b9bd220b373d256e07c94fae25780629fbe` |
| 22 | `lemma` | [D₁_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-d--fcde1275429ea7d5fcea8729.md) | 245 | `result-track:fcde1275429ea7d5fcea87295267b0f03932a6d3da1532192ab7b37399452c0c` |
| 23 | `def` | [total](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/total--1307abeec7dcc1c619fa47e7.md) | 250 | `declaration-track:1307abeec7dcc1c619fa47e7e0c37913b8126c3e4cea75cc63a4e900b365291e` |
| 24 | `def` | [ιTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/total--82bf8ee8a51cc3acb9da3f38.md) | 257 | `declaration-track:82bf8ee8a51cc3acb9da3f38cffe9d36dcb2bb920873a050a1b527a709a7eed4` |
| 25 | `lemma` | [XXIsoOfEq_hom_ιTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/xxisoofeq-hom-total--557e1d484575ce8abbf6bca5.md) | 263 | `result-track:557e1d484575ce8abbf6bca59cec5320538fa73ed68e6e940cb8e28bc6cc236c` |
| 26 | `lemma` | [XXIsoOfEq_inv_ιTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/xxisoofeq-inv-total--298383afe592a29f7061b64f.md) | 271 | `result-track:298383afe592a29f7061b64fca57d119f139cc5e8c51442fa6929c9875d34d63` |
| 27 | `def` | [ιTotalOrZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totalorzero--bb8488ebe0ad5bc7d7e62e8b.md) | 279 | `declaration-track:bb8488ebe0ad5bc7d7e62e8b2c0fc4f1eae9bece7d3685889f4c96c816e28584` |
| 28 | `lemma` | [ιTotalOrZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totalorzero-eq--df447b5b148de06220fc52c9.md) | 283 | `result-track:df447b5b148de06220fc52c93465496f251796df8345f2a35368546a80602bb6` |
| 29 | `lemma` | [ιTotalOrZero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totalorzero-eq-zero--f93032c6350935e5cb310a11.md) | 287 | `result-track:f93032c6350935e5cb310a114a845ddb88cd29bb34f96598289e788835a3ad43` |
| 30 | `lemma` | [ι_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d--f1013d3cbdd20c658d4b43d4.md) | 292 | `result-track:f1013d3cbdd20c658d4b43d4e772079ee7098ff097d1da454cf7d49a2e6ae05f` |
| 31 | `lemma` | [ι_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d--f8960ce4013d08112599773d.md) | 298 | `result-track:f8960ce4013d08112599773d2d8a7f4d70301b75ea14d47ddee209b6766f7c11` |
| 32 | `lemma` | [d₁_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--cb64634f0c54b7dd111c8808.md) | 304 | `result-track:cb64634f0c54b7dd111c8808b1d0c60e98476d01da4635b07a4b093b08e145b3` |
| 33 | `lemma` | [d₁_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--ea73fb6cb55575c0b3dbd2df.md) | 309 | `result-track:ea73fb6cb55575c0b3dbd2df316b50bc8ca5da162856fb4068f11f7d238613f3` |
| 34 | `lemma` | [d₂_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--5297c04544ccbd2c4e449802.md) | 315 | `result-track:5297c04544ccbd2c4e449802e4cf68a9e23946bb7320b0d7a4bb465663671b13` |
| 35 | `lemma` | [d₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-eq--3b37da48eeeb45883a7756a2.md) | 320 | `result-track:3b37da48eeeb45883a7756a21e2f28c62a67adc88b18c4e0048ea3713dc5f53a` |
| 36 | `def` | [totalDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totaldesc--79510f0c3d1a21c4277a7e46.md) | 333 | `declaration-track:79510f0c3d1a21c4277a7e461483e1e601eda08d94baee654dfca40a95f9a32e` |
| 37 | `lemma` | [ι_totalDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totaldesc--1cb9f8dcf42b3e5c41ca109c.md) | 337 | `result-track:1cb9f8dcf42b3e5c41ca109c6d8970752138a33899a8a47bae96516b373a409f` |
| 38 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/hom-ext--6a69891ea670c3269f6d7621.md) | 348 | `result-track:6a69891ea670c3269f6d76210c5218ce6c32233a9bc371e167c494c8215bd020` |
| 39 | `lemma` | [d₁_mapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-mapmap--dee31c8d9eb72a134b694de4.md) | 360 | `result-track:dee31c8d9eb72a134b694de423477b161b1518d494765c0bbed834dfb34f9e39` |
| 40 | `lemma` | [d₂_mapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/d-mapmap--a038f90148c1a0ba2ff4c012.md) | 368 | `result-track:a038f90148c1a0ba2ff4c012c2293277c1a6f6186afd2e5156152203b64c1714` |
| 41 | `lemma` | [mapMap_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/mapmap-d--99a5cdac7d41d6c76a7afd14.md) | 376 | `result-track:99a5cdac7d41d6c76a7afd143193f5ab1fba657aa12a8dc5d111de4672e9f357` |
| 42 | `lemma` | [mapMap_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/mapmap-d--0a6119985325da53d65d3e76.md) | 382 | `result-track:0a6119985325da53d65d3e768e915defff34e598f99f904ca1e81939f94e090f` |
| 43 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/map--066f93a1f5e364fda778dff6.md) | 391 | `declaration-track:066f93a1f5e364fda778dff6f0108103a4ff97e1e760832da699fcf6c1344717` |
| 44 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/forget-map--a2cabeec1fe30747f72c155e.md) | 398 | `result-track:a2cabeec1fe30747f72c155efd14b45b5e6159d4351ed084c3472cf72e2ec08e` |
| 45 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/map-id--070ac186c513b8d753aa0f66.md) | 404 | `result-track:070ac186c513b8d753aa0f66a1b2ba19b78ba869f9d1a15e51ae4a6162a4ab4b` |
| 46 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/map-comp--5f74019244790c4a80a243c8.md) | 411 | `result-track:5f74019244790c4a80a243c8f649fb1773334de462b08031059e91249540fff1` |
| 47 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/mapiso--d475d01ce965302c87d4a4b2.md) | 418 | `declaration-track:d475d01ce965302c87d4a4b2764600da74418241dded36582dba9e08bb83dcdc` |
| 48 | `lemma` | [ιTotal_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/total-map--5e04225c0b89d9f902004b98.md) | 431 | `result-track:5e04225c0b89d9f902004b9825c40e1774e005bc00a75bd9aa71c2f9cd17fc57` |
| 49 | `lemma` | [ιTotalOrZero_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totalorzero-map--97b9dc74d8802fb1b35bb2e9.md) | 437 | `result-track:97b9dc74d8802fb1b35bb2e9a8f5ff66097507f91d08fb08ccd5a3de8182c2f4` |
| 50 | `def` | [totalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/declarations/totalfunctor--a272bfd5e85fd6157a4ec8b4.md) | 449 | `declaration-track:a272bfd5e85fd6157a4ec8b40d3a25785d46c672c2d3689c9608c36e097f752e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
