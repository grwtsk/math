# Verification target: GRWTSK.Algebra.LinearAlgebra.Homology.Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffa93721e46653cc4baf005133a18094474d4754",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffa93721e46653cc4baf005133a18094474d4754`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Topology.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Abelian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.PreservesHomology` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/ker--017b8bfe5e9ddff308208153.md) | 34 | `declaration-track:017b8bfe5e9ddff308208153be182367992bb838767c64fa270ccf5e9076bd93` |
| 2 | `def` | [kerι](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/ker--5ed278a2d7fa421cee31ece2.md) | 37 | `declaration-track:5ed278a2d7fa421cee31ece2c681d853d23d778eedeb800182ff28027ecf2a13` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/instance--39f2d1785d8a274ffb04e35d.md) | 39 | `declaration-track:39f2d1785d8a274ffb04e35da785410ed4efd3433b7a1cc7b4b011234e75c086` |
| 4 | `lemma` | [kerι_comp](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/ker-comp--89bf1a327eb0e31256e8dbbc.md) | 41 | `result-track:89bf1a327eb0e31256e8dbbcd78f74900c5fa2a0c4ab78b43c72d31c125fbdc6` |
| 5 | `lemma` | [kerι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/ker-apply--05cd0586a8e569fb2355a4da.md) | 43 | `result-track:05cd0586a8e569fb2355a4da90ba38e65120bb3f381a62d248471499584a7b83` |
| 6 | `def` | [isLimitKer](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/islimitker--3230905e2cdaa0626dfa6071.md) | 46 | `declaration-track:3230905e2cdaa0626dfa6071860aca8c535d1eabcc0557b3a5b4c340634d282e` |
| 7 | `abbrev` | [coker](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/coker--0d7b0fcadb35712ce60b792c.md) | 59 | `declaration-track:0d7b0fcadb35712ce60b792cf27441f074066e68cd7ca16e2df998c07a5be637` |
| 8 | `def` | [cokerπ](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/coker--84e87294d54e2b0bc4827365.md) | 62 | `declaration-track:84e87294d54e2b0bc482736506d49e64647979f92251ff9bcec1e5aa388b4d6f` |
| 9 | `lemma` | [hom_cokerπ](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/hom-coker--08e5d707025c798c954e7510.md) | 65 | `result-track:08e5d707025c798c954e7510bf9e1cbbfed8e079239a1ac388e907d46d907a9a` |
| 10 | `lemma` | [cokerπ_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/coker-surjective--b2a249ef970780b59d146908.md) | 67 | `result-track:b2a249ef970780b59d1469089210fa920e4fc91fbeb370b4abb6fbada2a7b953` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/instance--905db0d8f26c524142f5a1e2.md) | 69 | `declaration-track:905db0d8f26c524142f5a1e23ad92f795813fa0dd4d9801dafd4e692b09e7acc` |
| 12 | `lemma` | [comp_cokerπ](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/comp-coker--0a3e31da526988e92bfd8394.md) | 71 | `result-track:0a3e31da526988e92bfd8394d898b03708acab4eb66ffaf231add855cedbfd67` |
| 13 | `def` | [isColimitCoker](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/iscolimitcoker--153e09ee738fbedb2b8bd019.md) | 77 | `declaration-track:153e09ee738fbedb2b8bd019f0fdf5636011cbf6fb2ff6bf4faee05a010b1132` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variantc4feb3ad5d9d1ce4a1a630987a881b494dacb6cf46fc8dcd3ed9c0c16cd596ea.lean/declarations/instance--970bf20d5810fc91183a3d4b.md) | 89 | `declaration-track:970bf20d5810fc91183a3d4b1b487461bc9d9b1b31516ad09f388fe16b001415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
