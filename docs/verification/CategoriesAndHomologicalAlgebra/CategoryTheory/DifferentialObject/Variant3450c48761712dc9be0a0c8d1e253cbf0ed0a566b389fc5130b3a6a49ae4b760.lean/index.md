# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad03b939bf17ad9e13c20aa824b88e34f34d8e7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad03b939bf17ad9e13c20aa824b88e34f34d8e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DifferentialObject` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/objeqtohom--aa1f4592692f579be4a32247.md) | 51 | `declaration-track:aa1f4592692f579be4a32247e601da933082e48b5ba7268876fec3f21f85f453` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/objeqtohom-refl--0c79a9cc24927a47c7cd1e34.md) | 58 | `result-track:0c79a9cc24927a47c7cd1e34afbb58fe94a499e51b97206125530cd55ebbd691` |
| 3 | `theorem` | [objEqToHom_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/objeqtohom-d--d736c9218b94eef4bbecf532.md) | 64 | `result-track:d736c9218b94eef4bbecf532357915d8d1f996c93f78467f99ecfe4a970c1011` |
| 4 | `theorem` | [d_squared_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/d-squared-apply--86a625097996bc56932d1078.md) | 69 | `result-track:86a625097996bc56932d10782cff26078eeabaa7ab72eed08de536adbe241409` |
| 5 | `theorem` | [eqToHom_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/eqtohom-f--a1f46edc989e767c83e14d11.md) | 72 | `result-track:a1f46edc989e767c83e14d114dff18ea3eac585b070bc500e34d019cc44485db` |
| 6 | `theorem` | [d_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/d-eqtohom--b2f5780795db2503767bea0f.md) | 89 | `result-track:b2f5780795db2503767bea0f9b3bb5c02c9852171f1de2db417aea6838f00ce5` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/dgotohomologicalcomplex--fdaad1ecaba2660f9552c59a.md) | 97 | `declaration-track:fdaad1ecaba2660f9552c59acbf3dde0d897c3189ed4e1d09dbeeca7a4f70075` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/homologicalcomplextodgo--260a8b277f742fe167d07220.md) | 122 | `declaration-track:260a8b277f742fe167d072208c9dba262844be71dfb2a927ab16c674324d3a0f` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/dgoequivhomologicalcomplexunitiso--6aac80125ec9c68a439a1967.md) | 134 | `declaration-track:6aac80125ec9c68a439a1967a4bb72995870503c6ad2b3dfac17d5433108c923` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/dgoequivhomologicalcomplexcounitiso--fcadd0c4bdc5991d6125c5f1.md) | 145 | `declaration-track:fcadd0c4bdc5991d6125c5f1a999875f71ccbb598e0ce248b1394b6863256593` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760.lean/declarations/dgoequivhomologicalcomplex--fb71822f26ef5bc9748ece9b.md) | 157 | `declaration-track:fb71822f26ef5bc9748ece9b36f2c3f0a70e90bf5867a624e8b2c2b1c569954f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
