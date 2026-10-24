# Verification target: GRWTSK.Algebra.UniversalAlgebra.Adjunctions.Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22d3fafc91a5d3b47d6e3b4f2d6bd0d05d5d0ac3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22d3fafc91a5d3b47d6e3b4f2d6bd0d05d5d0ac3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Semigrp.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.WithOne.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMulWithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoinOne](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/adjoinone--791cedbc06ca9c711a3b598f.md) | 35 | `declaration-track:791cedbc06ca9c711a3b598f985129c4bdb63cfc0db2e34a60ddb6e8ebc4d01a` |
| 2 | `instance` | [hasForgetToSemigroup](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/hasforgettosemigroup--baf65e41612da0e96a400a1a.md) | 42 | `declaration-track:baf65e41612da0e96a400a1ab36aa2efcb7680f19625099d88aa98fc7588641a` |
| 3 | `def` | [adjoinOneAdj](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/adjoinoneadj--c436c9426ad7ed7cb311f07d.md) | 49 | `declaration-track:c436c9426ad7ed7cb311f07d1914bc35152c8a6ee589b3a207df9a22b137be9f` |
| 4 | `def` | [free](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/free--4435f0c537baa6f65b4b2e12.md) | 60 | `declaration-track:4435f0c537baa6f65b4b2e124dc2c3a67fe5e0c8fac151f4a62327e10d61616d` |
| 5 | `def` | [adj](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/adj--f8acc42beaea093b8012b88f.md) | 68 | `declaration-track:f8acc42beaea093b8012b88f9a08ba064bfaffc7f883386a80c41a634619477c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/instance--d2e61ffc1dfbc74fc68af87a.md) | 74 | `declaration-track:d2e61ffc1dfbc74fc68af87a5e89bd80e4bb4176d5a7359d337c7cf7d3a8a4af` |
| 7 | `def` | [free](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/free--069fe6370f0c4bb168cce323.md) | 85 | `declaration-track:069fe6370f0c4bb168cce3234561d326f1422ef8ca86993b07c592e179125d66` |
| 8 | `def` | [adj](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/adj--6a1764322648d5ce84986117.md) | 91 | `declaration-track:6a1764322648d5ce8498611765dc51b476ffcce39dbe1a58ede999a4f508e73d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/instance--1a9ce2a2ac2ba9dbe1e8ee1f.md) | 97 | `declaration-track:1a9ce2a2ac2ba9dbe1e8ee1f4303df897b06bb8a8bfb02876df1ed77f5723573` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/instance--4a7d5057fa4510df49994077.md) | 99 | `declaration-track:4a7d5057fa4510df49994077c6b03e0b63ce639d78dac3e1ae5828bf226443b8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant60edbb6c49c8c6e535fd85b173bae0436a979708aca1cc51274cd547fca902d7.lean/declarations/instance--8f6b11c301a0d5c8f752e105.md) | 105 | `declaration-track:8f6b11c301a0d5c8f752e1056c0ee1b7af972e35c3fe11960ae9722b6dc661c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
