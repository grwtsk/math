# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Terminal.Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1f5c277c2ed081bb122afd863b3df51026dd429",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1f5c277c2ed081bb122afd863b3df51026dd429`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeEmptyConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/islimitmapconeemptyconeequiv--853e0ea89c24a84c74efc79a.md) | 46 | `declaration-track:853e0ea89c24a84c74efc79a8e67786fe9cedbb1a387d4f7e3545be76f85d7de` |
| 2 | `def` | [IsTerminal.isTerminalObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/isterminal-isterminalobj--b1ce92ff88b0c8cbbb7ec273.md) | 51 | `declaration-track:b1ce92ff88b0c8cbbb7ec2735afb77794e52a729af27614980aea39518016695` |
| 3 | `def` | [IsTerminal.isTerminalOfObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/isterminal-isterminalofobj--c1f6436abe2d963a964d13a8.md) | 56 | `declaration-track:c1f6436abe2d963a964d13a8a0e0bc7b545ad4c935b3565dc6570be3c04ce45c` |
| 4 | `def` | [IsTerminal.isTerminalIffObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/isterminal-isterminaliffobj--abfdec05a7224cfe9a52c1fe.md) | 62 | `declaration-track:abfdec05a7224cfe9a52c1feb0c3c7d37ab9b12bcb113cd2c1677bd1ce8a8a58` |
| 5 | `lemma` | [preservesLimitsOfShape_pempty_of_preservesTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preserveslimitsofshape-pempty-of-preservesterminal--29890bc3d1321b54e4d6873b.md) | 71 | `result-track:29890bc3d1321b54e4d6873b81c8c4e8cbe8ba483506c8410ebb4a2f43b01b5a` |
| 6 | `def` | [isLimitOfHasTerminalOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/islimitofhasterminalofpreserveslimit--d8cd181f8894e9cdca6b7856.md) | 81 | `declaration-track:d8cd181f8894e9cdca6b78566dd15f3217f81682a8b54b4cbc2376925ec0e958` |
| 7 | `theorem` | [hasTerminal_of_hasTerminal_of_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/hasterminal-of-hasterminal-of-preserveslimit--de24be0efcd71eb724044648.md) | 91 | `result-track:de24be0efcd71eb724044648c2c90e419ba8898309218b73a163f1c8013d4965` |
| 8 | `lemma` | [PreservesTerminal.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesterminal-of-iso-comparison--865cfb7c8faa5f40bab3e95c.md) | 100 | `result-track:865cfb7c8faa5f40bab3e95c6e17968b62068e431022a3a9520ccfc62dbd2eda` |
| 9 | `lemma` | [preservesTerminal_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesterminal-of-isiso--fe51e2fdf519b50b5fe37d48.md) | 107 | `result-track:fe51e2fdf519b50b5fe37d48ae57e0e36dc5484def218555258ee2d8ac90398b` |
| 10 | `lemma` | [preservesTerminal_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesterminal-of-iso--9b178e15a5bbd6fb3d8f5962.md) | 113 | `result-track:9b178e15a5bbd6fb3d8f59627b6b7d87b8599715ba70e73b95f92d18562e0efd` |
| 11 | `def` | [PreservesTerminal.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesterminal-iso--48bc3b48fa6a8518a253328e.md) | 120 | `declaration-track:48bc3b48fa6a8518a253328ea3df17365c01ad99a94e66182f47558c40877baf` |
| 12 | `theorem` | [PreservesTerminal.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesterminal-iso-hom--d1e1fc06fef05f86056236fe.md) | 124 | `result-track:d1e1fc06fef05f86056236fec30b1f7a541a43fff6541b043127d13e264df47a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/instance--d4938ec38c234e87d26a71b7.md) | 127 | `declaration-track:d4938ec38c234e87d26a71b7ebe74f385f5c1e7a3ff2ac4321c60cbf7d21400d` |
| 14 | `def` | [isColimitMapCoconeEmptyCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/iscolimitmapcoconeemptycoconeequiv--573de661cf14b2bea0ebece1.md) | 137 | `declaration-track:573de661cf14b2bea0ebece1a61e050a6b6a4f3d29ac7dcf9c267a20f95bf27c` |
| 15 | `def` | [IsInitial.isInitialObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/isinitial-isinitialobj--2ccd4af702b3938f2578314b.md) | 142 | `declaration-track:2ccd4af702b3938f2578314b28aa17ab3faa5ca08c072acf2cf2188f54f8e5cf` |
| 16 | `def` | [IsInitial.isInitialOfObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/isinitial-isinitialofobj--75ab82309133572a6e1c7c55.md) | 147 | `declaration-track:75ab82309133572a6e1c7c5508ca8090f6231887c942ce6c11b913330d0baaf1` |
| 17 | `def` | [IsInitial.isInitialIffObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/isinitial-isinitialiffobj--15216bd3342b3c212496df7f.md) | 152 | `declaration-track:15216bd3342b3c212496df7f549122a10ee7fabf95e6136b07e158350d5139de` |
| 18 | `lemma` | [preservesColimitsOfShape_pempty_of_preservesInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservescolimitsofshape-pempty-of-preservesinitial--733e8f241d7c4ef7e2071fe9.md) | 161 | `result-track:733e8f241d7c4ef7e2071fe9c08b6840c3d182b015efb2c6bdd7c7dcb2d3a49f` |
| 19 | `def` | [isColimitOfHasInitialOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/iscolimitofhasinitialofpreservescolimit--7bd67c66ca63c7fff38cfeb7.md) | 172 | `declaration-track:7bd67c66ca63c7fff38cfeb73d05d488f747a4f1c805052c1dbbab028e494c7e` |
| 20 | `theorem` | [hasInitial_of_hasInitial_of_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/hasinitial-of-hasinitial-of-preservescolimit--e8323b52f39b4530908d7505.md) | 182 | `result-track:e8323b52f39b4530908d7505a7888859197dcad1ea5a02fc086eed54ebbb3c6c` |
| 21 | `lemma` | [PreservesInitial.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesinitial-of-iso-comparison--19779191341d45964f2affea.md) | 192 | `result-track:19779191341d45964f2affeafeea1ee2b790fbf61486f7adc700ae6d80776d12` |
| 22 | `lemma` | [preservesInitial_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesinitial-of-isiso--daabe473bab8f05e77c100a3.md) | 199 | `result-track:daabe473bab8f05e77c100a38a4021c57cbe83d6767580bfa69135c0c8adb2fc` |
| 23 | `lemma` | [preservesInitial_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesinitial-of-iso--dd2f91992e186001f7808ee8.md) | 205 | `result-track:dd2f91992e186001f7808ee8486ec515691c26f074a1f6c692d992b85325b1df` |
| 24 | `def` | [PreservesInitial.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesinitial-iso--8cc07c0cd52425b1b77f6aa5.md) | 212 | `declaration-track:8cc07c0cd52425b1b77f6aa55f6a3b26658a3f3a1f4f61a549ad5f9e20d939d9` |
| 25 | `theorem` | [PreservesInitial.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/preservesinitial-iso-hom--31f1812fe07a8365214b6d33.md) | 216 | `result-track:31f1812fe07a8365214b6d330efa4fa5a8d5cdd31f4f5ed8c340fd6f8c39a375` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant2226f822940b94510b2feaec4a47535acec95987ef0d791c3edbd61bcfaf0003.lean/declarations/instance--717fdbb6b4f47a5b11201e36.md) | 219 | `declaration-track:717fdbb6b4f47a5b11201e36eac14a11a3381b0ead11e524476fdbfc4c4609b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
