# Verification target: GRWTSK.Algebra.LinearAlgebra.Exactness.Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce0f98bd21ab78872379a3e055ffe41c6ed69368",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce0f98bd21ab78872379a3e055ffe41c6ed69368`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Submodule` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.AtPrime` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Away` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/injective-of-islocalized-maximal--ce0cee025d6693cd24dc12e7.md) | 55 | `result-track:ce0cee025d6693cd24dc12e7de6b0edb11dfe71c1d94f5872a6c1e27eac57a9f` |
| 2 | `theorem` | [surjective_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/surjective-of-islocalized-maximal--7fc9767465da188b489eec6a.md) | 60 | `result-track:7fc9767465da188b489eec6a3b3b42584ed21b63b9fb9efaa8d4929e7d2e656c` |
| 3 | `theorem` | [bijective_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/bijective-of-islocalized-maximal--86c8889951cb501489487a47.md) | 67 | `result-track:86c8889951cb501489487a475481aafbe9e020524d93431ec2e131908625a5ef` |
| 4 | `theorem` | [exact_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/exact-of-islocalized-maximal--ad7fedf15d16627fa243846b.md) | 73 | `result-track:ad7fedf15d16627fa243846bc2dc846f55753598d14ec589e3f95942522beab0` |
| 5 | `theorem` | [injective_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/injective-of-localized-maximal--b8b52e6f762cd0317cb54396.md) | 93 | `result-track:b8b52e6f762cd0317cb54396ff098a7c4af46b21edba5bae1c721eeef4bc9a0d` |
| 6 | `theorem` | [surjective_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/surjective-of-localized-maximal--d6a7034b542ef974557d6022.md) | 98 | `result-track:d6a7034b542ef974557d602213865d18dd6e4d47ef3e36568d508651b6f0e8be` |
| 7 | `theorem` | [bijective_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/bijective-of-localized-maximal--46c6caa213ae599246df3389.md) | 103 | `result-track:46c6caa213ae599246df338974798f3f3f4098959791ca0dd647105c11fb99be` |
| 8 | `theorem` | [exact_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/exact-of-localized-maximal--0cab410e7b5f95730de5cd10.md) | 109 | `result-track:0cab410e7b5f95730de5cd10f2fb40aa0952ffaaf3d1d323c9f25ae322413cf7` |
| 9 | `theorem` | [injective_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/injective-of-islocalized-span--fb0208d6ff1b543b95385c4a.md) | 143 | `result-track:fb0208d6ff1b543b95385c4a4e62dbc5ce3abfa1165d47aab77202701423cfe3` |
| 10 | `theorem` | [surjective_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/surjective-of-islocalized-span--cc3e8a0e49ddaf59e32eaf78.md) | 148 | `result-track:cc3e8a0e49ddaf59e32eaf78a21f75869cf178cf214621bf5881aec6dcd534c2` |
| 11 | `theorem` | [bijective_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/bijective-of-islocalized-span--ad5720688f2751ed0cb79c99.md) | 154 | `result-track:ad5720688f2751ed0cb79c990d49f4ce976e15b1de8929402c720674eb245f55` |
| 12 | `lemma` | [exact_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/exact-of-islocalized-span--66acc2bbdd852143857c953e.md) | 160 | `result-track:66acc2bbdd852143857c953e33a315ac66bf59d27a1d42dd4382af40ad4893ef` |
| 13 | `theorem` | [injective_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/injective-of-localized-span--54a439de7dc6e000d8f3c8d8.md) | 182 | `result-track:54a439de7dc6e000d8f3c8d8eb8cb744cf3cfe59bd71705495a9b5b44796ea3a` |
| 14 | `theorem` | [surjective_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/surjective-of-localized-span--6eeff07ea4e511d21d71b68f.md) | 187 | `result-track:6eeff07ea4e511d21d71b68fba44eccd069ee85387d042cc46cc3c710799dca9` |
| 15 | `theorem` | [bijective_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/bijective-of-localized-span--3370840cd67d954f44210f96.md) | 192 | `result-track:3370840cd67d954f44210f96f5e79a785dffe3afcd3883a7c8828e898c96ca99` |
| 16 | `lemma` | [exact_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/declarations/exact-of-localized-span--30cb4c22d006427f2aae84fb.md) | 198 | `result-track:30cb4c22d006427f2aae84fbc85dc9d05dcccd6ea93093ff0afad6a32e7b4114` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
