# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a05743855f3c7a694aec80ca11399dfa6fa91f6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a05743855f3c7a694aec80ca11399dfa6fa91f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Concrete` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [locallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/locallyinjective--8ec0844e84e07104fe556b2f.md) | 37 | `declaration-track:8ec0844e84e07104fe556b2fa55cc13ae267f29c60448d272a2fc320a6fbc12d` |
| 2 | `def` | [locallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/locallysurjective--3bf0f2773a21db9e5f0daa1b.md) | 41 | `declaration-track:3bf0f2773a21db9e5f0daa1b5547ac25750a0b38215ba80810b9e1055ee0b033` |
| 3 | `def` | [functorialLocallySurjectiveInjectiveFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/functoriallocallysurjectiveinjectivefactorization--852e1e20c028dacdf974a65d.md) | 52 | `declaration-track:852e1e20c028dacdf974a65dcac383811346e11b0b805be5ad79c86f422cc89a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/instance--424b0ee780cafe9c7e0d8108.md) | 87 | `declaration-track:424b0ee780cafe9c7e0d8108de0e2fabffbceba49686a66a9abb400c42709ac0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/instance--3bc164729dc1983f18e2bb7b.md) | 91 | `declaration-track:3bc164729dc1983f18e2bb7ba38941dec4085731db8f266e375824a774c047e1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/instance--9d5ff05b9d314857cd581608.md) | 97 | `declaration-track:9d5ff05b9d314857cd58160881581ce9f2766a74dad8180e8ff140ba401eddfb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/instance--656daea8a67923884dc91bc6.md) | 100 | `declaration-track:656daea8a67923884dc91bc63f332aabbf390b3f48f12e26446f90cdf1e56631` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/instance--4a38c0167d99606f4deeae3b.md) | 105 | `declaration-track:4a38c0167d99606f4deeae3b33876ee83ff18c07f194320456866be376fb1374` |
| 9 | `lemma` | [isLocallySurjective_iff_epi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant008dd432214cf882742f873bc5cf1d47136b8dc0321c925e5add6787d3176b3c.lean/declarations/islocallysurjective-iff-epi--316a4bd824c2e6da1562f704.md) | 118 | `result-track:316a4bd824c2e6da1562f704d5c309eb957659ddd840ab91b16c18aaefb2850c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
