# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638cb1e7ce036f9f50cfafa42327f1f8bbbd3270",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638cb1e7ce036f9f50cfafa42327f1f8bbbd3270`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservesfilteredcolimitsofsize--78dc478551963c9ffe9296cc.md) | 46 | `declaration-track:78dc478551963c9ffe9296ccfcd66047a7242748b9a3c1d45105901a62bb853e` |
| 2 | `abbrev` | [PreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservesfilteredcolimits--335f3c2ec46a967900ecb8d8.md) | 55 | `declaration-track:335f3c2ec46a967900ecb8d8b01c96f038ed6e7de9303d6d43fd8e5f686e93fd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/instance--164fd01899c12095fc741968.md) | 60 | `declaration-track:164fd01899c12095fc7419687e407ea1b0964754730db9d3559cc29d1cd55322` |
| 4 | `instance` | [comp_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/comp-preservesfilteredcolimits--3e7615d7bb30a88edcf2d408.md) | 64 | `declaration-track:3e7615d7bb30a88edcf2d4084b8d5247817e861e5254461c4575f7125ca157e2` |
| 5 | `lemma` | [preservesFilteredColimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservesfilteredcolimitsofsize-of-univle--a27d82cea98e7d0f2dfb8e14.md) | 70 | `result-track:a27d82cea98e7d0f2dfb8e1429b893746dd3aedaaeb34bd845c1f3da42f838f1` |
| 6 | `lemma` | [preservesFilteredColimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservesfilteredcolimitsofsize-shrink--e176db1982fb530dc27b0e59.md) | 82 | `result-track:e176db1982fb530dc27b0e5981d5e021401253121f701481a1163978fc4b5a3b` |
| 7 | `lemma` | [preservesSmallestFilteredColimits_of_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservessmallestfilteredcolimits-of-preservesfilteredcolimits--2de9151cd1f60e5904d81ff7.md) | 90 | `result-track:2de9151cd1f60e5904d81ff71841c86f95900d560de85e7089930515b168b8bc` |
| 8 | `class` | [ReflectsFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectsfilteredcolimitsofsize--305b1389ee3d6febde5d10ab.md) | 102 | `declaration-track:305b1389ee3d6febde5d10abe5768baafebeab32f552ccae0729d1a64a072b22` |
| 9 | `abbrev` | [ReflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectsfilteredcolimits--10c1c7266e8267af10527e9e.md) | 111 | `declaration-track:10c1c7266e8267af10527e9e65674b57c14a48440eddcdf837f5d70e20218176` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/instance--47a80c4889a945ea876314ed.md) | 116 | `declaration-track:47a80c4889a945ea876314ed0a12b777452d686bccde0afb8a81778879815929` |
| 11 | `instance` | [comp_reflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/comp-reflectsfilteredcolimits--32a7fa4ecda745ce77189764.md) | 120 | `declaration-track:32a7fa4ecda745ce771897647a740ac9a7243409cfb028b5a91cfd2e7d18467f` |
| 12 | `lemma` | [reflectsFilteredColimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectsfilteredcolimitsofsize-of-univle--96d39ad9797ab9715acc2e73.md) | 126 | `result-track:96d39ad9797ab9715acc2e731e274f305915fdb3357c182b6712269715d97363` |
| 13 | `lemma` | [reflectsFilteredColimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectsfilteredcolimitsofsize-shrink--0e2910e3f7d513ae1f7e0419.md) | 138 | `result-track:0e2910e3f7d513ae1f7e04190f71e7f8ea2db7e4a696402865ee9bc0dff22378` |
| 14 | `lemma` | [reflectsSmallestFilteredColimits_of_reflectsFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectssmallestfilteredcolimits-of-reflectsfilteredcolimits--144c355512c95efa15286477.md) | 146 | `result-track:144c355512c95efa152864773a550fefab0157d22e6992db896326ccf18cc498` |
| 15 | `class` | [PreservesCofilteredLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservescofilteredlimitsofsize--13d6d13cc2ea312e6359ef51.md) | 162 | `declaration-track:13d6d13cc2ea312e6359ef5133407ac06a1ab9c10856f6ad57e7fab649657f16` |
| 16 | `abbrev` | [PreservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservescofilteredlimits--dbbff199457a525a78f104dd.md) | 171 | `declaration-track:dbbff199457a525a78f104dd397abbf0c33bcbfddddde7f0fcaef0c6e36f8c83` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/instance--3f01cda8a4e64df6363060e8.md) | 176 | `declaration-track:3f01cda8a4e64df6363060e81ff0dedc3188c6242c609fec9cbaa3be166348eb` |
| 18 | `instance` | [comp_preservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/comp-preservescofilteredlimits--e42c748ca98d7dce954120fb.md) | 180 | `declaration-track:e42c748ca98d7dce954120fb3b9dacdd9015c54949acfe16faf5ad6fb2cb7f82` |
| 19 | `lemma` | [preservesCofilteredLimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservescofilteredlimitsofsize-of-univle--bfaa53ac2a9c08a24d458c17.md) | 186 | `result-track:bfaa53ac2a9c08a24d458c172f6ebb36e2ed1ebfc80b74bef7a3e6d0b49da21c` |
| 20 | `lemma` | [preservesCofilteredLimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservescofilteredlimitsofsize-shrink--e1d367cb7eba64b30a13800b.md) | 198 | `result-track:e1d367cb7eba64b30a13800b6498ad6af2ca4498e3bcfe4383023a3505c57772` |
| 21 | `lemma` | [preservesSmallestCofilteredLimits_of_preservesCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/preservessmallestcofilteredlimits-of-preservescofilteredlimits--dffa94a2b9d3467698acc551.md) | 206 | `result-track:dffa94a2b9d3467698acc551a5ac1f19f299cc1e895ce2c7600bf30d7c594e6b` |
| 22 | `class` | [ReflectsCofilteredLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectscofilteredlimitsofsize--3d0d24f4cb890924a9c6e398.md) | 218 | `declaration-track:3d0d24f4cb890924a9c6e398660f1bcb25ee7e7a1e1a6d04b92ebdfe8a18a3f8` |
| 23 | `abbrev` | [ReflectsCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectscofilteredlimits--d4542aedf344f0e94f21b05a.md) | 227 | `declaration-track:d4542aedf344f0e94f21b05a6d790d3ea989176aaf730b46acb383fef2bd99d3` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/instance--5622bfdb7bdcac438bd33a2f.md) | 232 | `declaration-track:5622bfdb7bdcac438bd33a2f1cc183aaf66ff2e3daca0488aa1eaf12a2b77ce2` |
| 25 | `instance` | [comp_reflectsCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/comp-reflectscofilteredlimits--1fdb09fca15ea5a871270cfb.md) | 236 | `declaration-track:1fdb09fca15ea5a871270cfba9cab890ea11db61aa935b1822621cc023782eff` |
| 26 | `lemma` | [reflectsCofilteredLimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectscofilteredlimitsofsize-of-univle--b6fa137a227173fddc654c10.md) | 242 | `result-track:b6fa137a227173fddc654c102f6fc524cd912688f7a2b1f632f2c9d8263dad9c` |
| 27 | `lemma` | [reflectsCofilteredLimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectscofilteredlimitsofsize-shrink--17d46dd1142a6e7619a9355c.md) | 254 | `result-track:17d46dd1142a6e7619a9355c02a8ef969c2f639537f1770039fc28f4b019dcf7` |
| 28 | `lemma` | [reflectsSmallestCofilteredLimits_of_reflectsCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/declarations/reflectssmallestcofilteredlimits-of-reflectscofilteredlimits--d4cfd497581a49c18754dc4f.md) | 262 | `result-track:d4cfd497581a49c18754dc4fbcd9c3cea73ff80868d8ac1f4d9695559aa022c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
