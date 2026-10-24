# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundaryPresentation.Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6a94da41144215051002565c642bd23b7c79f4e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6a94da41144215051002565c642bd23b7c79f4e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/c2--f8b26c99a6cdee061f26fd10.md) | 22 | `declaration-track:f8b26c99a6cdee061f26fd1093b1bf88cfdad0a8b99e54111deae3638bd3d7e0` |
| 2 | `abbrev` | [C1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/c1--4a766b292a4e7abac92f68b3.md) | 25 | `declaration-track:4a766b292a4e7abac92f68b3f48025053b09588f01fdaee8c80f82458588561e` |
| 3 | `def` | [boundary2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/boundary2--82d61ededa809186d09c9dd0.md) | 28 | `declaration-track:82d61ededa809186d09c9dd06546c526954ca1a7042a39d7141a0a8498ab9036` |
| 4 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/relations--9906a4354c29648fec7cac4d.md) | 36 | `declaration-track:9906a4354c29648fec7cac4d6e97702f75eade14e405c2020dd669f725822144` |
| 5 | `abbrev` | [H1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/h1--d444f78d1dbb82c65ed09af0.md) | 41 | `declaration-track:d444f78d1dbb82c65ed09af0dd940e26d20aacc95ddb8f069f31736319112903` |
| 6 | `theorem` | [boundary2_class_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/boundary2-class-eq-zero--6205222693c5a8481a2c8a6d.md) | 44 | `result-track:6205222693c5a8481a2c8a6da20b1d93c665b50cc96339e8254a8fb5fdcd0551` |
| 7 | `def` | [outerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/outerchain--7a64fd847d82faa96f996ed1.md) | 52 | `declaration-track:7a64fd847d82faa96f996ed19dfa9e8cf60d1ba88e504ecee95a8ee3d95f6397` |
| 8 | `def` | [innerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/innerchain--9379fef77685d547393d6a41.md) | 57 | `declaration-track:9379fef77685d547393d6a413938a6bc1a4db5b1e3823469cf04fb2c22cc4d94` |
| 9 | `def` | [outerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/outerclass--d8132a8447b85cc0f262acc0.md) | 60 | `declaration-track:d8132a8447b85cc0f262acc0befa22c886e0eea2d6882b1601dbbef7f760df88` |
| 10 | `def` | [innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/innerclass--b8a356ef8a98e093e6c05690.md) | 63 | `declaration-track:b8a356ef8a98e093e6c0569079bbfd038f2a41d745612faad1abefb786f6e0e7` |
| 11 | `theorem` | [outerClass_eq_innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/outerclass-eq-innerclass--ce2134390fcd483ddac8e783.md) | 67 | `result-track:ce2134390fcd483ddac8e78391b289cc5b1e01d3011c30d110a80b743c4b810f` |
| 12 | `def` | [total](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/total--3a78c4864b778ea59701a318.md) | 74 | `declaration-track:3a78c4864b778ea59701a318c11aac106c97a7e01eec6af418c2e24cc8393f3c` |
| 13 | `theorem` | [relations_eq_total_ker](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/relations-eq-total-ker--e4c43813d01b297f498b05c8.md) | 83 | `result-track:e4c43813d01b297f498b05c8e0a788c48d11c835dea80150449e695631f2a161` |
| 14 | `theorem` | [total_surjective](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/total-surjective--6fc4181c4ce44a6111305b34.md) | 97 | `result-track:6fc4181c4ce44a6111305b34589f8a5527c6e1e2d5b549d73f60228a96c37d12` |
| 15 | `def` | [H1EquivInt](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/h1equivint--a2a1d20b21e5c2cf92a0752b.md) | 104 | `declaration-track:a2a1d20b21e5c2cf92a0752b9bc3a231867cd4a467e95ec5afcae4fb2d27abec` |
| 16 | `theorem` | [h1_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/declarations/h1-istorsionfree--654b69d7e34505f001c49f54.md) | 112 | `result-track:654b69d7e34505f001c49f54a0fd335d94f3bfad6253463f9ccc2196867baf22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
