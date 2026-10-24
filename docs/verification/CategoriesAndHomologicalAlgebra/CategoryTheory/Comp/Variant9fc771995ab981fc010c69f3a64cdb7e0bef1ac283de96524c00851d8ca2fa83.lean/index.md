# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4284db6872071bc5e9e05f35980d8b1c89c2d86c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4284db6872071bc5e9e05f35980d8b1c89c2d86c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepifamilystructcompofeffectiveepisplitepi--68252c4b2da80df364750cf3.md) | 36 | `declaration-track:68252c4b2da80df364750cf366ba9a453de3e9e1f23c3c822a35ff3b67eb5f89` |
| 2 | `def` | [effectiveEpiFamilyStructCompOfEffectiveEpiSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepifamilystructcompofeffectiveepisplitepi--219566c206074fc43d69ffa0.md) | 61 | `declaration-track:219566c206074fc43d69ffa0d065b0730dbc98d38a40624eb62108ce279e60be` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/instance--feb130bbe5ea0a9f9ec265bd.md) | 68 | `declaration-track:feb130bbe5ea0a9f9ec265bdb9d800b06ec7f7d8312cc5e236b0bdb0cd2aee5a` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/example--ec0a7769c90c06a2f4b563e0.md) | 73 | `declaration-track:ec0a7769c90c06a2f4b563e0d1579ff1afb023b4e8deff2803d5fc8cc7c1b063` |
| 5 | `instance` | [IsSplitEpi.EffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/issplitepi-effectiveepi--c8e4f03a9f943ea19621c413.md) | 76 | `declaration-track:c8e4f03a9f943ea19621c41321f437c1537297af452502bb5124cd623202704d` |
| 6 | `def` | [effectiveEpiFamilyStructOfComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepifamilystructofcomp--14b2a451d234bfe8c94e4b63.md) | 84 | `declaration-track:14b2a451d234bfe8c94e4b63c5f2c91905907b0c4924c67d7377895b9d06ed16` |
| 7 | `lemma` | [effectiveEpiFamily_of_effectiveEpi_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepifamily-of-effectiveepi-epi-comp--237428227dcbcf50868810a8.md) | 97 | `result-track:237428227dcbcf50868810a89d04b46356735a34ad1279add4e0e5b342015132` |
| 8 | `lemma` | [effectiveEpi_of_effectiveEpi_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepi-of-effectiveepi-epi-comp--bc04dd743729342e6ffc61d2.md) | 102 | `result-track:bc04dd743729342e6ffc61d2467d33f029279eb9d602bb67aba4e17a65c58dc7` |
| 9 | `theorem` | [effectiveEpiFamilyStructCompIso_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepifamilystructcompiso-aux--ffebe8d38d8f553263464f9e.md) | 114 | `result-track:ffebe8d38d8f553263464f9ec4188473b55bb09944c6a902189ecd71752d4c9d` |
| 10 | `def` | [effectiveEpiFamilyStructCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/effectiveepifamilystructcompiso--cfa133ef4b2ae163bdfb7e86.md) | 128 | `declaration-track:cfa133ef4b2ae163bdfb7e861c79df2591c7fa1f46bea471683c86a730fe27bc` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/instance--b9a30d039804a9d3fe84d811.md) | 136 | `declaration-track:b9a30d039804a9d3fe84d811d0b2e20fa4258c8a81837ad1917cc18260bf444b` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant9fc771995ab981fc010c69f3a64cdb7e0bef1ac283de96524c00851d8ca2fa83.lean/declarations/example--3017af7af6cabf5df55a1201.md) | 145 | `declaration-track:3017af7af6cabf5df55a1201fdc080f349deaf1e1292f51914c952696f7848e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
