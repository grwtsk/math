# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Continuous.Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "972e00d30f27ca144f4346d9fc5c7fc01b98d961",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `972e00d30f27ca144f4346d9fc5c7fc01b98d961`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--3bff9986535be9d700a67007.md) | 43 | `declaration-track:3bff9986535be9d700a67007a820b286d7f47d8dc031df2976199a1ed0898b99` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--746c87556454cf5a8777bc51.md) | 46 | `declaration-track:746c87556454cf5a8777bc51b6708f7e0e9753cecf1b559b9189056d6fc20c1c` |
| 3 | `abbrev` | [IsContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/iscontinuous--7f56cc159d66207166f4241d.md) | 62 | `declaration-track:7f56cc159d66207166f4241db2ccf897431cf4915283448899d9f9958090c547` |
| 4 | `lemma` | [isContinuous_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/iscontinuous-def--f51aa915da23a38fac1145b1.md) | 65 | `result-track:f51aa915da23a38fac1145b137884684dd64fe2f6a421e5ad7f087589ed722f3` |
| 5 | `def` | [ContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/contaction--0eb8bff1eb212eb2232c2e6b.md) | 76 | `declaration-track:0eb8bff1eb212eb2232c2e6bad21e9ae7c64ff227134ae06d8cf3c76f9b5d921` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--040faedb2acf5e7b0d106646.md) | 80 | `declaration-track:040faedb2acf5e7b0d10664623bc6dacdff30894ab4738a7887238c39d51c2be` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--5bb40384f4be28737658deb1.md) | 83 | `declaration-track:5bb40384f4be28737658deb1e51e52154f5c09678718f1524f428af105c21b86` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--47e03635c1d90b466af4332c.md) | 86 | `declaration-track:47e03635c1d90b466af4332c3788d7ae058b22ea2de8b6eed96b4cd3b687be1b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--6a03154f770a85f35f89df23.md) | 91 | `declaration-track:6a03154f770a85f35f89df23ddd0596f68d5dcae9280907d7a16c3d24add120c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--9b57b4ad3991dc367bc179f5.md) | 94 | `declaration-track:9b57b4ad3991dc367bc179f5d259f20647796bfb634e58a72e082a25e24f8ce9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--a5c6d67ab223c467346699e2.md) | 97 | `declaration-track:a5c6d67ab223c467346699e2ac4874c3f9665270c53f1d4485e4556920de44e6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--7ddf56b6badb0c1f0bd4b6da.md) | 100 | `declaration-track:7ddf56b6badb0c1f0bd4b6da3f333135552ab412fe55057c9775c28dda8f7fb3` |
| 13 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/isdiscrete--dd882c0606dffcfbfae20f39.md) | 107 | `declaration-track:dd882c0606dffcfbfae20f39cfe0aa00b0330af3045cac704e7bea961dc62b90` |
| 14 | `def` | [res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/res--b1c8f485489940e96485b589.md) | 116 | `declaration-track:b1c8f485489940e96485b58946d26e93bf0b9327a5aceaf5739868fadd6796cf` |
| 15 | `def` | [resComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/rescomp--264071c61bdc0fee9459fe89.md) | 129 | `declaration-track:264071c61bdc0fee9459fe8926076f2b1a59b3f4dd8651c503691ea858578b6c` |
| 16 | `def` | [resCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/rescongr--424da74b795880075ca0a37c.md) | 136 | `declaration-track:424da74b795880075ca0a37c9383076be7b7e88de97ac7de871b95f9d7d45421` |
| 17 | `def` | [resEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/resequiv--bf6fe628beabb2e630628335.md) | 146 | `declaration-track:bf6fe628beabb2e6306283352968a68ee4bbc2d41f62d127b073357749b95bc8` |
| 18 | `def` | [DiscreteContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/discretecontaction--549a7858a51517ab2d60697b.md) | 160 | `declaration-track:549a7858a51517ab2d60697b79d8d004f1a9a68d7ada3a9aef34fdc9d99a1267` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--229f1934d359c0389d39ff8c.md) | 164 | `declaration-track:229f1934d359c0389d39ff8c6c4d68ceadc1d240d2811311f4e499e01d35708e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--9a1d800cc133fa8da754e0b7.md) | 167 | `declaration-track:9a1d800cc133fa8da754e0b70b63db0f1267d50b3d53a779960a30520abb9086` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--7c120bbf244fb129daa8403a.md) | 170 | `declaration-track:7c120bbf244fb129daa8403aa3bac728a442ad6a2b075155bc4c04f831121bc6` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--9dde7628359b74b94dd0e2b9.md) | 175 | `declaration-track:9dde7628359b74b94dd0e2b9527af558f9d55e364efe22317ae61406e397a71c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--e8a0978a1c3b6a51c8f05794.md) | 178 | `declaration-track:e8a0978a1c3b6a51c8f05794cbd2ecde0cf99c0f10bdd542e957631a9ae5f955` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/instance--1f238d6dca2a9a7ea1b38248.md) | 183 | `declaration-track:1f238d6dca2a9a7ea1b38248120d323b8b7435abfb31997ac3b083695fa59270` |
| 25 | `def` | [mapContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/mapcontaction--ddb3be1cf8908d179421e98e.md) | 199 | `declaration-track:ddb3be1cf8908d179421e98e81389ea335588bd484440200ff91d5ad1379de44` |
| 26 | `def` | [mapContActionComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/mapcontactioncomp--6baabdade7aaf98d4db09b3f.md) | 205 | `declaration-track:6baabdade7aaf98d4db09b3f47e952f6a41a981631a7e4271fcb3f7ba0b2ac87` |
| 27 | `def` | [mapContActionCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/mapcontactioncongr--ca5fc95010d19b4e0b44792f.md) | 214 | `declaration-track:ca5fc95010d19b4e0b44792f9763e378a1b0ad4f9a6b7b928c7643d2891dad4d` |
| 28 | `def` | [Equivalence.mapContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/declarations/equivalence-mapcontaction--dfac555172bf328455dc0c00.md) | 226 | `declaration-track:dfac555172bf328455dc0c00363bb90076d20d56a4d2511e7761f31eadf948a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
