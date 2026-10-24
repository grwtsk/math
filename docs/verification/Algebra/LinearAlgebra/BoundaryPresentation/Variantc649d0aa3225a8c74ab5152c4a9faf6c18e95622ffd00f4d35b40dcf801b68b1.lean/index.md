# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundaryPresentation.Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b5ac5005f9f31345a1d7a3dda54a7b59f68bd60",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b5ac5005f9f31345a1d7a3dda54a7b59f68bd60`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/c2--c22714b831484ec9fb25ca73.md) | 30 | `declaration-track:c22714b831484ec9fb25ca73e5c2ecb1dc533ef1ca7a442ae15a02311989c442` |
| 2 | `abbrev` | [C1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/c1--8a95adb370051151a9628960.md) | 33 | `declaration-track:8a95adb370051151a962896017d72be8a9fe3bbf8aa6d341666870a04892501f` |
| 3 | `def` | [boundary2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/boundary2--79c4623242631ccaeb564f29.md) | 36 | `declaration-track:79c4623242631ccaeb564f29edbab6202b1c1fb338e42f03b934e3749fd65c66` |
| 4 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/relations--39053838069aff424a07f47d.md) | 44 | `declaration-track:39053838069aff424a07f47d620528f80168d775c3fd5265546b0667e52654d1` |
| 5 | `abbrev` | [H1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/h1--33c5a24cee2afa113c7a98df.md) | 49 | `declaration-track:33c5a24cee2afa113c7a98df8a7a7f2cea735dc07a3292f8095239998a4616fc` |
| 6 | `theorem` | [boundary2_class_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/boundary2-class-eq-zero--8351368f96abb8e104abca2f.md) | 52 | `result-track:8351368f96abb8e104abca2f47d354c61dc7c0e997a9fe2445768bb0afb3bd84` |
| 7 | `def` | [outerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/outerchain--c0e67f822ab8e92c06c2299b.md) | 60 | `declaration-track:c0e67f822ab8e92c06c2299b0c846430f084f2c84fffbacf33d240c2218a904e` |
| 8 | `def` | [innerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/innerchain--5b2dc03f808a314c38517ee6.md) | 65 | `declaration-track:5b2dc03f808a314c38517ee6319173a181be1ca4e6967c9f153a339b091f0d39` |
| 9 | `def` | [outerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/outerclass--5ab7d940ad99444b2b83357d.md) | 68 | `declaration-track:5ab7d940ad99444b2b83357d4878edc32735bafe0ac14d25ece4e4edd8b9952f` |
| 10 | `def` | [innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/innerclass--9e9f659021356f867056c523.md) | 71 | `declaration-track:9e9f659021356f867056c523fb350e03e01f398341e61b8564462860bfb71e60` |
| 11 | `theorem` | [outerClass_eq_innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/outerclass-eq-innerclass--150fa6992e46bc2693a41eb7.md) | 75 | `result-track:150fa6992e46bc2693a41eb7d97eb8e1d0b6b67606ebcdc0ceaa0c9694f3b219` |
| 12 | `def` | [total](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/total--b407949e8fc7fc25ac909551.md) | 82 | `declaration-track:b407949e8fc7fc25ac909551d5fc6f7b96e82fc6ff15b14d16649b77dab12018` |
| 13 | `theorem` | [relations_eq_total_ker](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/relations-eq-total-ker--6e99e2e3b3d23dacf0848006.md) | 91 | `result-track:6e99e2e3b3d23dacf0848006d38fbfba74a7fcc9242fcdf08842e640cf5c0193` |
| 14 | `theorem` | [total_surjective](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/total-surjective--0e8a739026cf177d16f4b177.md) | 105 | `result-track:0e8a739026cf177d16f4b1774021d2472d4fabc8c973cee283d8c86c8d9b491f` |
| 15 | `def` | [H1EquivInt](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/h1equivint--de97feeba4f8978ecd2753e2.md) | 112 | `declaration-track:de97feeba4f8978ecd2753e2c1724d84b609d582874c4f86dac739a6f8bbe475` |
| 16 | `theorem` | [h1_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantc649d0aa3225a8c74ab5152c4a9faf6c18e95622ffd00f4d35b40dcf801b68b1.lean/declarations/h1-istorsionfree--f90f3dc13be072d377eedf20.md) | 120 | `result-track:f90f3dc13be072d377eedf2060b78ffb204b5d59e26bc9f57589de914a3bbcfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
