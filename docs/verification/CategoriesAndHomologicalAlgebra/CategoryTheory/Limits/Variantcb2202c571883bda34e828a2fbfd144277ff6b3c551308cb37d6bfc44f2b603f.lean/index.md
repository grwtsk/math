# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8bc061dba7adf3064b03f4af0c67bd029291e0c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8bc061dba7adf3064b03f4af0c67bd029291e0c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/semiringobj--1dbdcac32318702efbf4ee8c.md) | 32 | `declaration-track:1dbdcac32318702efbf4ee8c865431c86f2e9fa48c31b04daee0b054d3a9dd4a` |
| 2 | `instance` | [algebraObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/algebraobj--24cb8ad7a70cada0d56a249e.md) | 35 | `declaration-track:24cb8ad7a70cada0d56a249e54a071d6f3535e620297d3d5d57b9ead59a6848d` |
| 3 | `def` | [sectionsSubalgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/sectionssubalgebra--85efd74c8fe93494ec0702c7.md) | 41 | `declaration-track:85efd74c8fe93494ec0702c71a5964f6bf3f5c0d28d0cd54d96c28d5b23936a3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/instance--dc26062ea8276d2f20fc3c31.md) | 46 | `declaration-track:dc26062ea8276d2f20fc3c319bb02bdf8a9a794e87d29eeab3765fd134ca67a2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/instance--3fef229a57a8c2c937337a3f.md) | 49 | `declaration-track:3fef229a57a8c2c937337a3f40954f237f9cb32f1f3c2070778a9d719d7e20e0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/instance--d15d7c4597b00804e6f4f4dd.md) | 54 | `declaration-track:d15d7c4597b00804e6f4f4dddf2d469ae0e94bb21e981309f0e9a25606567f67` |
| 7 | `instance` | [limitSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/limitsemiring--dae6f3b42c1b7d839cebf100.md) | 57 | `declaration-track:dae6f3b42c1b7d839cebf1001a0c2eedd9cb9e56c42389046dcccd033352eea9` |
| 8 | `instance` | [limitAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/limitalgebra--da25864a3ab24a4a844093e9.md) | 61 | `declaration-track:da25864a3ab24a4a844093e9ebf776c72708465b42d738f114576fea836473bc` |
| 9 | `def` | [limitπAlgHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/limit-alghom--517105f99c29056f66526dc4.md) | 66 | `declaration-track:517105f99c29056f66526dc470d443b7c28767fe3db3890fb57d405977185006` |
| 10 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/limitcone--52538306d333841af53194ad.md) | 89 | `declaration-track:52538306d333841af53194adc97899a6054d25b6758c252c98a95b1cc46d8f56` |
| 11 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/limitconeislimit--1d16d2e9afbfd7860583876a.md) | 100 | `declaration-track:1d16d2e9afbfd7860583876a83972f74c871409aa5e2d72f2e630d7fb9ea4a07` |
| 12 | `lemma` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/haslimitsofsize--a237fe4a8c959b2bd6a4ac87.md) | 139 | `result-track:a237fe4a8c959b2bd6a4ac87dd979e11d8c9fc978bee7582bce4c33be33c2fcf` |
| 13 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/haslimits--3655ddff6b29d38c3a25af7d.md) | 145 | `declaration-track:3655ddff6b29d38c3a25af7d96d74e71769fe10a49ade6ba65b20d305be3ac6b` |
| 14 | `instance` | [forget₂Ring_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/forget-ring-preserveslimitsofsize--6691750ebc933f3372653e1f.md) | 150 | `declaration-track:6691750ebc933f3372653e1f8a87c72fea51a57ef5f06fae50ad67d45ea3618f` |
| 15 | `instance` | [forget₂Ring_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/forget-ring-preserveslimits--847604c31f1c92747baaf1a2.md) | 158 | `declaration-track:847604c31f1c92747baaf1a2e7dd404006220212b92bbaa24f70d525974495a0` |
| 16 | `instance` | [forget₂Module_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/forget-module-preserveslimitsofsize--d5af322e94793dc3261c6803.md) | 163 | `declaration-track:d5af322e94793dc3261c6803d4afb48e8e879cc88f3b6b56737a4552b8e9a4e8` |
| 17 | `instance` | [forget₂Module_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/forget-module-preserveslimits--cc52778ffa53cd0962ec7642.md) | 171 | `declaration-track:cc52778ffa53cd0962ec76428fd79d149157612500e3cd9640a3cdcae2529094` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/forget-preserveslimitsofsize--637d9cdfafa7db368d81edf6.md) | 177 | `declaration-track:637d9cdfafa7db368d81edf64561f7838ed10895e661c43c1db2e5621c9119a2` |
| 19 | `instance` | [forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantcb2202c571883bda34e828a2fbfd144277ff6b3c551308cb37d6bfc44f2b603f.lean/declarations/forget-preserveslimits--3364054fb954048e147ca36a.md) | 184 | `declaration-track:3364054fb954048e147ca36a5aad45049dfc47507749c649fa32a485a3adab2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
