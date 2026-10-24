# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b36b9bc493f888a2e4375cc2f6f42e6620fe7f02",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b36b9bc493f888a2e4375cc2f6f42e6620fe7f02`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Free` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.LocallyDiscrete` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inclusionPathAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/inclusionpathaux--f6c2cdb10e340648684ebd5f.md) | 54 | `declaration-track:f6c2cdb10e340648684ebd5fb350b42c930788276290b4ba7d00831677e5e5fd` |
| 2 | `instance` | [homCategory'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/homcategory--ae0e5d739e6fed91d16dfaa2.md) | 64 | `declaration-track:ae0e5d739e6fed91d16dfaa29475dd385f427432817bac9b0d40cab23e73e0da` |
| 3 | `def` | [inclusionPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/inclusionpath--68666d21af0e46b9a42aa363.md) | 70 | `declaration-track:68666d21af0e46b9a42aa363cb19fa30d62b3427aa3090c34a71574d9b90301f` |
| 4 | `def` | [preinclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/preinclusion--72e874cc7cf962324b06554e.md) | 77 | `declaration-track:72e874cc7cf962324b06554e7f8f57219b27121df32b0c7e2136f265f811fcb2` |
| 5 | `theorem` | [preinclusion_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/preinclusion-obj--59b391737ed005991a5f14ac.md) | 84 | `result-track:59b391737ed005991a5f14ac4c3173964fc8c7fc4603948a72bcccdc2b450b56` |
| 6 | `theorem` | [preinclusion_map₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/preinclusion-map--28bffa3f2b165e26e67277e4.md) | 88 | `result-track:28bffa3f2b165e26e67277e4a3393573752670df9fec5ad0c4289cf76448698b` |
| 7 | `def` | [normalizeAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalizeaux--3cb52a2fa22f2ef473cd368b.md) | 100 | `declaration-track:3cb52a2fa22f2ef473cd368b77b39b0b427b48f9c9b7943da3ec4d320b68227e` |
| 8 | `def` | [normalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalizeiso--e048fb82b89eb81f9939924d.md) | 128 | `declaration-track:e048fb82b89eb81f9939924dc1dcb57f5295e5655b389c213e90a8a7032bd99f` |
| 9 | `theorem` | [normalizeAux_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalizeaux-congr--66f71f73a95790734cd32962.md) | 139 | `result-track:66f71f73a95790734cd32962235368392468eeb7951bb05e51309ca1a35fd26a` |
| 10 | `theorem` | [normalize_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalize-naturality--d13260c7a91c5a31b145e388.md) | 151 | `result-track:d13260c7a91c5a31b145e3889194ea1224c3f69050cd1f1dc67de81face8b49d` |
| 11 | `theorem` | [normalizeAux_nil_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalizeaux-nil-comp--3aa046d07a88ff6f1fc5da39.md) | 177 | `result-track:3aa046d07a88ff6f1fc5da39a6858f8d09d68ee3c0100b473010b183a4c235ee` |
| 12 | `def` | [normalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalize--9e856e8e06626f464dae950b.md) | 185 | `declaration-track:9e856e8e06626f464dae950b18988fdbc3c3bec6cdd300f21885c1f028ee7bd5` |
| 13 | `def` | [normalizeUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalizeunitiso--15fdfafa516470307ab9cc7f.md) | 194 | `declaration-track:15fdfafa516470307ab9cc7f24c046f331b3cf24401a53357daf796e6e55d67a` |
| 14 | `def` | [normalizeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/normalizeequiv--f0ea3711bd5af8e614b4a037.md) | 204 | `declaration-track:f0ea3711bd5af8e614b4a037c7d13069db99e8275d83e246517a522174448b54` |
| 15 | `instance` | [locally_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/locally-thin--775f1a111e7804ab44817c56.md) | 217 | `declaration-track:775f1a111e7804ab44817c56ecc9b183fa4e12169b5b0662a2a2789d52391ed1` |
| 16 | `def` | [inclusionMapCompAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/inclusionmapcompaux--f91d96bae7bef28ac5c0a4f6.md) | 222 | `declaration-track:f91d96bae7bef28ac5c0a4f6e60f35a6ca2b81cc6a5dfdf19b1e96f4c1440d13` |
| 17 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant4b18bc5f648d95296b6d62ea50011b9af67eaade1fdcf50f58b09624ae5c4444.lean/declarations/inclusion--8c9568c4c97a06fc68d4f35a.md) | 231 | `declaration-track:8c9568c4c97a06fc68d4f35a0bc242cf7adcf648c181b89270553f8fbe6dd6c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
