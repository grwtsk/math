# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce1966b6be918794a0ac96cd6fd83536b05778ba",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce1966b6be918794a0ac96cd6fd83536b05778ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Yoneda` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Abelian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectiveSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/projectiveseparator--b5d1776954d4eee5ce98d494.md) | 31 | `declaration-track:b5d1776954d4eee5ce98d49473088675c01c12d739789f19710eccbab0f68032` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/instance--143d8ee3b0a8cc97fe30d3c2.md) | 34 | `declaration-track:143d8ee3b0a8cc97fe30d3c2499a664bc246fb1ff43ac85f6504d34eb7e5b53c` |
| 3 | `theorem` | [isSeparator_projectiveSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/isseparator-projectiveseparator--127946a13070ac1eb6854cdd.md) | 37 | `result-track:127946a13070ac1eb6854cdd67c02a8effb02a211138a5101e522edbdfff3ab5` |
| 4 | `def` | [generator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/generator--f2adf87cdca348aaf1c46135.md) | 40 | `declaration-track:f2adf87cdca348aaf1c46135689b9cfb58a7546470df4e19984b5937fd4b9893` |
| 5 | `theorem` | [exists_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/exists-epi--92b19ecfd0f8d665c3efd751.md) | 43 | `result-track:92b19ecfd0f8d665c3efd7518c054e76f64d9347f1f477b912a9b073d94fbc38` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/instance--d90a600fe47bfa658391a816.md) | 51 | `declaration-track:d90a600fe47bfa658391a8169e10234a43198a98de228a3e5a9ce3f9b774b2a0` |
| 7 | `theorem` | [isSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/isseparator--63327d320d119dd580650b93.md) | 55 | `result-track:63327d320d119dd580650b936f40f8623f4ec8f831dbb1d46e32cb8245d4e74a` |
| 8 | `def` | [EmbeddingRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/embeddingring--01367ae1ffb51db070ad39f4.md) | 63 | `declaration-track:01367ae1ffb51db070ad39f48ce589d1d0d3632b62908fd6de9e5a9bc9a15c61` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/instance--c16637fefe7215f75d76ffad.md) | 65 | `declaration-track:c16637fefe7215f75d76ffad774a5297ce8ce1dbfbea23a19d6c30cc44394507` |
| 10 | `def` | [embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/embedding--d8bbb6c4f2023cf458f2736d.md) | 70 | `declaration-track:d8bbb6c4f2023cf458f2736d17c8c5079fd506e7d943441441ab51ecc7692406` |
| 11 | `instance` | [faithful_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/faithful-embedding--8bc60100477a8002ca344655.md) | 73 | `declaration-track:8bc60100477a8002ca344655c29585d07a0d1b5767187e9b41bf2de1f1ed21a5` |
| 12 | `instance` | [full_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/full-embedding--72e51705f1f98a392831b631.md) | 76 | `declaration-track:72e51705f1f98a392831b631c20a627b9326b14898eab10cdee4a8c8531f7d98` |
| 13 | `instance` | [preservesFiniteLimits_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/preservesfinitelimits-embedding--65921ada50659991ca945180.md) | 79 | `declaration-track:65921ada50659991ca9451806703d0e378d2c791a1542bd0b017412525390ee1` |
| 14 | `instance` | [preservesFiniteColimits_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant173b14a90086f0b6dbd28e2b338d67145d32ac26a5c983f4a29351bfa3e1c08a.lean/declarations/preservesfinitecolimits-embedding--fdf20d8eb747af958218e0dd.md) | 84 | `declaration-track:fdf20d8eb747af958218e0dd11bc91e355c1bf44ac85472640db21f43ee6595c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
