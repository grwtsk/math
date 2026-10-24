# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Product.Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5595ef618a86af2931f7b701a5a580cc616ad996",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5595ef618a86af2931f7b701a5a580cc616ad996`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Product` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/proj--97028a5fefe59d6f4b3b87af.md) | 54 | `declaration-track:97028a5fefe59d6f4b3b87af0a8a17bd710cc73855027e1d2814743e534d2261` |
| 2 | `theorem` | [proj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/proj-map--828257aed82c59e398b3c1e9.md) | 60 | `result-track:828257aed82c59e398b3c1e9004cf2b6fa51dd74d5da648c9c6a51c38db16d8b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/instance--cc78a32a188a3dd15bae4e60.md) | 66 | `declaration-track:cc78a32a188a3dd15bae4e60d453a27a2815844b0aeecc50ade7131975e95a85` |
| 4 | `def` | [piToPiTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/pitopitop--632927bc73d28831d918d04c.md) | 72 | `declaration-track:632927bc73d28831d918d04c86cc724851a778ae67ab40812493cc46cac0c052` |
| 5 | `def` | [piIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/piiso--bda78b19053966be7ba01f72.md) | 86 | `declaration-track:bda78b19053966be7ba01f72e931a676a935df25803a14161b6e498459c75711` |
| 6 | `def` | [coneDiscreteComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/conediscretecomp--968edf26e6b73008638ef9d2.md) | 109 | `declaration-track:968edf26e6b73008638ef9d242580d59955bf8341f56e6991d9b3ef02f9addd2` |
| 7 | `theorem` | [coneDiscreteComp_obj_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/conediscretecomp-obj-mapcone--5d62f33630173a5ec5ccebaa.md) | 114 | `result-track:5d62f33630173a5ec5ccebaa5f66e9cf61d518bbd4b10c282478c756a7b88642` |
| 8 | `def` | [piTopToPiCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/pitoptopicone--6943c7294123d4870071ea10.md) | 122 | `declaration-track:6943c7294123d4870071ea10fb782631256f5bac24683e9f2818fecd8451e284` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/instance--abfb0645cfdc1234acfdcc47.md) | 127 | `declaration-track:abfb0645cfdc1234acfdcc47dd5d6a98b5e25e9edc1225e606e3c8794fd26d7e` |
| 10 | `def` | [preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/preservesproduct--e85259460194f711cc027dbd.md) | 132 | `declaration-track:e85259460194f711cc027dbdd35648d03d3dc9912aeab2978792d8ebd5f52ce7` |
| 11 | `def` | [projLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/projleft--c3ae7d621543f586b3e88bc9.md) | 150 | `declaration-track:c3ae7d621543f586b3e88bc9c7be1bc68c3b02b65db3f204e827884e4397d85f` |
| 12 | `def` | [projRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/projright--c110bbaeb2dbd0afe8ddeb16.md) | 155 | `declaration-track:c110bbaeb2dbd0afe8ddeb16469af3de9b32690e2d51c2d9ee6a798b970b29be` |
| 13 | `theorem` | [projLeft_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/projleft-map--8e915bb4973c41f2df9bc76c.md) | 160 | `result-track:8e915bb4973c41f2df9bc76c1d585247dee7eaf4014da2b064e892bffbc7c139` |
| 14 | `theorem` | [projRight_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/projright-map--158b60dee891757260fb7f29.md) | 166 | `result-track:158b60dee891757260fb7f29226c558aab732a1f0c64cbe99e37ee74c8030568` |
| 15 | `def` | [prodToProdTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/prodtoprodtop--bbb919e11a8e8edbc180aa8a.md) | 176 | `declaration-track:bbb919e11a8e8edbc180aa8a9c3758c5e5675605465ef617db1b9e144e5f644b` |
| 16 | `theorem` | [prodToProdTop_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/prodtoprodtop-map--1118ddefd0d61474ef97dcfa.md) | 191 | `result-track:1118ddefd0d61474ef97dcfa74c0a5ffa3c66159c529c58ed9db4b25d77a70c5` |
| 17 | `def` | [prodIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/declarations/prodiso--523c58cd82de2ece1d502d71.md) | 201 | `declaration-track:523c58cd82de2ece1d502d7179f5d5056819d98552d2a5a45cda8220b57f1b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
