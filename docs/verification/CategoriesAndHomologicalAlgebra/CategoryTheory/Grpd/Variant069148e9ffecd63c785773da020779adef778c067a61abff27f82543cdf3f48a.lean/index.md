# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grpd.Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "980b948c1b0089d90297e018449de2f0db3d737c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `980b948c1b0089d90297e018449de2f0db3d737c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SingleObj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IsLimit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Grpd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/grpd--c26116de0012ec588dd10154.md) | 45 | `declaration-track:c26116de0012ec588dd101540e0c773ff5292dceefbc835bf845b29105960ee2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/instance--148649ecb5fe61d4eff99f9a.md) | 52 | `declaration-track:148649ecb5fe61d4eff99f9acbf4ebd28f649423c903e09c7b3672f1719f14c0` |
| 3 | `instance` | [str'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/str--fd13d824801ec5dd642641f4.md) | 56 | `declaration-track:fd13d824801ec5dd642641f48d5853a81f1a875bfc8f830a098d61a4843581a6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/instance--52f0381b8f9d3a4b0c826503.md) | 61 | `declaration-track:52f0381b8f9d3a4b0c8265035edcef4b9338ea9c6646379f05873dbaa57deb64` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/of--96e0cf79936251d77404deaa.md) | 65 | `declaration-track:96e0cf79936251d77404deaa3dbb4d3394143c8e99408abcfa7c96ae82a78bfb` |
| 6 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/coe-of--85210756b169b53c1fbffe70.md) | 71 | `result-track:85210756b169b53c1fbffe7066985291edf9f2345462eda9e9a9426a07660425` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/category--9b9c9864ba99a1ca5e7a5dea.md) | 77 | `declaration-track:9b9c9864ba99a1ca5e7a5dea27f7493a7f9847ed03d8f2c99eb31a4617662d16` |
| 8 | `def` | [objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/objects--fd4f4d8d2048c2256b6e7223.md) | 89 | `declaration-track:fd4f4d8d2048c2256b6e722359ee0167c2efd805255ead8bbc34a82dde9d9d8c` |
| 9 | `def` | [forgetToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/forgettocat--4294740bf9ccc3339e5260df.md) | 96 | `declaration-track:4294740bf9ccc3339e5260df41d3487237b68f6ace8ad7412cb9d0fcefbe06d2` |
| 10 | `instance` | [forgetToCatFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/forgettocatfull--b31f9f2688104a434ce75c1e.md) | 102 | `declaration-track:b31f9f2688104a434ce75c1ee9d635dd442e43b8113102a077356add6f1e530e` |
| 11 | `instance` | [forgetToCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/forgettocat-faithful--7ce70e09a3e97b64c95017d3.md) | 106 | `declaration-track:7ce70e09a3e97b64c95017d313213216016f33ad185158e43c75642664f4391e` |
| 12 | `theorem` | [hom_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/hom-to-functor--60d8c330578106e1e4760032.md) | 112 | `result-track:60d8c330578106e1e476003268babc5a8538b92834ea500812b602403789c127` |
| 13 | `theorem` | [id_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/id-to-functor--d37e808611afed88dbad3364.md) | 118 | `result-track:d37e808611afed88dbad3364fc7a7515bf04744fd23e0793f6d013e9ddf11f84` |
| 14 | `def` | [piLimitFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/pilimitfan--680d19420a70dc07e5cfcdb3.md) | 126 | `declaration-track:680d19420a70dc07e5cfcdb3f4f662e49ad8aae568a1eda4fd12a1962d3deb06` |
| 15 | `def` | [piLimitFanIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/pilimitfanislimit--f3b0c3bcd6f6272faf969a1f.md) | 132 | `declaration-track:f3b0c3bcd6f6272faf969a1f4d3b10a0c1e4c19af39e7ffcfbc4e66b00a7f93c` |
| 16 | `instance` | [has_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/has-pi--fd3f95394d7cb5d6b6057af4.md) | 146 | `declaration-track:fd3f95394d7cb5d6b6057af430a214702900eee101dca01b1a8c4115b94ea991` |
| 17 | `def` | [piIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/piisopi--830c502c7f353e0365acd8de.md) | 153 | `declaration-track:830c502c7f353e0365acd8de10c13fb424646f92f862ff845f6263dc86139e37` |
| 18 | `theorem` | [piIsoPi_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant069148e9ffecd63c785773da020779adef778c067a61abff27f82543cdf3f48a.lean/declarations/piisopi-hom--db94ee8b001e737fefe735e6.md) | 160 | `result-track:db94ee8b001e737fefe735e6a20f802262968322fd3028fc57e57ae15245a417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
