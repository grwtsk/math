# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca4ced94d90741803ab3e710d9dd1c5d8ec2d365",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca4ced94d90741803ab3e710d9dd1c5d8ec2d365`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condensed.ulift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/condensed-ulift--6b43ea736c6268c5ddd584b4.md) | 40 | `declaration-track:6b43ea736c6268c5ddd584b4d31758ca5a0d42197b8e09bcc65e669f2ebf6338` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/instance--d1ab4fdd596fcfa4b25670f3.md) | 43 | `declaration-track:d1ab4fdd596fcfa4b25670f329eb24d7d141208da143e7a30a67ddee27778cd4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/instance--8c6192140de1787ca9ce4d5d.md) | 45 | `declaration-track:8c6192140de1787ca9ce4d5d86e532ad1b394719a3997cdec6278e0eb8debc36` |
| 4 | `def` | [compHausToCondensed'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/comphaustocondensed--7ca9227b9bb532d3a70b3ada.md) | 52 | `declaration-track:7ca9227b9bb532d3a70b3ada304162882f0cecd410b48aff89cf1b0a16209c47` |
| 5 | `def` | [compHausToCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/comphaustocondensed--9337d4e80a242ac2a76bc918.md) | 56 | `declaration-track:9337d4e80a242ac2a76bc918f9cc90628f131a8b53bfd2ad8daa8ba020b2a0ce` |
| 6 | `abbrev` | [CompHaus.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/comphaus-tocondensed--ef6946108a62e10a56b7768e.md) | 60 | `declaration-track:ef6946108a62e10a56b7768e457f1326c07c9cfc7d65a218f12535e17110071e` |
| 7 | `def` | [profiniteToCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/profinitetocondensed--7ea12978e29dbd3bfb9b9ed3.md) | 63 | `declaration-track:7ea12978e29dbd3bfb9b9ed3bdbce953727a2434f328b4ecb09b7ae9b3926136` |
| 8 | `abbrev` | [Profinite.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/profinite-tocondensed--06cd9e31562929ec34721420.md) | 67 | `declaration-track:06cd9e31562929ec34721420289e3abcc7c0cfcc74a41385de96ccf513ebae1a` |
| 9 | `def` | [stoneanToCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/stoneantocondensed--fd8f3d215b8d2190e440031e.md) | 70 | `declaration-track:fd8f3d215b8d2190e440031e149c310ceae7512ec79fa9847fcaa8b71a84def8` |
| 10 | `abbrev` | [Stonean.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/stonean-tocondensed--9647c5b6d30ddaf30db8ae82.md) | 74 | `declaration-track:9647c5b6d30ddaf30db8ae82c7b7f94f7c3a0c763eb683fc8f91b4d71dea3829` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/instance--0719b77b3239c92def7ff19a.md) | 76 | `declaration-track:0719b77b3239c92def7ff19a182cee0915197675ce47856bb9e5b2a072df11cb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/instance--9b1172d295f8206a6428f015.md) | 79 | `declaration-track:9b1172d295f8206a6428f015c31b780d743fb193ec249170a82bb8a07fa13604` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/instance--bbd466c94c806651d50eab3a.md) | 82 | `declaration-track:bbd466c94c806651d50eab3a7fa40c5497bcafd4eb9c78c2736eff28efd401c5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449.lean/declarations/instance--a5d5601b008406c286a9167c.md) | 84 | `declaration-track:a5d5601b008406c286a9167c4862dfbc7d95ce476686ab6a65f1c05574e5549b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
